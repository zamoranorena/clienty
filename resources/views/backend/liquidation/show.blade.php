@extends('backend.layouts.app')
@section ('title', 'Ver liquidación')
@section('page-header')
    <h1>
        Gestión de liquidación
        <small>Ver liquidación</small>
    </h1>
@endsection
@section('after-styles')
    {{ Html::style("css/bootstrap.css") }}
@endsection
@section('content')
	<div class="panel panel-info">
	  	<div class="box box-success">
	        <div class="box-header with-border">
	            <h3 class="box-title">Ver Liquidación</h3>
	            <div class="box-tools pull-right">
	                @include('backend.access.includes.partials.liquidation-header-buttons')
	            </div>
	        </div>
	        <div class="box-body">
		        <!--<div class="panel panel-default">
	    			<div class="panel-heading">Información de la liquidación</div>
	    			<div class="panel-body">
	    				<div class="col-md-4">
	    					<p>Order#:{{$liquidation->identifier}}</p>
	    				</div>
	    				<div class="col-md-4">
	    					<p>Cliente: {{$liquidation->sale->customer['name']}} {{$liquidation->sale->customer['last_name']}}</p>
	    				</div>
	    				<div class="col-md-4">
	    					<p>Vendedor: {{$namecounter}}</p>
	    				</div>
	    			</div>
	  			</div>-->

	  			<div class="row">
  <div class="col-xs-3 col-md-2"></div>
        <div class="col-xs-3 col-md-8">         
          <table class=" table table-bordered table-responsive">
            <tbody><tr>
              <th class="text-center"> <label class="control-label">Cliente</label></th>
              <!--<th class="text-center"> <label class=" control-label">Motivo de visita</label></th>-->
              <th class="text-center"> <label class=" control-label">Nro de venta</label></th>
              <th class="text-center"> <label class=" control-label">Nro liquidación</label></th>
              <th class="text-center"> <label class=" control-label">Vendedor</label></th>
            </tr>
          </tbody><tbody>
            <tr>
              <td> <input class="form-control" readonly="" name="name" type="text" value="{{$liquidation->sale->customer['name']}} {{$liquidation->sale->customer['last_name']}}"></td>
              <td><input class="form-control" type="text" value="{{$identifier_sale}}" readonly=""></td>
              <td><input class="form-control" type="text" value="{{$liquidation->identifier}}" readonly=""></td>
              <td><input class="form-control" type="text" value="{{$namecounter}}" readonly=""></td>
            </tr>
          </tbody>
          </table>
        <br>
        <br>

          </div>

  <div class="col-xs-3 col-md-2"></div>
</div>
	        	<table class="table table-striped table_liquidation text-center">
	        		<thead>
			            <tr>
			              	<th>Nro</th>
			              	<th>Servicio</th>
			              	<th>Proveedor</th>
			              	<th>Cantidad</th>
			              	<th>Costo. Unit</th>
			              	<th>Costo. Total</th>
			              	<th>Precio Venta.</th>
			              	<th>Fecha. Pago</th>
			            </tr>
		          	</thead>
	                <tbody>
	                	@php
              			$i=1;
            			@endphp
              			@foreach($servicios_liquidacion as $servicio_liquidacion)
              				@if($servicio_liquidacion->parent_id == null)
              				<tr class="filapadre">
              					<td>
	                				{{$i}}
	                			</td>
	                			<td>
	                				{{$servicio_liquidacion->nameservice}}
	                			</td>
	                			<td>
	                				{{$servicio_liquidacion->nameprovider}}
	                			</td>
	                			<td>
	                				{{$servicio_liquidacion->cantidad}}
	                				<input type="hidden" class="cantidad" value="{{$servicio_liquidacion->cantidad}}">
	                			</td>
	                			<td>
	                				$ {{number_format($servicio_liquidacion->costo,2)}}
	                				<input type="hidden" class="costo_total" value="{{$servicio_liquidacion->costo * $servicio_liquidacion->cantidad}}">
	                			</td>
	                			<td>
	                				$ {{number_format($servicio_liquidacion->costo * $servicio_liquidacion->cantidad,2) }}
	                			</td>
	                			<td>
	                				$ {{number_format($servicio_liquidacion->price * $servicio_liquidacion->cantidad,2)}}
	                				<input type="hidden" class="precio_venta_total" value="{{$servicio_liquidacion->price * $servicio_liquidacion->cantidad}}">
	                			</td>
	                			<td>
	                				{{ Carbon\Carbon::parse($servicio_liquidacion->fecha_pago)->format('d-m-Y') }}
	                			</td>
              				</tr>
              				<!--<tr>
		                      <th class="text-center"> Detalle Servicio </th><td colspan="4"><textarea class="form-control" name="services_liquidacion[{{$i}}][coments]" readonly>{{$servicio_liquidacion->coments}}</textarea></td>
		                    </tr>-->
		                   	@endif 
		                   	@foreach($servicios_liquidacion as $subfila)
                      @if($servicio_liquidacion->id_liquidacion == $subfila->parent_id)
                          <tr>
                          <td></td>
                          <td>{{$subfila->nameservice}}</td>
                          <td>{{$subfila->nameprovider}}</td>
                          <td>{{$subfila->cantidad}}
                              <input type="hidden" class="form-control cantidad" value="{{$subfila->cantidad}}" name="services_liquidacion[{{$i}}][cantidad]">
                          </td>
                          <td style="width: 20%">
                              $ {{number_format($subfila->costo,2)}}
                              <input type="hidden" name="services_liquidacion[{{$i}}][parent_id]" value="{{$i}}">
                          </td> 
                          <td><!--$ {{number_format($subfila->precio*$subfila->cantidad)}}-->
                              
                          </td>
                          <td>
                          	
                          </td>
                          <td>
                          		{{ Carbon\Carbon::parse($subfila->fecha_pago)->format('d-m-Y') }}
                          </td>
                          <td>
                              
                          </td>
                        </tr>
                      @endif
                    @endforeach
              			@php
                  		$i++;
                		@endphp
	                	@endforeach
	              	</tbody>
              	</table>
              	</br>
