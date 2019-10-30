@extends('backend.layouts.app')

@section('page-header')
    <h1>
        Gestión de recibos
        <small>Editar Recibo</small>
    </h1>
@endsection
@section('after-styles')
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet"/>
@endsection

@section('content')
{{ Form::model($receipt,['route' => ['admin.box.receipt.update',$receipt], 'class' => 'form-horizontal formulariocrear', 'role' => 'form', 'method' => 'PATCH'])}}
	{{ Form::hidden('updated_user_id', access()->user()->id) }}
	{{ Form::hidden('customer_id', $receipt->sale->customer['id']	) }}
	<div class="box box-success">
		<div class="box-header with-border">
			<h3 class="box-title">Editar Recibo</h3>
			<div class="box-tools pull-right">
          		@include('backend.receipt.includes.partials.receipt-header-buttons')
        	</div>
		</div><!-- /.box-header -->
		<div class="box-body">
			<table class=" table table-bordered  text-center">
				<tr>
				    <th class="text-center"> <label class="control-label">Nro. de recibo</label></th>
					<th class="text-center"> <label class="control-label">Nro. de venta</label></th>				    
				    <th class="text-center"> <label class="control-label">Cliente</label></th>
				    <th class="text-center"> <label class="control-label">Vendedor</label></th>
				    <th class="text-center"> <label class="control-label">F. Creación</label></th>
				    <th class="text-center"> <label class="control-label">Monto total de venta</label></th>
				    <th class="text-center"> <label class="control-label">Total Recibo</label></th>
				</tr>
				<tbody>
				    <tr>
					   <td>{{$receipt->identifier}}</td>	
					   <td>{{$receipt->sale_identifier}}</td>						   			     
				       <td>{{ $receipt->sale->customer['name']}} {{ $receipt->sale->customer['last_name']}}</td>
				       <td>{{$receipt->namecounter}}</td>
				       <td>{{$receipt->created_at->format('d-m-Y')}}</td>
				       <td style="color:red">$ {{number_format($receipt->monto_total,2)}}</td>
				       <td>$ {{number_format($receipt->monto_total + $commission,2)}}</td>
				    </tr>	

				</tbody>
			</table>
</br>


<div class="row">


					<div class="box-header with-border">
			<h3 class="box-title">Editar datos del cliente</h3>
	
		</div><!-- /.box-header -->
		</br>
  	<div class="form-group">
                {{ Form::label('type_document', 'Tipo de documento', ['class' => 'col-lg-2 control-label']) }}
                <div class="col-lg-8">
		                <select class="js-example-basic-single" name="select_documents" style="width: 300px;">
		                	
		  					@foreach($tipos as $tipo)
		  						@if($receipt->sale->customer['type_document_id']===$tipo->id)
		  							<option value="{{$tipo->id}}" selected>{{$tipo->name}}</option>
		  						@else
		  							<option></option>
		  							<option value="{{$tipo->id}}">{{$tipo->name}}</option>
		  						@endif
		                        
		                    @endforeach
						</select>
				</div>
				</div>
				<div class="form-group">
                {{ Form::label('type_document', 'Nro. de documento', ['class' => 'col-lg-2 control-label']) }}
                <div class="col-lg-8">
		            <input type="text" class="form-control" value="{{$receipt->sale->customer['number_document']}}" name="number_document" style="width: 300px">
				</div>
				</div>        

</div>




</br>
</br>
















					<div class="box-header with-border">
			<h3 class="box-title">Pagos a cuenta</h3>
	
		</div><!-- /.box-header -->

			<table class="table table-bordered text-center">
			  	<thead>
		            <tr>
		              <th>Nro</th>
		              <th>F. Creación</th>
		              <th>Cajero</th>
		              <th>Tipo de pago</th>
		              <th>Monto</th>
		              <th>Comisión Bancaria</th>
		              <th>Monto abonado</th>		              
		            </tr>
	          	</thead>
	          	<tbody>
	          		@php
		              $i=1;
		              $total=0.00
		            @endphp
		        
	          		@foreach($deposits as $deposit)
					  @php
		              $total=$total+$deposit->amount;
		            @endphp
	          			<tr>
			          		<td>
			          			{{$i}}
			          		</td>
			          		<td>
			          			{{$deposit->created_at->format('d-m-Y')}}
			          		</td>
			          		<td>{{$deposit->cajero}}</td>
			          		<td>
			          			{{$deposit->name}}
			          		</td>
			          		
			          		<td>
			          			$ {{number_format($deposit->amount,2)}}
			          		</td>
			          		<td>$ {{number_format($deposit->commission,2)}}</td>
			          		<td>$ {{number_format($deposit->amount_commission,2)}}</td>

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
					        <td></td>
					        <th>TOTAL</th>
					        <td>$ {{number_format($amount_commission,2)}}</td>
				    	</tr>
	          	</tbody>
			</table>
			<br>

			<div class="=row">
				<table class=" table table-bordered">
					<tr>
				  		<th class="text-center"> <label class="control-label">Comentarios/Observaciones/Recomendaciones</label></th>
				  	</tr>
					<tbody>
					  	<tr>
					  	<td><textarea class="form-control" style="border: 10" name="coments">{{$receipt['coments']}}</textarea></td>
					   </tr>
					</tbody>
				</table>
			</div>
		</div><!-- /.box-body -->
		<div class="box box-info">
            <div class="box-body">
                <div class="pull-left">
                    <a href="">
                        {{ link_to_route('admin.box.receipt.index', 'Cancelar', [], ['class' => 'btn btn-danger']) }}
                    </a>
                </div>
                <div class="pull-right">
                        {!!Form::submit('Actualizar',['class'=>'btn btn-success'])!!}
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
	</div><!--box-->
@endsection
@section('after-scripts')
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
      	$(document).ready(function(){
        $(".js-example-basic-single").select2({
        	placeholder: "--Seleccione tipo de documento--"
        });
    });
  </script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
<script type="text/javascript">
	$( ".formulariocrear" ).submit(function( event ) {
        	var form = this;
        	event.preventDefault();
          	swal({
                title: "¿Confirma actualizar el detalle del recibo?",
                text: "",
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
@endsection