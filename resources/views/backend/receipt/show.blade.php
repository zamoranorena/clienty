@extends('backend.layouts.app')
@section('page-header')
    <h1>
        Gestión de recibos
        <small>Ver Recibo</small>
    </h1>
@endsection
@section('content')
	<div class="box box-success">
		<div class="box-header with-border">
			<h3 class="box-title">Datos del recibo</h3>
			<div class="box-tools pull-right">
          		@include('backend.receipt.includes.partials.receipt-header-buttons')
        	</div>
		</div>
		<div class="box-body">
			<div class="col-md-4">
				
			</div>
		

		        <!--<table class=" table table-bordered">
				   <tr>
				     <th class="text-center"> <label class="control-label">Nro. Recibo</label></th>
				     <th class="text-center"> <label class="control-label">Cliente</label></th>
				     <th class="text-center"> <label class="control-label">F. Creación</label></th>
				     <th class="text-center"> <label class="control-label">Monto total del recibo</label></th>

				   </tr>
				  <tbody>
				     <tr>
					   <td>{{$receipt->identifier}}</td>				     
				       <td>{{ $receipt->sale->customer['name']}} {{ $receipt->sale->customer['last_name']}}</td>
				       <td>{{$receipt->created_at->format('d-m-Y')}}</td>
				       <td>$ {{number_format($receipt->monto_total,2)}}</td>
				     </tr>	  
				   </tbody>
				</table>-->
				<div class="">
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
				       <td style="color: red">$ {{number_format($receipt->monto_total,2)}}</td>
				       <td>$ {{number_format($commission->commission + $receipt->monto_total,2)}}</td>
				    </tr>	
				</tbody>
			</table>
			</div>

<div class="">
<div class="box-header with-border">
			<h3 class="box-title">Pagos a cuenta</h3>
	
		</div><!-- /.box-header -->
			<table class="table table-bordered text-center">
			  	<thead>
		            <tr>
		              <th>Nro</th>
		              <th>Fecha de pago</th>
		              <th>Cajero</th>
		              <th>Tipo de pago</th>
		              <th>Monto</th>
		              <th>Comisión Bancaria</th>
		              <th>Monto Abonado</th>
		              
		              		              
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
			          		<td>
			          			{{$deposit->cajero}}
			          		</td>
			          		<td>
			          			{{$deposit->name}}
			          		</td>
			          		<td>
			          			$ {{number_format($deposit->amount,2)}}
			          		</td>
			          		<td>
			          			$ {{number_format($deposit->commission,2)}}
			          		</td>
			          		<td>$ {{number_format($deposit->commission + $deposit->amount,2)}}</td>
			          		<td></td>
			          		
			          		

		          		</tr>
		          	@php
	                  $i++;
	                @endphp
	          		@endforeach
						</tbody>
						<br/>


				    	<tfoot>

				    		<tr>
					        <td colspan="5"></td>
					        <td class=""><b>Total</b></td>
					        <td>$ {{number_format($amount_commission,2)}}</td>
				    		</tr>
				    	</tfoot>
	          
			</table>
			</div>			


		</div>
	</div>
@endsection