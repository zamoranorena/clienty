@extends('backend.layouts.app')
@section ('title', 'Administración de cotizaciones | Crear Cotización')
@section('after-styles')
{{ Html::style("css/backend/plugin/datatables/dataTables.bootstrap.min.css") }}
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet"/>
@endsection
@section('page-header')
<h1>
   Gestión de Cotizaciones
   <small>Crear Cotización</small>
</h1>
<style>
   .panel-default > .panel-heading {
   color: #151515;
   background-color: #f5f5f5;
   border-color: #ddd;
   }
</style>
@endsection
@section('content')
<div class="box box-success">
<div class="box-header width-border">
   <div class="box-tools pull-right">
      @include('backend.access.includes.partials.quote-header-buttons')
   </div>
</div>
<div class="box-body">
{{ Form::model($visits, ['route' => ['admin.operation.quote.store', $visits], 'class' => 'form-horizontal formulariocrear ', 'role' => 'form', 'method' => 'post']) }}
{{ Form::hidden('created_user_id', access()->user()->id) }}
<input type="hidden" name="user_id" value="{{access()->user()->id }}">
<input type="hidden" name="customer_id" value="{{$visits->customer['id']}}">
<input type="hidden" name="visit_id" value="{{$visits->id}}">
<div class="box-body text-center ">
<div class="container ">
   <input type="hidden" name="user_id" class="form-control" value="{{access()->user()->id }}">
   {{ Form::hidden('created_user_id', access()->user()->id) }}
   <div class="panel panel-default">
      <div class="panel-heading"><b>DATOS DEL CLIENTE</b></div>
      <div class="panel-body ">
         <div class="form-group">
            <div class="col-lg-3">
               {!! Form::label('name', 'Nombres', ['class' => ' text-center  control-label']) !!}
               <div class="">
                  {!!Form::text('name',$visits->customer['name'],['class'=>' form-control','placeholder'=>'Nombres','required'])!!}
               </div>
            </div>
            <div class="col-lg-3">
               {!! Form::label('last_name', 'Apellidos', ['class' => ' control-label']) !!}
               <div class="">
                  {!!Form::text('last_name',$visits->customer['last_name'],['class'=>'form-control','placeholder'=>'Apellidos','required'])!!}
               </div>
            </div>
            <div class="col-lg-3">
               {!! Form::label('email', 'Email  ', ['class' => ' control-label']) !!}
               <input type="checkbox" name="email" class="email" value="No Aplica" class="email" >
               <div class="">
                  {!!Form::email('email',null,['class'=>'form-control','placeholder'=>'Email','required','id'=>'email','enabled'])!!}
               </div>
            </div>
            <div class="col-lg-3">
               {!! Form::label('telefono', 'Teléfono', ['class' => ' control-label']) !!}
               <input type="checkbox" name="telefono" value="No Aplica" class="telefono" >
               <div class="">
                  {!!Form::tel('telefono',null,['class'=>'form-control','placeholder'=>'Telefono','required','id'=>'telefono'])!!}
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="panel panel-default">
      <div class="panel-heading"><b>COTIZACIÓN</b> </div>
      <div class="panel-body ">
         <div class="form-group">
            <label class="col-lg-1 control-label">Servicios</label>
            <div class="col-lg-5">
               <select name="servicios" id="seleccion" class="js-example-basic-single" style="width: 100%">
                  <option value="" selected="selected" >--Seleccione un servicio--</option>
                  <option value="0" style="color:blue">---Crear nuevo servicio---</option>
                  @foreach($service as $services)
                  <option value="{{$services->id}}" id="nameservice" >{{$services->name}}</option>
                  @endforeach
               </select>
            </div>
            <label class=" col-lg-2 control-label">Fecha de validez</label>
            <div class="col-lg-4">
               <input type="date" name="fechavalidez" class="form-control"  min={{$starDate}} max="{{$endDate}}"  required="required" value="<?php echo date("Y-m-d");?>">
            </div>
         </div>
         <table style="width: 100%" class="services_table table " id="services_table">
            <thead class="thead-default">
               <tr class="">
                  <th class="text-center">Nro</th>
                  <th class="text-center">Servicio</th>
                  <th class="text-center">Proveedor</th>
                  <th class="text-center">Precio</th>
                  <th clasvs="text-center">Cantidad</th>
                  <th class="text-center">Precio Total</th>
                  <th class="text-center">Eliminar</th>
               </tr>
            </thead>
            <tfoot>
               <tr>
                  <td class="text-center"></td>
                  <td class="text-center"></td>
                  <td class="text-center"></td>
                  <td class="text-center"></td>
                  <td class="text-center"><b>Total</b></td>
                  <td  width="15%">
                     <div class="input-group col-xs-10 text-center"  size="35" >
                        <span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true"></i></span><input type="text" name="total" id="totales" class="form-control" value="0.00" readonly>
                  </td>
                  <td class="text-center"></td>
               </tr>
            </tfoot>
            <tbody>
            </tbody>
         </table>
         <table class=" table table-bordered">
         <tr>
         <th class="text-center"> <label class="control-label">Comentarios/Observaciones/Recomendaciones</label></th>
         </tr>
         <tbody>
         <tr>
         <td><textarea class="form-control" name="coments" id="coments"></textarea></td>
         </tr>
         </tbody>
         </table>
         </div>
      </div>
      <div class="box box-info">
         <div class="box-body">
            <div class="pull-left">
               {{ link_to_route('admin.operation.quote.index', trans('Cancelar'), [], ['class' => 'btn btn-danger ']) }}
            </div>
            <div class="pull-right">
               {!!Form::submit('Generar Cotización',['class'=>'btn btn-success'])!!}
            </div>
         </div>
      </div>
      {!!Form::close()!!}
   </div>
