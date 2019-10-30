@extends('backend.layouts.app')
@section ('title', 'Editar Cotizacion')
@section('after-styles')
{{ Html::style("css/backend/plugin/datatables/dataTables.bootstrap.min.css") }}
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet"/>
@endsection			
@section('page-header')
<h1>
   Gestión de Cotizaciones
   <small>Editar Cotización</small>
</h1>
@endsection
@section('content')
<div class="box box-success">
<div class="box-header width-border">

   <div class="box-tools pull-right">
      @include('backend.access.includes.partials.quote-header-buttons')
   </div>
</div>
<div class="box-body">
{{ Form::model($quote,['route' => ['admin.operation.quote.update', $quote], 'class' => 'form-horizontal formularioactualizar', 'role' => 'form', 'method' => 'PATCH'])}}
{{ Form::hidden('updated_user_id', access()->user()->id) }}

<div class="box-body text-center ">
<div class="container ">
<input type="hidden" name="customer_id" value="{{$quote->customer['id']}}" class="form-control" ">




   <div class="panel panel-default">
      <div class="panel-heading"><b>DATOS DEL CLIENTE</b></div>
      <div class="panel-body ">
         <div class="form-group">
            <div class="col-lg-3">
               {!! Form::label('name', 'Nombres', ['class' => ' text-center  control-label']) !!}
               <div class="">
                  {!!Form::text('name',$quote->customer['name'],['class'=>' form-control','placeholder'=>'Nombres','required'])!!}
               </div>
            </div>
            <div class="col-lg-3">
               {!! Form::label('last_name', 'Apellidos', ['class' => ' control-label']) !!}
               <div class="">
                  {!!Form::text('last_name',$quote->customer['last_name'],['class'=>'form-control','placeholder'=>'Apellidos','required'])!!}
               </div>
            </div>
            <div class="col-lg-3">
               {!! Form::label('email', 'Email  ', ['class' => ' control-label']) !!}
               <input type="checkbox" name="email" class="email" value="No Aplica" class="email" >
               <div class="">
                  {!!Form::email('email',$quote->customer['email'],['class'=>'form-control','placeholder'=>'Email','required','id'=>'email','enabled'])!!}
               </div>
            </div>
            <div class="col-lg-3">
               {!! Form::label('telefono', 'Teléfono', ['class' => ' control-label']) !!}
               <input type="checkbox" name="telefono" value="No Aplica" class="telefono" >
               <div class="">
                  {!!Form::tel('telefono',$quote->customer['phone'],['class'=>'form-control','placeholder'=>'Telefono','required','id'=>'telefono'])!!}
               </div>
            </div>





         </div>
      </div>
   </div>













   <div class="panel panel-default">
      <div class="panel-heading"><b>COTIZACIÓN: {{$quote->identifier}} -- {{$quote->created_at->format('d-m-Y')}} </b></div>
      <div class="panel-body ">
         <div class="form-group">
            <label class="col-lg-1 control-label">Servicios</label>
            <div class="col-lg-5">

      <select name="select_services" class="js-example-basic-single" style="width: 100%">
         <option value="0">--Seleccione un servicio--</option>
         <option value="0">Nuevo servicio</option>
         @foreach($service as $services)
         <option value="{{$services->id}}">{{$services->name}}</option>
         @endforeach
      </select>

            </div>
            <label class=" col-lg-2 control-label">Fecha de validez</label>
            <div class="col-lg-4">
               <input type="date" name="fechavalidez" class="form-control"  min={{$starDate}} max="{{$endDate}}"  required="required" value="<?php echo date("Y-m-d");?>">
            </div>
         </div>

