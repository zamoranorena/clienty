@extends('backend.layouts.app')
@section ('title', 'Crear Venta')
@section('after-styles')
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet"/>
@endsection
@section('page-header')
    <h1>
        Gestión de Ventas
        <small>Crear Venta</small>
    </h1>
@endsection
@section('content')
    <div class="box box-success">
	    <div class="box-header width-border">     
	      	<h3 class="box-title">Crear Venta</h3>
	        	<div class="box-tools pull-right">
	          		@include('backend.access.includes.partials.quote-header-buttons')
	        	</div>
	    </div>
        <div class="box-header width-border">
        	<!--<h3 class="pull-right" style="color: #8C9595">{{$quote->identifier}}</h3>-->
        </div>
        <div class="box-body">
        <?php $hola='hola'?>
		    {{ Form::model($quote,['route' => ['admin.operation.sale.store'], 'class' => 'form-horizontal formulariocrear', 'role' => 'form', 'method' => 'POST'])}}
		    	<input type="hidden" name="quote_id" value="{{$quote->id}}">
		        <input type="hidden" name="user_id" class="form-control" value="{{access()->user()->id }}">
		        <input type="hidden" name="customer_id" value="{{$quote->customer['id']}}" class="form-control" ">
		        	{{ Form::hidden('created_user_id', access()->user()->id) }}

				<table class=" table table-bordered">
				   <tr>
				     <th class="text-center"> <label class="control-label">Nombres y Apellidos</label></th>
				     <th class="text-center"> <label class=" control-label">Cotización de origen</label></th>
				     <th class="text-center"> <label class=" control-label">Fecha de Cotización</label></th>
				     <th class="text-center"> <label class=" control-label">Fecha de Validez de Cotización</label></th>
				   </tr>
				  <tbody>
				     <tr>
				       <td>{!!Form::text('name',$quote->customer['name']." ".$quote->customer['last_name'],['class'=>'form-control', 'readonly'] )!!}
				       </td>
				       <td> {!!Form::text('identifier',$quote->identifier,['class'=>'form-control', 'readonly'])!!} 
				       </td>
				       <td> {!!Form::text('created_at',$quote->created_at->format('d-m-Y'),['class'=>'form-control', 'readonly'])!!} 
				       </td>
				       <td> {!!Form::text('created_at',Carbon\Carbon::parse($quote->date_vality)->format('d-m-Y'),['class'=>'form-control', 'readonly'])!!} 


				       </td>
				     </tr>
				   </tbody>
				</table>

				    <!--<div class="form-group">
				        <label class="col-lg-2 control-label">Nombre</label>
				        <div class="col-lg-5">
				            {!!Form::text('name',$quote->customer['name'],['class'=>'form-control', 'disabled'] )!!} 
				        </div>
				    </div>
				    <div class="form-group">
					    <label class="col-lg-2 control-label">Apellidos</label>
					    <div class="col-lg-5">
					        {!!Form::text('last_name',$quote->customer['last_name'],['class'=>'form-control', 'disabled'])!!} 
					    </div>
				    </div>
				    <div class="form-group">
					    <label class="col-lg-2 control-label">Motivo</label>
					    <div class="col-lg-4">
					        {!!Form::text('reason',$quote->visit['reason'],['class'=>'form-control', 'disabled'])!!} 
					    </div>
				    </div>-->
                    <table style="width: 100%" class="services_table table">
			            <thead>
			                <tr>
			                	<br>
			                    <h4 class="text-center">Listado de servicios<h3>
			                    <br>
			                </tr>
			                <tr style="width: 100%">
			                	<th>Nro</th>
			                    <th>Servicio</th>
			                    <th>Proveedor</th>
			               		<th>P. Venta</th>
			               		<th>Cantidad</th>
			               		<th>P. Total</th>
			             	</tr>
			            </thead>
				        <tbody>
				        	@php
				            	$i=0;
				        		foreach($quote_service as $services){
				        		$i++;
				        	@endphp
	                        		<tr>
	                        			<td>
	                        				{{$i}}
	                        			</td>
	                             		<td>
 											<input type="hidden" class="form-control" value="{{$services->quote_id}}" name="servicotizado[{{$i}}][quoteid]">
	                             	 		<input type="hidden" class="form-control" value="{{$services->id}}" name="servicotizado[{{$i}}][service_id]">

	                             	 		<input type="hidden" class="form-control" value="{{$services->name}}" name="servicotizado[{{$i}}][service_name]">
	                             	 		<input type="hidden" class="form-control" value="{{$services->coments_quote}}" name="servicotizado[{{$i}}][coments_quote]">
	                             	 		{{$services->name}}
	                             		</td>
	                             		<td>
	                             			{{$services->provider_name}}
	                             		</td>
	                             		<td>
	                             	 		<input type="hidden" class="form-control" value="{{$services->price}}" id="precio{{$i}}" onkeyup="multiplicar({{$i}})" name="servicotizado[{{$i}}][service_price]">
	                             	 		$ {{number_format($services->price,2)}}

	                             		</td>
	                             		<td>
	                             	 		<input type="hidden" class="form-control"  value="{{$services->cantidad}}" id="cantidad{{$i}}"onkeyup="multiplicar({{$i}})" name="servicotizado[{{$i}}][service_cantidad]">
	                             	 		{{$services->cantidad}}
	                             		</td>
	                             		<td>
	                             	 		<input type="hidden" class="form-control resultado" id="resultado{{$i}}" value="{{$services->price*$services->cantidad}}" onkeyup="multiplicar({{$i}})" disabled  style="background: #C5FBFF; color: #000">
	                             	 		$ {{number_format($services->price*$services->cantidad,2)}}
	                             	 		<input type="hidden" name="servicotizado[{{$i}}][total_price]" value="{{$services->price*$services->cantidad}}">
	                             		</td>
	                        		</tr>
	                        		<tr>
              							<th class="text-center"> Detalle Servicio </th><td colspan="4"><textarea class="form-control" name="servicotizado[{{$i}}][coments_service]" readonly>{{$services->coments_quote}}</textarea></td>
              						</tr>
                        	@php
                        		} 
                        	@endphp
                       
                        			<tr>
								        <td></td>
								        <td></td>
								        <td></td>
								        <td><th>TOTAL: </th></td>
								        <td>$ {{number_format($quote->total,2)}}
								        <input type="hidden" name="total" value="{{$quote->total}}" class="form-control">
								        </td>
								        <td></td>
							    	</tr>
				        </tbody><!--SERVICIOS-->
			        </table>

					<table class=" table table-bordered">
						<tr>
						  <th class="text-center"> <label class="control-label">Comentarios/Observaciones/Recomendaciones</label></th>
						</tr>
						<tbody>
						  	<tr>
						     <td><textarea class="form-control" name="coments_general" readonly>{{$services->coments_general}}</textarea></td>
						   	</tr>
						</tbody>
					</table>

			      	<!--<div class="form-group">
			      	<label class="col-lg-2 control-label"></label>
			      	<label class="col-lg-2 control-label"></label>
			      	<label class="col-lg-2 control-label"></label>
			        	<label class="col-lg-2 control-label">Importe Total:</label>
			        	<label class="col-lg-2 control-label" id="totales" class="form-control"></label>
			        	<input type="hidden" name="total" id="total" class="form-control">
                    </div>-->
				    <div class="box box-info">
			            <div class="box-body">
			                <div class="pull-left">	
			                    <a href="">
			                    {{ link_to_route('admin.operation.sale.index', trans('Cancelar'), [], ['class' => 'btn btn-danger btn']) }}
			                    </a>
			                </div>
			                <div class="pull-right">
			                    {!!Form::submit('Generar venta',['class'=>'btn btn-success btn'])!!}
			                </div>
			                <div class="clearfix"></div>
			            </div>
        			</div>
		   	{!!Form::close()!!}
        </div>
    </div>
