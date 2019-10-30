@extends('backend.layouts.app')
@section ('title', 'Editar venta')
@section('after-styles')
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet"/>
@endsection
@section('page-header')
<h1>
   Gestión de pagos
   <small>Crear pago</small>
</h1>
@endsection
@section('content')
<div class="box box-success">
   <div class="box-header with-border">

      <div class="box-tools pull-right">
         @include('backend.receipt.includes.partials.receipt-header-buttons')
      </div>
      <!--box-tools pull-right-->
   </div>
   <!-- /.box-header -->
   <div class="box-body">
      <!--<button class="btn default pull-right" name="add_pago">Agregar nuevo pago</button>-->	
      {{ Form::model($receipt,['route' => ['admin.operation.deposit.guardarpago'], 'class' => 'form-horizontal formulariocrear', 'role' => 'form', 'method' => 'POST'])}}
      {{ Form::hidden('created_user_id', access()->user()->id) }}
      <input type="hidden" name="sale_id" value="{{$receipt->sale_id}}" class="form-control">
      <input type="hidden" name="customer_id" value="{{$receipt->sale->customer['id']}}" class="form-control">
      <input type="hidden" name="receipt_id" value="{{$receipt->id}}" class="form-control">
      <table class=" table table-bordered  text-center">
        <tr>
            <th class="text-center"> <label class="control-label">Nro. de recibo</label></th>
            <th class="text-center"> <label class="control-label">Nro. de venta</label></th>              <th class="text-center"> <label class="control-label">Cliente</label></th>
            <th class="text-center"> <label class="control-label">Vendedor</label></th> 
            <th class="text-center"> <label class="control-label">F. Creación</label></th>
            <th class="text-center"> <label class="control-label">Monto Total de Venta</label></th>
        </tr>
        <tbody>
            <tr>
              <td>{{$receipt->identifier}}</td>  
              <td>{{$receipt->sale_identifier}}</td>                          
              <td>{{ $receipt->sale->customer['name']}} {{ $receipt->sale->customer['last_name']}}</td>
              <td>{{$receipt->namecounter}}</td> 
              <td>{{$receipt->created_at->format('d-m-Y')}}</td>
              <td style="color:red">$ {{number_format($receipt->monto_total,2)}}</td>
            </tr> 

        </tbody>
      </table>




      <div class="">

            <div class="box-header with-border">
         <h3 class="box-title">Agregar pago</h3>
      </div>
         <div class="col-xs-6 col-md-6">
            
            <div class="form-group">
               <label class="col-lg-3 control-label">Forma de pago</label>
               <div class="col-lg-7">
                  <select name="tipos_pagos"  class="js-example-basic-single" style="width: 100%" required>
                     <option value="">--Seleccione un tipo de pago--</option>
                     @foreach($payments as $payment)
                     <option value="{{$payment->id}}" required>{{$payment->name}}</option>
                     @endforeach
                  </select>
               </div>
            </div>

            <div class="form-group">
               <label class="col-lg-3 control-label">Monto</label>
               <div class="col-lg-7">
                  <input type="text" onkeypress="return OnlyNumbers(event, this);"   min="0" step="0.01" class="form-control" value="" name="amount" id="montoapagar"  placeholder="Monto" required readonly>
               </div>
            </div>

            <div class="form-group">
               <label class="col-lg-3 control-label">Monto Total a Abonar</label>
               <div class="col-lg-3">
                  <input type="text" onkeypress="return OnlyNumbers(event, this);" value=""  min="0" step="0.01" class="form-control" name="amount_commission" id="monto"  placeholder="Monto" readonly>
               </div>
               <label class="col-lg-2 control-label">Tasa %</label>
               <div class="col-lg-2">
                  <input type="text" onkeypress="return OnlyNumbers(event, this);"   min="0" step="0.01" class="form-control" value="0.00" name="percentaje" id="porcentaje"  placeholder="%" readonly required>
               </div>
               <div>
                  <input type="hidden" onkeypress="return OnlyNumbers(event, this);" min="0" step="0.01" class="form-control" value="" name="commission" id="commission" readonly required>
               </div>
            </div>


            <div class="form-group">
               <label class="col-lg-3 control-label"></label>
               <div class="col-lg-7">
                  <button type="submit" class="btn btn-success pull-right">Guardar pago</button>
                 
               </div>
            </div>



        
         </div>
      </div>


</br>


<div>
      <div class="box-header with-border col-lg-10 ">
         <h3 class="box-title">Saldos</h3>
      </div>
      <!-- /.box-header -->
      <div class="  text-center">
         <div class="panel-body">
            <div class="col-md-4">
               <p>Total Recibo:
               <h3> $ {{number_format($total_recibo,2)}}</h3>
               </p>
            </div>
            <div class="col-md-4">
               <p>Pago a Cuenta:
               <h3> $ {{number_format($pago_acuenta,2)}}</h3>
               </p>
            </div>
            <div class="col-md-4">
               <p>Saldo a Pagar: 
               <h3 id="debe">$ {{number_format($debe,2)}}</h3>
               </p>
            </div>
         </div>
      </div>
