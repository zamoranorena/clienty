@extends('backend.layouts.app')

@section ('title', 'Detalle venta')

@section('page-header')
    <h1>
        <h1>Gestión de ventas
        	<small>Ver Venta</small>
        </h1>
    </h1>
@endsection

@section('content')
	<div class="box box-success">
        <div class="box-header with-border">
            <h3 class="box-title">Ver Venta</h3>
            <div class="box-tools pull-right">
                @include('backend.access.includes.partials.sale-header-buttons')
            </div><!--box-tools pull-right-->
        </div><!-- /.box-header -->
        
        <div class="box-body">
	    	<table class=" table table-bordered text-center">
				   <tr>
				     <th class="text-center"> <label class="control-label">Nombres y Apellidos</label></th>
				     <th class="text-center"> <label class=" control-label">Nro. de Venta</label></th>
				     <th class="text-center"> <label class=" control-label">F. Creación</label></th>
				     <th class="text-center"> <label class=" control-label">Vendedor</label></th>
				   </tr>
				  <tbody>
				     <tr>
				       <td class="text-center">{!!Form::text('name',$venta->customer['name']." ".$venta->customer['last_name'],['class'=>'form-control text-center', 'readonly'] )!!}
				       </td>
				       <td class="text-center"> {!!Form::text('identifier',$venta->identifier,['class'=>'form-control text-center', 'readonly'])!!} 
				       </td>
				       <td class="text-center"> {!!Form::text('created_at',$venta->created_at->format('d-m-Y'),['class'=>'form-control text-center', 'readonly'])!!} 
				       </td>
				       <td class="text-center"> {!!Form::text('created_at',$venta->user['name'],['class'=>'form-control text-center', 'readonly'])!!} 
				       </td>
				     </tr>
				   </tbody>
				</table>
	    	<div class="col-md-12">
            <table class="table  table-responsive table-condensed">
				<thead>
				    <tr>
				    	<th>Nro</th>
				        <th>Servicio</th>
				        <th>Proveedor</th>
				        <th>Cantidad</th>				        
				        <th>P. Venta</th>
				        <th>P. Total</th>
				    </tr>
				</thead>
				<tbody>
				@php
				$i=1;
				@endphp
				    @foreach($detalles_venta as $producto)
					    <tr>
					    	<td>{{$i}}</td>
						    <td>{{$producto->nombre_servicio}}</td>
						    <td>{{$producto->nombre_proveedor}}</td>
						    <td>{{$producto->cantidad}}</td>
						    <td>$ {{number_format($producto->precio,2)}}</td>

						    <td>$ {{number_format($producto->precio_total,2)}}</td>
					    </tr>
					    <tr>
              				<th class="text-center"> Detalle Servicio </th><td colspan="4"><textarea class="form-control" readonly>{{$producto->coments_service}}</textarea></td>
              			</tr>
				@php
					$i++;
				@endphp
					@endforeach

						<tr>
					        <td></td>
					        <td></td>
					        <td></td>
					        <td></td>
					        <th>TOTAL: </th>
					        <td>$ {{number_format($producto->venta_total,2)}}</td>
				    	</tr>
				</tbody>
	  		</table>
	  		<table class=" table table-bordered">
						<tr>
						  <th class="text-center"> <label class="control-label">Comentarios/Observaciones/Recomendaciones</label></th>
						</tr>
				<tbody>
					<tr>
						<td><textarea class="form-control" readonly>{{$producto->coments_general}}</textarea></td>
					</tr>
				</tbody>
			</table>
	  		</div>
        </div><!-- /.box-body -->
    </div><!--box-->
@endsection