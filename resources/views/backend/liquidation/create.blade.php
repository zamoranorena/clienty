@extends('backend.layouts.app')

@section ('title', 'Generar Liquidación')

@section('after-styles')
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet"/>
    {{ Html::style("css/font-awesome.min.css") }}
    {{ Html::style("css/bootstrap.css") }}
    {{ Html::style("css/backend/plugin/fileinput/fileinput.css")}}
    {{ Html::style("css/backend/plugin/datepicker/datepicker.css")}}
@endsection

@section('page-header')
    <h1>
        Gestión de liquidación
        <small>Generar liquidación</small>
    </h1>
@endsection
@role('Counter')

@section('content')
  {{ Form::open(['route' => ['admin.operation.liquidation.updateliquidacion', $liquidation_id],'class' => 'form-horizontal formulariocrear', 'role' => 'form', 'method' => 'PATCH']) }}
    {{ Form::hidden('created_user_id', access()->user()->id) }}
    {{ Form::hidden('customer_id', $customer_id) }}
    <div class="box box-success">
      <div class="box-header with-border">
        <h3 class="box-title">Generar liquidación</h3>
          <div class="box-tools pull-right">
              @include('backend.access.includes.partials.sale-header-buttons')
          </div><!--box-tools pull-right-->   
      </div><!-- /.box-header -->
      <div class="box-body">
        <div class="row">
  <div class="col-xs-3 col-md-3"></div>
  <div class="col-xs-3 col-md-6">         
   <table class=" table table-bordered table-responsive">
            <tbody><tr>
              <th class="text-center"> <label class="control-label">Nombre y Apellidos</label></th>
              <!--<th class="text-center"> <label class=" control-label">Motivo de visita</label></th>-->
              <th class="text-center"> <label class=" control-label">Nro de venta</label></th>
              <th class="text-center"> <label class=" control-label">Vendedor</label></th>
            </tr>
          </tbody><tbody>
            <tr>
              <td> <input class="form-control" readonly="" name="name" type="text" value="{{$namecustomer}} {{$lastnamecustomer}}"></td>
              <td><input class="form-control" type="text" value="{{$identificador}}" readonly=""></td>
              <td><input class="form-control" type="text" value="{{$namecounter}}" readonly=""></td>
            </tr>
          </tbody>
          </table>

          </div>
  <div class="col-xs-3 col-md-3"></div>