<table style="width: 100%" id="services_table" class="services_table table table-hover table-striped table-bordered table-condensed">
   <thead>
      <br>
      <tr>
         <h4 class="text-center">Listado de servicios</h4>
      </tr>
      <br>
      <tr style="width: 100%">
         <th>Nro</th>
         <th>Servicio</th>
         <th>Proveedor</th>
         <th>Precio</th>
         <th>Cantidad</th>
         <th>Total</th>
         <th>Eliminar</th>
      </tr>
   </thead>
   <tbody>
      <?php
         $i=0;
         foreach($quote_service as $services){
         $i++;
         ?>
      <tr id="{{$i}}">
         <input type="hidden" class="form-control" value="{{$services->quote_id}}" name="servicotizado[{{$i}}][quoteid]">
         <input type="hidden" class="form-control detallecotid" value="{{$services->detallecotid}}" name="servicotizado[{{$i}}][detallecotid]">
         <input type="hidden" class="form-control" value="{{$services->id}}" name="servicotizado[{{$i}}][service_id]">
         <input type="hidden" class="form-control" value="{{$services->provider_id}}" name="servicotizado[{{$i}}][provider_id]">
         <td>
            {{$i}}
         </td>
         <td>
            <input type="text" class="form-control" value="{{$services->name}}" name="servicotizado[{{$i}}][service_name]" readonly>
         </td>
         <td>
            <div class="input-group col-xs-10">
            <span class="input-group-addon"><i class="fa fa-user-o" aria-hidden="true"></i></span><input type="text" class="form-control" value="{{$services->provider_name}}" name="servicotizado[{{$i}}][provider_name]" readonly>
         </td>
         <td>
            <div class="input-group col-xs-10">
            <span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true" ></i></span><input type="text"  class="form-control " value="{{number_format($services->price,2,'.','')}}" id="precio{{$i}}" onkeyup="multiplicar({{$i}});" onkeypress="return OnlyNumbers(event, this)"  name="servicotizado[{{$i}}][service_price]" >
         </td>
         <td>
            <input type="text" class="form-control"  value="{{$services->cantidad}}" id="cantidad{{$i}}" onkeyup="multiplicar({{$i}});" onkeypress="return OnlyNumbers(event, this);"name="servicotizado[{{$i}}][service_cantidad]" required >
         </td>
         <td>
            <div class="input-group col-xs-10">
               <span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true"></i></span><input type="text" class="form-control resultado" id="total_price{{$i}}" 
                  value="{{number_format($services->price*$services->cantidad,2)}}" onkeyup="multiplicar({{$i}})" onkeypress="return OnlyNumbers(event, this);" name="servicotizado[{{$i}}][total_price]"readonly>
         </td>
         <td>
         <a id="eliminarNodo"  class="btn btn-danger btn-sm elimino"><i class="fa fa-times" aria-hidden="true"></i></a>
         </td>
      </tr>
      <tr id="{{$i}}">
      <th class="text-center"> Detalle Servicio </th> <td colspan="4" ><textarea class="form-control" name="servicotizado[{{$i}}][coments]" id="coments">{{$services->coments}}</textarea></td></tr>
      <?php 
         } 
         ?>
   </tbody>
   <tfoot>
   <tr>
   <td class="text-center"></td>
   <td class="text-center"></td>
   <td class="text-center"></td>
   <td class="text-center"></td>
   <td class="text-center"><b>TOTAL</b></td>
   <td  width="15%"><div class="input-group col-xs-10 text-center"  size="35" ><span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true"></i></span><input type="text" name="total" id="totales" class="form-control" value="{{number_format($quote['total'],2)}}" readonly></td>
   <td class="text-center"></td>
   </tr>
   </tfoot>
</table>

