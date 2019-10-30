@extends('backend.layouts.app')

@section('after-styles')
    {{ Html::style("css/backend/plugin/datatables/dataTables.bootstrap.min.css") }}
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet"/>
@endsection			

@section('page-header')
    <h1>
        Gestión de Cotizaciones
        <small>Ver Cotización</small>
    </h1>
@endsection

@section('content')
    <div class="box box-success">
	    <div class="box-header width-border">     
	      	<h3 class="box-title">Ver cotización</h3>
	        	<div class="box-tools pull-right">
	          		@include('backend.access.includes.partials.quote-header-buttons')
	        	</div>
	    </div>

        <div class="box-body">
		    {{ Form::model($quote,['route' => ['admin.operation.quote.update', $quote], 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'PATCH'])}}
		        <input type="hidden" name="user_id" class="form-control" value="{{access()->user()->id }}">
		        <input type="hidden" name="customer_id" value="{{$quote->customer['id']}}" class="form-control" ">
		        <table class=" table table-bordered">
				   <tr>
				     <th class="text-center"> <label class="control-label">Nombres y Apellidos</label></th>
				     <th class="text-center"> <label class=" control-label">E-mail</label></th>
				     <th class="text-center" style="width: 10%"> <label class=" control-label">Teléfono</label></th>
				     <th class="text-center"> <label class="control-label">Nro Cotización</label></th>
				     <th class="text-center"> <label class="control-label">F. Creación</label></th>
				     <th class="text-center"> <label class="control-label">F. Validez</label></th>
				     <!--<th class="text-center"> <label class=" control-label">Motivo</label></th>-->
				   </tr>
				  <tbody>
				     <tr>
				       <td>{!!Form::text('name',$quote->customer['name']." ".$quote->customer['last_name'],['class'=>'form-control', 'readonly'] )!!} 
				       </td>
				       <td>
				       	{!!Form::text('name',$quote->customer['email'],['class'=>'form-control', 'readonly'] )!!} 
				       </td>
				       <td>
				       	{!!Form::text('name',$quote->customer['phone'],['class'=>'form-control', 'readonly'] )!!} 
				       </td>
				       <td>{!!Form::text('name',$quote->identifier,['class'=>'form-control', 'readonly'] )!!} 
				       </td>
				       <td>{!!Form::text('last_name',$quote->created_at->format('d-m-Y'),['class'=>'form-control', 'readonly'])!!}</td>
				       <td>{!!Form::text('reason',Carbon\Carbon::parse($quote->date_vality)->format('d-m-Y') ,['class'=>'form-control', 'readonly'])!!}
				       </td>
				     </tr>	  
				   </tbody>
				</table>
				    <!--<div class="form-group">
				        <label class="col-lg-2 control-label">Nombre</label>
				        <div class="col-lg-10">
				            {!!Form::text('name',$quote->customer['name'],['class'=>'form-control', 'disabled'] )!!} 
				        </div>
				    </div>
				    <div class="form-group">
					    <label class="col-lg-2 control-label">Apellidos</label>
					    <div class="col-lg-10">
					        {!!Form::text('last_name',$quote->customer['last_name'],['class'=>'form-control', 'disabled'])!!} 
					    </div>
				    </div>
				    <div class="form-group">
					    <label class="col-lg-2 control-label">Motivo</label>
					    <div class="col-lg-10">
					         {!!Form::text('reason',$quote->visit['reason'],['class'=>'form-control', 'disabled'])!!} 
					    </div>
				    </div>-->
				    <br>
                    <table style="width: 100%" class="services_table table table-condensed">
			            <thead>
			                <tr>
			                    <h4 class="text-center">Listado de servicios<h4>
			                    <br>
			                </tr>
			                <tr style="width: 100%">
			                	<th>Nro</th>
			                    <th>Servicio</th>
                                <th>Proveedor</th>
			               		<th>P. Venta</th>
			               		<th>Cant.</th>
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
	                             	 		{{$services->name}}
	                             		</td>
	                             		<td>
	                             		    <input type="hidden" class="form-control" value="{{$services->provider_id}}" name="servicotizado[{{$i}}][provider_id]">
	                             		 	{{$services->provider_name}}
	                             		</td>
	                             		<td>
	                             	 		$ {{number_format($services->price, 2)}}
	                             		</td>
	                             		<td>
	                             	 		{{$services->cantidad}}
	                             		</td>
	                             		<td>
	                             	 		$ {{number_format($services->price*$services->cantidad,2)}}
	                             		</td>
	                        		</tr>
	                        		<tr><th class="text-center"> Detalle Servicio </th> <td colspan="4" ><textarea class="form-control" name="" id="coments" readonly="">{{$services->coments_service}}</textarea></td></tr>

                        	@php
                        		} 
                        	@endphp

 	

                        			<tr>
								        <td></td>
								        <td></td>
								        <td></td>
								        <td><th>TOTAL: </th></td>
								        <td>$ {{ number_format($quote->total,2) }}</td>
								        <td></td>
							    	</tr>
				        </tbody>
			        </table>
			      	<!--<div class="form-group">
			        	<label class="col-lg-2 control-label">TOTAL $:</label>
	                    <div class="col-lg-4">
					      <input type="text" name="total" id="totales" class="form-control" value="{{$services->price*$services->cantidad}}" disabled>
					    </div>   
                    </div>-->
                    <table class=" table table-bordered">

<tbody><tr>
  <th class="text-center"> <label class="control-label">Comentarios/Observaciones/Recomendaciones</label></th>

  </tr>



</tbody><tbody>
  <tr>

     

     <td><textarea class="form-control" name="coments" id="coments" readonly="">{{$quote->coments}}</textarea></td>
 


   </tr>
</tbody>
</table>

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
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
@endsection