</div>
        <!--<div class="panel panel-default">
          <div class="panel-heading">Información de la liquidación</div>
            <div class="panel-body">
                <div class="col-md-4">
                    <p>Nro de venta {{$identificador}} </p>
                </div>
                <div class="col-md-4">
                    <p>Cliente: {{$namecustomer}} {{$lastnamecustomer}}</p>
                </div>
                <div class="col-md-4">
                    <p>Vendedor: {{$namecounter}} </p>
                </div>
            </div>
        </div>-->
        <table class="table table-striped table_liquidation">
          <thead>
            <tr>
              <th>Nro</th>
              <th>Nombre</th>
              <th>Proveedor</th>
              <th>Cantidad</th>
              <th>Costo Unit</th>
              <th>Precio Venta</th>
              <th>Fec. limite pago</th>
            </tr>
          </thead>
            <tbody>
                  @php
                    $i=1;
                  @endphp
                  @foreach($servicios_liquidacion as $liquidacion)
                    @if($liquidacion->parent_id == null)
                    <tr class="fila{{$i}} filapadre">
                        <td>{{$i}}</td>
                        <td>{{$liquidacion->nameservice}}</td>
                        <td>{{$liquidacion->nameprovider}}</td>
                        <td>{{$liquidacion->cantidad}}
                            <input type="hidden" class="form-control cantidad" value="{{$liquidacion->cantidad}}" name="services_liquidacion[{{$i}}][cantidad]">
                        </td>
                        <td style="width: 20%">
                          <div class="input-group col-xs-10">
                            <span class="input-group-addon">$</span>
                            <input type="text" class="form-control costo_unitario" name="services_liquidacion[{{$i}}][costo]" value="{{$liquidacion->costo}}" onkeyup="carga();" onkeypress="return OnlyNumbers(event, this);" required>
                          </div>
                        </td> 
                        <td>$ {{number_format($liquidacion->precio*$liquidacion->cantidad,2,'.','')}}
                          <input type="hidden" name="services_liquidacion[{{$i}}][precio_total]" value="{{$liquidacion->precio*$liquidacion->cantidad}}" class="form-control p_venta">
                          <input type="hidden" name="sale_id" value="{{$liquidacion->sale_id}}" class="form-control saleId">
                          <input type="hidden" name="services_liquidacion[{{$i}}][identificador]" value="{{$identificador}}">
                          <input type="hidden" name="services_liquidacion[{{$i}}][service_id]" value="{{$liquidacion->service_id}}" class="form-control">
                          <input type="hidden" class="form-control total_utility" name="services_liquidacion[{{$i}}][total_utility]" value="" id="total_utility">
                          <input type="hidden" name="services_liquidacion[{{$i}}][precio]" value="{{$liquidacion->precio}}" class="form-control" id="price">
                        </td>
                        <td>
                          <input type="text" class="datepicker" value="{{$liquidacion->fecha_pago}}" id="date{{$i}}" data-date-format="yyyy/mm/dd" name=services_liquidacion[{{$i}}][date] required/>
                        </td>
                        <!--<td>
                            <button type="button" name="addfile" onclick="agregarFila({{$i}},{{$liquidacion->id_liquidacion}});" class="btn btn-success "><i class="fa fa-plus" aria-hidden="true"></i> agregar</button>
                        </td>-->
                    </tr>
                    @endif
                    <!--<tr>
                      <th class="text-center"> Detalle Servicio </th><td colspan="4"><textarea class="form-control" readonly>{{$liquidacion->coments}}</textarea></td>
                    </tr>-->
                  @php
                    $i++;
                  @endphp
                  @endforeach
            </tbody>
        </table>
        <div class="row">
          <!--<div class="col-xs-6">
            <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
              Este modulo permite subir archivos de sustento
            </p>
          </div>-->
          <div class="col-xs-6 pull-right">
            <p class="lead">Detalle de utilidad</p>
            <div class="table-responsive">
              <table class="table">
                <tbody>
                    <tr>
                      <th style="width: 40%">Total de venta</th>
                      <td class="total_value"></td>
                      <input type="hidden" name="p_venta_total" class="total_value" value="">
                    </tr>
                    <tr>
                      <th style="width: 40%">Costo total</th>
                      <td class="cost_value"></td>
                      <input type="hidden" name="costo_total" class="cost_value" value="">
                    </tr>
                    
                    <tr>
                      <th style="width: 40%">Utilidad</th>
                      <td class="utility_value"></td>
                      <input type="hidden" name="total_utility" class="utility_value" value="">
                      <td class="porcentaje"><label></label></td>
                    </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <input class="input-ficons-3" name="inputficons2" id="archivo" multiple type="file" class="file">
        <br>
        <!--<table class=" table table-bordered">
            <tr>
              <th class="text-center"> <label class="control-label">Comentarios/Observaciones/Recomendaciones</label></th>
            </tr>
            <tbody>
                <tr>
                 <td><textarea class="form-control" readonly>{{$liquidacion->coments_general}}</textarea></td>
                </tr>
            </tbody>
          </table>-->
        <div class="row no-print">
          <div class="col-xs-12">
            <button type="submit" class="btn btn-success pull-right" id="enviar"><i class="fa fa-credit-card"></i> Enviar Liquidación
            </button>
          </div>
        </div>
      </div>
    </div><!--box-->
{!!Form::close()!!}
@endsection
@section('after-scripts')
  <!--<script src="https://code.jquery.com/jquery-1.10.2.js"></script>-->
  {{ Html::script("https://code.jquery.com/jquery-1.10.2.js") }}
  {{ Html::script("js/backend/plugin/fileinput/fileinput.js") }}
  {{ Html::script("js/backend/plugin/fileinput/es.js") }}
  {{ Html::script("js/backend/plugin/datepicker/bootstrap-datepicker.js") }}
  <script type="text/javascript">
    $('.datepicker').datepicker();
      $(document).ready(function(){
        //$('button[type="submit"]').attr('disabled','disabled');
        carga();
      });
      var linea=0;

      function validarSumaSubfilas(id){
        var p_venta = 0 ;
        var cost_unit = 0 ;
        var precio_venta=0;
        precio_venta =parseFloat($( ".table_liquidation tbody tr.fila"+id).find('.precio_venta').val());
        costo_unitario =parseFloat($( ".table_liquidation tbody tr.fila"+id).find('.costo_unitario').val());
        $( ".table_liquidation tbody tr.subfilas1").each(function( event ) {
          p_venta = p_venta + parseFloat($(this).find('.p_venta').val());
          cost_unit = cost_unit + parseFloat($(this).find('.cost_unit').val());
          if (p_venta > precio_venta){
              swal("Los submontos deben ser menor al precio de venta");
              $(this).find('.p_venta'+id).val("");
          }
          /*if (cost_unit > p_venta){
              swal("el costo no puede ser mayor al precio de venta");
              $(this).find('.cost_unit').val("");
          }*/
        });
      }


      function carga()
      {
        var p_venta_total=0.00;
        var costo_total=0.00;
        var cantidad;
          $(".table_liquidation tbody tr.filapadre").each(function(){
              p_venta = parseFloat($(this).find(".p_venta").val());
              p_venta_total =  p_venta_total  +  parseFloat($(this).find(".p_venta").val());
              var costoe  = parseFloat($(this).find(".costo_unitario").val()) * parseFloat($(this).find(".cantidad").val()) ;
       
              if(!isNaN(costoe)){
                costo_total   =   costo_total  +  costoe;
              }
              if(costoe >= p_venta){
                swal("El 'costo' debe ser menor al precio venta, intentelo de nuevo...");
                $(this).find(".costo_unitario").val("");
              }
          });
        var utilidad = p_venta_total - costo_total;
        var porcentaje_ganancia = utilidad / p_venta_total * 100;
          $(".total_value").text(p_venta_total.toFixed(2));
          $(".total_value").val(p_venta_total.toFixed(2));

          $(".cost_value").text(costo_total.toFixed(2));
          $(".cost_value").val(costo_total.toFixed(2));

          $(".total_value").text(p_venta_total.toFixed(2));
          $(".utility_value").text(utilidad.toFixed(2));
          $(".utility_value").val(utilidad.toFixed(2));

          $(".porcentaje").text(porcentaje_ganancia.toFixed(2) +"%");
      }




      /*$( ".btn .btn-default" ).click(function() {
        $('button[type="submit"]').removeAttr('disabled');
        alert("desactivado");
      });*/




      /*var cost,cant;
      function calcular(j)
      {
        cost = $("#cost"+j).val();
        cant = $("#cant"+j).val();
        var cost_result = cost*cant;
        $("#cost_result"+j).val(cost_result);
        actualizar();
      }

      function actualizar(){
        var cost_result=0;
        $(".table_liquidation tbody tr").each(function(){
          cost_result= cost_result + parseFloat($(this).find(".resultado").val());
          cost_res=cost_result.toFixed(2);
          $("#cost_value").text("$ "+cost_res);
        });
        var total_result=0;
        $(".table_liquidation tbody tr").each(function(){
          total_result = total_result + (parseFloat($(this).find("#price").val())*parseFloat($(this).find(".canti").val()));
          $("#total_value").text("$ "+total_result+".00");
        });
        var utilidad=total_result-cost_result;
          utilidad=utilidad.toFixed(2);
          $("#utility_value").text("$ "+ utilidad);
          $("#total_utility").val(utilidad);
          var porcentaje_ganancia= utilidad / total_result * 100;
          var porcentaje = porcentaje_ganancia.toFixed(2);
          $('#porcentaje').text(porcentaje+" % ");
      }*/

      var id='{{$identificador}}';
      var created_user_id='{{access()->user()->id}}';
      var liquidation_id='{{$liquidation_id}}';
      $(".input-ficons-3").fileinput({
        language: "es",
        uploadUrl: '{{route("admin.operation.liquidation.getarchivos")}}',
        uploadExtraData:{id: id, liquidation_id: liquidation_id, created_user_id:created_user_id},
        previewFileIcon: '<i class="fa fa-file"></i>',
        overwriteInitial: false,
        dragIcon: false,
        dropZoneEnabled: true,
        // ARCHIVOS SUBIDOS
        initialPreview : [ 
          <?php foreach($files as $file) { ?>
            '<img src = "<?php echo $file->route; ?>" class="kv-preview-data file-preview-image">' ,
          <?php } ?>
        ],
        initialPreviewConfig:[   
            <?php foreach($files as $file) {?>
              {
                caption: '<?php echo $file->name; ?>',
                width: '120px', 
                url: '{{URL::to("admin/operation/deletefile")}}/'+<?php echo $file->id ?>,
                //key: <?php echo $file->id ?>, 
                //extra: {id: liquidation_id}
              },    
            <?php } ?>
             
        ],

        showRemove: false,
        showCaption: true, // ruta
        previewFileIcon: '<i class="fa fa-file"></i>',
        allowedPreviewTypes: false, // set to empty, null or false to disable preview for all types
        previewFileIconSettings:{
          'doc': '<i class="fa fa-file-word-o text-primary"></i>',
          'xls': '<i class="fa fa-file-excel-o text-success"></i>',
          'ppt': '<i class="fa fa-file-powerpoint-o text-danger"></i>',
          'jpg': '<i class="fa fa-file-photo-o text-warning"></i>',
          'pdf': '<i class="fa fa-file-pdf-o text-danger"></i>',
          'zip': '<i class="fa fa-file-archive-o text-muted"></i>',
          'htm': '<i class="fa fa-file-code-o text-info"></i>',
          'txt': '<i class="fa fa-file-text-o text-info"></i>',
          'mov': '<i class="fa fa-file-movie-o text-warning"></i>',
          'mp3': '<i class="fa fa-file-audio-o text-warning"></i>',
        },
        previewFileExtSettings: {
          'doc': function(ext){
              return ext.match(/(doc|docx)$/i);
          },
          'xls': function(ext) {
              return ext.match(/(xls|xlsx)$/i);
          },
          'ppt': function(ext) {
              return ext.match(/(ppt|pptx)$/i);
          },
          'zip': function(ext) {
              return ext.match(/(zip|rar|tar|gzip|gz|7z)$/i);
          },
          'htm': function(ext) {
              return ext.match(/(php|js|css|htm|html)$/i);
          },
          'txt': function(ext) {
              return ext.match(/(txt|ini|md)$/i);
          },
          'mov': function(ext) {
              return ext.match(/(avi|mpg|mkv|mov|mp4|3gp|webm|wmv)$/i);
          },
          'mp3': function(ext) {
              return ext.match(/(mp3|wav)$/i);
          },
        }
        })
        /*.on('filebatchuploadcomplete', function(event, files, extra) {
        $('button[type="submit"]').attr("disabled", false);
        })*/;

        function agregarFila(id,service_id)
      {
          console.log(id_liquidacion);
          linea = linea + 1;    
          $('.fila'+id).after('<tr class="subfilas'+id+' padre'+id+' ">\
                <td>\
                </td>\
                <td>\
                    <input type="text" class="form-control" name="subfilas['+linea+'][nombre_servicio]" value="" placeholder="Nombre" required>\
                    <input type="hidden" name="subfilas['+linea+'][parent_id]" value="'+service_id+'">\
                </td>\
                <td>\
                    <div class="input-group col-xs-10"><span class="input-group-addon"><i class="fa fa-user-o" aria-hidden="true"></i></span><input type="text" class="form-control" name="subfilas['+linea+'][nombre_proveedor]" value="" placeholder="Proveedor" required>\
                </td>\
                <td width="13%">\
                    <div class="input-group col-xs-10"><span class="input-group-addon">$</span><input type="text" onkeypress="return OnlyNumbers(event, this);"  class="form-control" name="subfilas['+linea+'][cantidad]"  value=""  placeholder="Cantidad" required>\
                </td>\
                <td width="5%">\
                    <div class="input-group col-xs-10"><span class="input-group-addon">$</span><input type="text" onkeypress="return OnlyNumbers(event, this);" onKeyUp="validarSumaSubfilas('+id+')"  class="form-control cost_unit" name="subfilas['+linea+'][costo_unit]" value=""  placeholder="Costo Unit." required>\
                </td>\
                <td>\
                    <div class="input-group col-xs-10"><span class="input-group-addon">$</span><input type="text" class="form-control p_venta pventa'+linea+'" onkeypress="return OnlyNumbers(event, this)" onKeyUp="validarSumaSubfilas('+id+')" name="subfilas['+linea+'][subprecio]" value="0.00" placeholder="P. Venta" required readonly>\
                </td>\
                <td>\
                    <input type="text" class="datepicker"  data-date-format="yyyy/mm/dd" placeholder="Fecha" name="subfilas['+linea+'][fecha]" required/>\
                </td>\
                <td>\
                    <button type="button" class="btn btn-danger btn-md" onclick="$(this).parent().parent().remove();"><i class="fa fa-trash" aria-hidden="true"></i> eliminar</button>\
                </td>\
            </tr>');
            
            $('.datepicker').datepicker();
            validarSumaSubfilas(id);
      }

        $( ".formulariocrear" ).submit(function( event ) {
        var form = this;
        event.preventDefault();
        var tabla = $( ".services_table tbody tr" ).length;
          swal({
                  title: "Estas seguro?",
                  text: "La liquidación será enviada",
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
        
        function limitarcosto(j){
          $(".table_liquidation tbody tr").each(function() {
              var costo=parseFloat($("#cost"+j).val())*parseFloat($("#cant"+j).val());
              var p_venta=parseFloat($("#p_venta"+j).val());
              if (costo>=p_venta) {
                  swal("El costo debe ser menor al precio venta");
                  $('#cost'+j).val("");
              }
          });
        }
        //function format(input)
        //{
        //var num = input.value.replace(/\./g,'');
        //console.log(num);
        //if(!isNaN(num)){
        //num = num.toString().split('').reverse().join('').replace(/(?=\d*\,?)(\d{3})/g,'$1.');
        //num = num.split('').reverse().join('').replace(/^[\.]/,'');
        //input.value = num;
        //}
         
        //else{ alert('Solo se permiten numeros');
        //input.value = input.value.replace(/[^\d\.]*/g,'');
        //}
        //}
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
@endauth