<!--<div class="form-group">  -->
<table class=" table table-bordered">
<tbody><tr>
<th class="text-center"> <label class="control-label">Comentarios/Observaciones/Recomendaciones</label></th>
</tr>
</tbody><tbody>
<tr>
<td><textarea class="form-control" name="coments" id="coments" >{{$quote->coments}}</textarea></td>
</tr>
</tbody>
</table>
<!--</div>-->
</div></div></div>
<div class="box box-info">
<div class="box-body">
<div class="pull-left">
{{ link_to_route('admin.operation.quote.index','Cancelar', [], ['class' => 'btn btn-danger']) }}
</div>
<div class="pull-right">
{!!Form::submit('Actualizar',['class'=>'btn btn-success'])!!}
</div>
<div class="clearfix"></div>
</div>
</div>
{!!Form::close()!!}
</div>
</div>
</div>
</div>
@endsection
@section('after-scripts')
<script type="text/javascript">
   $(document).ready(function(){
   
   	   $('.js-example-basic-single').select2({
   
     placeholder: '--Seleccione un servicio--',
      theme: "classic" 
   
   });

    eliminarFila();
   
   $('.telefono').change(function() {
        if(this.checked) {
           $("#telefono").attr('disabled','disabled').val('No Aplica');   
   
        }else{
          $("#telefono").removeAttr('disabled').val('');    
        }
          
    });
   
   
  
   $('.email').change(function() {
        if(this.checked) {
            
             $("#email").attr('disabled','disabled').val('No Aplica');   
        }else{
          $("#email").removeAttr('disabled').val('');     
        }
                      
    });

   
   });
</script>


<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>