@endsection
@section('after-scripts')
	<script type="text/javascript">
	  	$(document).ready(function(){
	  		$(".js-example-basic-single").select2();
		});
	</script>
	<script type="text/javascript">
		var i=1;
	    $('select[name="select_payment"]').on('select2:select', function (event){
	    	i++;
	    	console.log(event.params.data.id);
	    });
    </script>
    <script type="text/javascript">
    	$(document).ready(function ActualizarTotal(){
    	var valortotal=0;
		    $(".services_table tbody tr").each(function(){
		       	valortotal = valortotal + parseFloat($(this).find(".resultado").val());
		        $("#totales").text("$"+valortotal);
		        $("#total").val(valortotal);
		    });
		});
		function operar(){
			var monto = document.getElementById("monto").value;
			var valortotal = document.getElementById("totales").value;
			$('#abonado').val(monto);
			var resta=valortotal-monto;
			$('#resta').val(resta);
		}
		$( ".formulariocrear" ).submit(function( event ) {
        	var form = this;
        	event.preventDefault();
          	swal({
                title: "¿Desea crear esta venta?",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: '#088A08',
                confirmButtonText: 'Confirmar',
                closeOnConfirm: false,
              	},
                function() {
                    form.submit();  
                });
    	});
    </script>
    <script type="text/javascript">
    </script>  
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
@endsection