<br>
	            <div class="row">
	          <!--<div class="col-xs-6 pull-right">
	            <div class="table-responsive">
	              <table class="table">
	                <tbody>
	                    <tr>
	                      <th>P. VENTA TOTAL</th>
	                      <td>$ {{number_format($liquidation->p_venta_total,2)}}</td>
	                    </tr>
	                    <tr>
	                      <th style="width:50%">COSTO TOTAL</th>
	                      <td>$ {{number_format($liquidation->costo_total,2)}}</td>
	                    </tr>
	                    <tr>
	                      <th>UTILIDAD</th>
	                      <td>$ {{number_format($liquidation->total_utility,2)}}</td>
	                  
	                    </tr>
	                </tbody>
	              </table>
	            </div>
	          </div>-->


		          	<div class="col-xs-3 col-md-2"></div>
		          	<div class="col-xs-3 col-md-8">         
		                <table class=" table table-bordered table-responsive text-center">
		                    <tbody><tr>
		                      <th class="text-center"> <label class="control-label">Total de venta</label></th>
		                      <th class="text-center"> <label class=" control-label">Costo total de venta</label></th>
		                      <th class="text-center"> <label class=" control-label">Total de utilidad</label></th>
		                      <th class="text-center"> <label class=" control-label">Porcentaje de utilidad</label></th>
		                      <th class="text-center"> <label class=" control-label">Comisión Bancaria</label></th>
		                      <th class="text-center"> <label class=" control-label">Total Abono</label></th>
		                      <input type="hidden" name="total_utility" class="utility_value" value="">
		                      <input type="hidden" name="p_venta_total" class="total_value" value="">
		                      <input type="hidden" name="cos_total" class="cost_value" value="">
		                    </tr>
		                    </tbody><tbody>
		                    <tr>
		                      <td class="vent_total">$ {{number_format($liquidation->p_venta_total,2)}}</td>
		                      <td class="cost_total">$ {{number_format($liquidation->costo_total,2)}}</td>
		                      <td class="tot_utilidad">$ {{number_format($liquidation->total_utility,2)}}</td>
		                      <td id="porcentaje"></td>
		                      <td class="vent_total">$ {{number_format($comision_bancaria->porcentaje,2)}}</td>
		                      <td class="vent_total">$ {{number_format($comision_bancaria->amount_commission,2)}}</td>
		                    </tr>
		                  </tbody>
		                  </table>
		          	</div>
		          	<div class="col-xs-3 col-md-2"></div>

	          

	        </div>
	        <br>
	        <br>
	        <div class="flex-container">
		                @php
		                 if($files != null){
		                @endphp
		                	@foreach($files as $file)

						  			<a href="{{$file->route}}" class="flex-item" download="{{$file->name}}">
						  				<i class="fa fa-file-text-o fa-5x" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="{{$file->name}}"></i>
						  			</a>
					  		@endforeach
		                @php
		                } else {
		                @endphp
						


						@php
						}
						@endphp
					  	
		            </div>
	        </div><!-- /.box-body -->
    	</div>
	</div>
@endsection

@section('after-scripts')
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script type="text/javascript">

		var venta_total= "{{$liquidation->p_venta_total,2}}";
		var costo_total = "{{$liquidation->costo_total,2}}";
		var utilidad_total = "{{$liquidation->total_utility,2}}";

		//var costo_total= "{{$liquidation->costo,2}}";
		var precio_venta_total=0;//variable global
		//var costo_total=0;//variable global
		$(document).ready(function(){
			precioVentaTotal();
			//costoTotal();
			utilidad();
			porcentaje();
		});
		
		function precioVentaTotal(){
            $(".table_liquidation tbody tr.filapadre").each(function(){
                precio_venta_total = precio_venta_total + parseFloat($(this).find(".precio_venta_total").val());
                $("#total_value").text("$ "+precio_venta_total.toFixed(2));
            });
		}

		/*function costoTotal(){
            $(".table_liquidation tbody tr.filapadre").each(function(){
                costo_total = costo_total + parseFloat($(this).find(".costo_total").val());
                $("#cost_value").text("$ "+costo_total.toFixed(2));
            });
		}*/

		function utilidad(){
				var utilidad = venta_total - costo_total;
				$("#utility_value").text("$ " +utilidad.toFixed(2));
		}
		function porcentaje(){
				var utilidad= venta_total - costo_total;
				console.log(precio_venta_total);
				var porcentaje= utilidad / precio_venta_total * 100;

				var porcentaje = porcentaje.toFixed(2);

				$("#porcentaje").text(porcentaje+ " %");
		}
	</script>
@endsection