</div>
@endsection
@section('after-scripts')
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>

<script type="text/javascript">
   $('.js-example-basic-single').select2({
   
     placeholder: '--Seleccione un servicio--',
      theme: "classic" 
   
   
   });
   
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
   
</script>
<script type="text/javascript">
   var i=0;
   var user_id="{{access()->user()->id}}";
   $('select[name="servicios"]').on('select2:select', function (event){
     $(this).val(null).trigger("change");
       console.log(event.params.data.id);      
       i = i + 1;
       if (event.params.data.id=="0"){
         $('.services_table tbody').append(
           '<tr id="'+i+'">\
             <td>'+i+'</td>\
             <td><input type="hidden" value='+event.params.data.id+' name="services['+i+'][id]"><input type="text" class="form-control" name="services['+i+'][name]" value="" placeholder="Servicio" id="servicio'+i+'" required></td>\
             \
            \
             <td><div class="input-group col-xs-10"><span class="input-group-addon"><i class="fa fa-user-o" aria-hidden="true"></i></span><input type="text" class="form-control" name="services['+i+'][provider]" value="" id="provider'+i+'" placeholder="Proveedor" required></td>\
             <td width="15%"><div class="input-group col-xs-10"><span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true"></i></span><input type="text" onkeypress="return OnlyNumbers(event, this);"  onkeyup="multiplicar('+i+')" class="form-control" name="services['+i+'][price]" value="" id="precio'+i+'"  onkeyup="multiplicar('+i+')" placeholder="Precio" required></td>\
             <td width="10%"><input type="text" onkeypress="return OnlyNumbers(event, this);" onkeyup="multiplicar('+i+')" class="form-control" name="services['+i+'][cantidad]" value="" id="cantidad'+i+'" onkeyup="multiplicar('+i+')" placeholder="Cantidad" required></td>\
             <td><div class="input-group col-xs-10"><span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true"></i></span><input type="text" class="form-control resultado" name="services['+i+'][price_total]" value="0" id="resultado'+i+'" readonly></td>\
             <td><button type="button" class="btn btn-danger btn-md" id="eliminarNodo"><i class="fa fa-times" aria-hidden="true"></i></button><input type="hidden" name="services['+i+'][created_user_id]" value="'+user_id+'"</div></td>\
                \
            </tr>\
              <tr id="'+i+'">\
             <th class="text-center"> Detalle Servicio </th> <td colspan="4" ><textarea class="form-control" name="services['+i+'][coments]" id="coments"></textarea></tr>\
           '
         );
         eliminarFila();
       }
       else
       {
         $.ajax({
           url: '{{URL::to("admin/maintenance/getservice")}}/'+event.params.data.id,
           data: {
             format:'json',
             id: event.params.data.id
           },
           dataType:'json',
           success: function(service){  
   
            var precio_formateado=formatoMiles((service.price).toFixed(2));
   
             $('.services_table tbody').append(
               '<tr id='+i+'>\
                 <td>'+i+'</td>\
                 <td><input type="hidden" value='+event.params.data.id+' name="serviexiste['+i+'][service_id]"><input type="text" class="form-control" name="serviexiste['+i+'][service_name]" value="'+service.name+'"  id="nombre'+i+'" placeholder="Servicio" readonly></td>\
                 <td><div class="input-group col-xs-10"><span class="input-group-addon"><i class="fa fa-user-o" aria-hidden="true"></i></span><input type="hidden" class="form-control" name="serviexiste['+i+'][provider_id]" value="'+service.provider_id+'" id="service_provider'+i+'"><input type="text"  class="form-control" value="'+service.proveedor+'" id="provider'+i+'" name="serviexiste['+i+'][provider_name]" placeholder="Proveedor" readonly></td>\
                 <td width="15%"><div class="input-group col-xs-10"><span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true"></i></span><input type="text" class="form-control" name="serviexiste['+i+'][price]" value="'+precio_formateado+'" id="precio'+i+'" onkeypress="return OnlyNumbers(event, this);" onkeyup="multiplicar('+i+')"  placeholder="Precio" required></div></td>\
                 <td width="10%"><input type="text"  class="form-control" name="serviexiste['+i+'][cantidad]" value="1" id="cantidad'+i+'" onkeypress="return OnlyNumbers(event, this);" onkeyup="multiplicar('+i+')" name="cantidad'+i+'" placeholder="Cantidad"></td>\
                 <td><div class="input-group col-xs-10"><span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true"></i></span><input type="text" class="form-control resultado" value="'+(precio_formateado)+'" id="resultado'+i+'" name="serviexiste['+i+'][price_total]" readonly><input type="hidden" name="serviexiste['+i+'][created_user_id]" value="'+user_id+'"</div></td>\
                 <td><button type="button" class="btn btn-danger btn-md" id="eliminarNodo"><i class="fa fa-times" aria-hidden="true"></i></button></td>\
               </tr>\
                <tr id='+i+'>\
             <th class="text-center"> Detalle Servicio </th> <td colspan="4" ><textarea class="form-control" name="serviexiste['+i+'][coments]" id="coments"></textarea></td></tr>\
               '
             );
             
             eliminarFila();
             actualizarTotalCotizacion();
   
           }
         });
       }
   });
   
   
   function multiplicar(j){
       var p,c;
       p=formatoMilesReverse($("#precio"+j).val());
       c=formatoMilesReverse($('#cantidad'+j).val());
       var r = p*c;
       var prec_total = r.toFixed(2);
       $("#resultado"+j).val(formatoMiles(prec_total));
       actualizarTotalCotizacion();
   } 
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
     });
   }
   
   function mostrar(enla) {
   
   obj = document.getElementById('oculto');
   obj.style.visibility = (obj.style.visibility == 'hidden') ? 'visible' : 'hidden';
   enla.innerHTML = (enla.innerHTML == '-') ? '+' : '-';
   }
   
   $( ".formulariocrear" ).submit(function( event ) {
       var form = this;
       event.preventDefault();
       var tabla = $( ".services_table tbody tr" ).length;
         if (tabla == "" ){
           swal({
           title: "! No  puede crear la cotización sin ningún servicio ¡",
           type: "warning",
           html: true
         });
           event.preventDefault();
         }else{
         swal({
                 title: "¿Guardar cotización?",
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
   
</script>
<script>
   function mostrar(enla) {
     obj = document.getElementById('oculto');
     obj.style.visibility = (obj.style.visibility == 'hidden') ? 'visible' : 'hidden';
     enla.innerHTML = (enla.innerHTML == '-') ? '+' : '-';
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