</div>







<div class="">
      {!!Form::close()!!}
      <div class="box-header with-border col-lg-10 ">
         <h3 class="box-title ">Pagos a cuenta</h3>
      </div>
      <!-- /.box-header -->
      <table class="table table-bordered table-responsive text-center">
         <thead>
            <tr>
                <th>Cajero</th>
                <th>Tipo de pago</th>
                <th>Monto</th>
                <th>Comisión bancaria</th>
                <th>Monto bonado</th>
                <th>F. Creación</th>
            </tr>
         </thead>
         <tbody>
            @php
            $i=1;
            @endphp
            @foreach($depositos as $deposito)
            <tr>
                <td>{{$deposito->cajero}}</td>
                <td>{{$deposito->name}}</td>
                <td>$ {{number_format($deposito->amount,2)}}</td>
                <td>$ {{number_format($deposito->commission,2)}}</td>
                <td>$ {{ number_format($deposito->commission + $deposito->amount,2)}}</td>
                <td >{{$deposito->created_at->format('d-m-Y')}}</td>
            </tr>
            @php
            $i++;
            @endphp
            @endforeach
         </tbody>
      </table>


</div>
      </br>
       </br>




   </div>
</div>
<div class="row"></div>
<div class="col-xs-3 col-md-3"></div>
</div>
@endsection
@section('after-scripts')
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
   	  $(".js-example-basic-single").select2();
      $("#monto").keyup(function() {
        var monto = parseFloat($("#monto").val().replace(",",""));
        var debe = parseFloat($("#debe").text().replace(",","").replace("$",""));
        if ((monto > debe) || (monto < 0)) {
        	swal("El monto debe ser menor o igual a: $ "+debe+" ");
        	$("#monto").val("");
        }
      });
    });

    function tasaBancaria()
    {
      $("#montoapagar").change(function (event){
        var tasa_bancaria = $("#porcentaje").val();
        monto_depositado =  $("#montoapagar").val();
        console.log(monto_depositado);
        var monto_bancario  = monto_depositado * tasa_bancaria;
        var monto_total = parseFloat(monto_bancario) + parseFloat(monto_depositado);
        $("#monto").val(formatoMiles(monto_total.toFixed(2)));
        $("#commission").val(monto_bancario);
      });
    } 

    //AJAX
    $('select[name="tipos_pagos"]').on('select2:select', function (event){
      $.ajax({
        url: '{{URL::to("admin/operation/getbancario")}}/'+event.params.data.id,
        data:{
          format:'json',
          id: event.params.data.id
        },
        dataType:'json',
        type: "GET",
        success: function(porcentaje){
          tasaBancaria();
          montoapagar = $("#montoapagar").removeAttr("readonly","readonly").val("").focus();
          $("#monto").val("0.00");
          porcentaje = $("#porcentaje").val(porcentaje.commission.toFixed(2)); 
        }
      });
    });

        


</script>
<script type="text/javascript">
   var debe='{{$debe}}';
   var i=1;
   //Agrega nueva fila de pago
   /*$('button[name="add_pago"]').click(function(){
   	i++;
     		$(".depositos tbody").append(
     			'<tr>\
     				<td>\
     					<div class="form-group"><div class="col-lg-10"><input type="text" name="payment_various['+i+'][amount]" id="payment_various['+i+'][amount]"class="form-control" value="" placeholder="Ingresa Monto" > </div></div>\
     				</td>\
      			<td>\
      				<select  name="payment_various['+i+'][name]" id="payment_various['+i+'][name]"class="js-example-basic-single" style="width: 100%">\
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
   });*/
   $( ".formulariocrear" ).submit(function( event ) {
         var form = this;
         event.preventDefault();
         var tabla = $( ".services_table tbody tr" ).length;
           	
           	swal({
                   title: "¿Desea guardar este pago?",
   
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
<script language="JavaScript">
   function OnlyNumbers(e, field) {
    key = e.keyCode ? e.keyCode : e.which
    // backspace
    if (key == 8) return true
    // 0-9
    if (key > 47 && key < 58) {
      if (field.value == "") return true
      regexp = /[0-9]{1,10}[\.][0-9]{2,3}$/
      return !(regexp.test(field.value))
    }
    // .
    if (key == 46) {
      if (field.value == "") return false
      regexp = /^[0-9]+$/
      return regexp.test(field.value)
    }
    return false
   }
</script>
@endsection