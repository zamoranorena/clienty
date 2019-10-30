@extends('backend.layouts.app')
@section ('title', 'Editar venta')
@section('after-styles')
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet"/>
@endsection
@section('content')
	<div class="panel panel-primary">
	  	<div class="panel-heading">
	    	<h3 class="panel-title">Emitir pagos</h3>
	  	</div>
	  	<div class="panel-body ">
	  		<button class="btn default pull-right" name="add_pago">Agregar nuevo pago</button>
	  		 	{{ Form::model($venta,['route' => ['admin.operation.sale.guardarpago'], 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'POST'])}}
	  		 		<input type="hidden" name="sale_id" value="{{$venta->id}}" class="form-control">
	  		 		<input type="hidden" name="customer_id" value="{{$venta->customer['id']}}" class="form-control">
	  		 		<table class="table depositos">
						<thead>
						    <tr>
						        <th>Monto</th>
						        <th>Forma de Pago</th>
						    </tr>
						</thead>
						<tbody>
						    <tr>
						    	<td>
							    	<div class="form-group">
							    		<div class="col-lg-10">
			                        		{{ Form::number('amount', null, ['class' => 'form-control', 'placeholder' => trans('Ingresar monto')]) }}
			                    		</div><!--col-lg-10-->
			                    	</div>
						    	</td>
						    	<td>
						    		<select name="select_payment" class="js-example-basic-single" style="width: 100%">
		                            	<option value="0">Seleccione un tipo de pago</option>
				                        @foreach($payments as $payment)
				                    		<option value="{{$payment->id}}">{{$payment->name}}</option>
				                        @endforeach
			                    	</select>
						    	</td>
						    </tr>
						</tbody>
	  				</table>
  				<button type="submit" class="btn btn-success pull-right">Guardar</button>
  			{!!Form::close()!!}
	  	</div>
	</div>

	<div class="panel panel-primary">
	  	<div class="panel-heading">
	    	<h3 class="panel-title">Detalles de la venta</h3>
	  	</div>
	  	<div class="panel-body ">
		    <table class="table">
				<thead>
				    <tr>
				        <th>Cod. Recibo</th>
				        <th>Monto</th>
				        <th>Tipo de pago</th>
				        <th>Fecha</th>
				    </tr>
				</thead>
				<tbody>
				    @php
				    	$i=1;
				    @endphp
				    @foreach($depositos as $deposito)
					    <tr>
						    <td>{{$deposito->identifier}}</td>
						    <td><small>$</small>{{$deposito->amount}}</td>
						    <td>{{$deposito->name}}</td>
						    <td >{{$deposito->created_at}}</td>
						    <td>
						    </td>
					    </tr>
					    @php
					    	$i++;
					    @endphp
					@endforeach
				</tbody>
	  		</table>
	  		<div class="panel panel-default text-center">
  				<div class="panel-body">
   					<div class="col-md-4">
		    			<p>Monto Pagado:<h3><small>$</small>{{$montopagado}}</h3></p>
		    		</div>
		    		<div class="col-md-4">
		    			<p>Debe: <h3><small>$</small>{{$debe}}</h3></p>
		    		</div>
		    		<div class="col-md-4">
		    			<p>Total a pagar:<h3><small>$</small>{{$total}}</h3></p>
		    		</div>
  				</div>
			</div>
	  	</div>
	</div>
@endsection

@section('after-scripts')
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script type="text/javascript">
	  	$(document).ready(function(){
	  		$(".js-example-basic-single").select2();
		});
	</script>
	<!--<script type="text/javascript">
	    $('select[name="select_payment"]').on('select2:select', function (event){
	    	console.log(event.params.data.id);
	    });
    </script>-->
	<script type="text/javascript">
		var debe='{{$debe}}';
		$('button[name="add_pago"]').click(function(){
    		$(".depositos tbody").append(
    			'<tr>\
    				<td>\
    					<div class="form-group"><div class="col-lg-10"><input type="number" value="" name="amount" class="form-control" placeholder="Ingresa Monto"> </div></div>\
    				</td>\
	    			<td>\
	    				<select name="select_payment" class="js-example-basic-single" style="width: 100%">\
		                    <option value="0">Seleccione un tipo de pago</option>\
				                @foreach($payments as $payment)\
				                   	<option value="{{$payment->id}}">{{$payment->name}}</option>\
				                @endforeach\
			            </select>\
			        </td>\
    			</tr>');
    		$(document).ready(function(){
	  			$(".js-example-basic-single").select2();
			});
		});
		$(document).ready(function(){
	    	var valortotal=0;
			    $(".depositos tbody tr").each(function(){
			       	valortotal = valortotal + parseFloat($(this).find(".monto").html());
			        $("#pagado").html(valortotal);
			    });
		});
	</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
@endsection