<script type="text/javascript">
   var quote_id='{{$services->quote_id}}';
   
   var i={{$i}};
   var user_id="{{access()->user()->id}}";
   var id_servicio="{{$services->id}}"
   $('select[name="select_services"]').on('select2:select', function (event){
     $(this).val(null).trigger("change");
       console.log(event.params.data.id);          
       i = i + 1;
       if (event.params.data.id==0){
         $('.services_table tbody').append(
           '<tr id='+i+'>\
             <td>'+i+'</td>\
             <td><input type="hidden" value='+event.params.data.id+' name="services['+i+'][id]"><input type="text" class="form-control" name="services['+i+'][name]" value="" placeholder="Servicio" id="servicio'+i+'"></td>\
             <td><div class="input-group col-xs-10"><span class="input-group-addon"><i class="fa fa-user-o" aria-hidden="true"></i></span><input type="hidden" class="form-control" value="'+quote_id+'" name="services['+i+'][quoteid]"><input type="text" class="form-control" name="services['+i+'][providername]" value="" placeholder="Proveedor"></td>\
             <td><div class="input-group col-xs-10"><span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true"></i></span><input type="text" class="form-control multiplica" value="" name="services['+i+'][price]" id="precio'+i+'" onkeyup="multiplicar('+i+')" onkeypress="return OnlyNumbers(event, this);" placeholder="Ingresar Precio"></td>\
             <td><input type="text" class="form-control multiplica" name="services['+i+'][cantidad]" value="1" id="cantidad'+i+'" onkeyup="multiplicar('+i+')" onkeypress="return OnlyNumbers(event, this);"></td>\
             <td><div class="input-group col-xs-10"><span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true"></i></span><input type="text" class="form-control resultado" value="0" id="total_price'+i+'" name="services['+i+'][total_price] readonly></td>\
             <td><button type="button" class="btn btn-danger btn-sm" id="eliminarNodo"></button></td>\
             <td><button type="button" class="btn btn-danger btn-sm" id="eliminarNodo"><i class="fa fa-times" aria-hidden="true"></i></button></td>\
           </tr><tr id='+i+'>\
            <th class="text-center"> Detalle Servicio </th> <td colspan="4" ><textarea class="form-control" name="services['+i+'][coments]" id="coments"></textarea></td></tr>'
         );
         eliminarFila();
       }
       else
       {
       	console.log(event.params.data.id);
         $.ajax({
           url: '{{URL::to("admin/maintenance/getservice")}}/'+event.params.data.id,
           data: {
             format:'json',
             id: event.params.data.id
           },
           dataType:'json',
           success: function(service){  
         
             $('.services_table tbody').append(
               '<tr id='+i+'>\
               <td>'+i+'</td>\
                 <td><input type="hidden" value='+event.params.data.id+' name="serviexiste['+i+'][service_id]"><input type="text" class="form-control" name="serviexiste['+i+'][service_name]" value="'+service.name+'" id="nombre'+i+'"></td>\
                 <td><input type="hidden" class="form-control" value="'+quote_id+'" name="serviexiste['+i+'][quoteid]"><input type="hidden" class="form-control" name="serviexiste['+i+'][provider_id]" value="'+service.provider_id+'" id="service_provider'+i+'"><div class="input-group col-xs-10"><span class="input-group-addon"><i class="fa fa-user-o" aria-hidden="true"></i></span><input type="text" class="form-control" value="'+service.proveedor+'" id="provider'+i+'" name="serviexiste['+i+'][provider_name]"></td>\
                 <td><div class="input-group col-xs-10"><span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true"></i></span><input type="text" class="form-control multiplica" name="serviexiste['+i+'][price]" value="'+(service.price).toFixed(2)+'" id="precio'+i+'" onkeyup="multiplicar('+i+')" onkeypress="return OnlyNumbers(event, this);" name="price'+i+'"></td>\
                 <td><input type="text" class="form-control multiplica" name="serviexiste['+i+'][cantidad]" value="1" id="cantidad'+i+'" onkeyup="multiplicar('+i+')" onkeypress="return OnlyNumbers(event, this);"name="cantidad'+i+'"></td>\
                 <td><div class="input-group col-xs-10"><span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true"></i></span><input type="text" class="form-control resultado" value="'+(service.price*1).toFixed(2)+'" id="total_price'+i+'" name="serviexiste['+i+'][total_price]" readonly></td>\
                 <td><button type="button" class="btn btn-danger btn-sm" id="eliminarNodo"><i class="fa fa-times" aria-hidden="true"></i></button></td>\
                 </tr>\
                     <tr id='+i+'>\
             <th class="text-center"> Detalle Servicio </th> <td colspan="4" ><textarea class="form-control" name="serviexiste['+i+'][coments]" id="coments"></textarea></td></tr>'
             );
             eliminarFila();
             actualizarTotalCotizacion();
           }
         });
       }
   });
   
   
   
   function multiplicar(j){
       var p,c;
       p=$("#precio"+j).val();
       c=$('#cantidad'+j).val();
       var r = p*c;
       var prec_total = r.toFixed(2);
       $("#total_price"+j).val(prec_total);
       actualizarTotalCotizacion();
   }
   
   
   
    $( ".formularioactualizar" ).submit(function( e ) {
    	var form = this;
    	e.preventDefault();
    	var tabla = $( ".services_table tbody tr" ).length;
    	if (tabla == "" ){
     	swal({
   	  title: "¡No puede guardar sin servicios!",
   	  type: "warning",
   	  html: true
   	});
       event.preventDefault();
    	}else{
    	swal({
                title: "¿Desea actualizar esta cotización?",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: '#088A08',
                confirmButtonText: 'Confirmar',
                closeOnConfirm: false,
           	},
            	function() {
                 form.submit();  
            	});
    	}
   });
   

  function actualizarTotalCotizacion(){
     var valortotal=0;
     $("#totales").val("0.00");
       $(".resultado").each(function(){
         valortotal = valortotal + parseFloat(formatoMilesReverse($(this).val()));
           var valortot = valortotal.toFixed(2);
           $("#totales").val(formatoMiles(valortot));
       });
   }



   
   function eliminarFila(){
     $('.services_table #eliminarNodo').click(function(){
       $(this).parent().parent().remove();
      var fila=parseInt($(this.parentNode.parentNode).attr('id'));
      $('#services_table').closest('table').find('tbody > tr')
               .each(function(){
                   var idr = this.id;
                   if(idr == fila){
                       $(this).remove();
                   }
               });
       actualizarTotalCotizacion();
       reindexRows();
     });
   }
   
   
   
   
   function reindexRows(){
	   $('#services_table tbody tr:even > td(0)').each(function(i) {
	   alert("rein");
	       $(this).html(i);
	   });
   }
   
</script>


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