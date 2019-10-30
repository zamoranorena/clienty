@extends('backend.layouts.app')

@section ('title', 'Editar liquidación')

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
        <small>Editar liquidación</small>
    </h1>
@endsection

@section('content')
  {{ Form::open(['route' => ['admin.operation.liquidation.update', $id_liquidation],'class' => 'form-horizontal formulariocrear', 'role' => 'form', 'method' => 'PATCH']) }}
    {{ Form::hidden('created_user_id', access()->user()->id) }}
    {{ Form::hidden('customer_id', $customer_id) }}
    <div class="box box-success">
      <div class="box-header with-border">
        <h3 class="box-title">Editar liquidación</h3>
          <div class="box-tools pull-right">
              @include('backend.access.includes.partials.liquidation-header-buttons')
          </div><!--box-tools pull-right-->   
      </div><!-- /.box-header -->
      <div class="box-body">
        <div class="row">
  <div class="col-xs-3 col-md-2"></div>
        <div class="col-xs-3 col-md-8">         
          <table class=" table table-bordered table-responsive">
            <tbody><tr>
              <th class="text-center"> <label class="control-label">Cliente</label></th>
              <!--<th class="text-center"> <label class=" control-label">Motivo de visita</label></th>-->
              <th class="text-center"> <label class=" control-label">Nro de venta</label></th>
              <th class="text-center"> <label class=" control-label">Nro liquidación</label></th>
              <th class="text-center"> <label class=" control-label">Vendedor</label></th>
            </tr>
          </tbody><tbody>
            <tr>
              <td> <input class="form-control" readonly="" name="name" type="text" value="{{$namecustomer}} {{$lastnamecustomer}}"></td>
              <td><input class="form-control" type="text" value="{{$identificador}}" readonly=""></td>
              <td><input class="form-control" type="text" value="{{$identificado_liquidacion}}" readonly=""></td>
              <td><input class="form-control" type="text" value="{{$namecounter}}" readonly=""></td>
            </tr>
          </tbody>
          </table>
        <br>
        <br>

          </div>

  <div class="col-xs-3 col-md-2"></div>
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
        <table class="table table-striped table_liquidation text-center">
          <thead>
            <tr>
              <th width="3%">Nro</th>
              <th>Nombre</th>
              <th>Proveedor</th>
              <th>Cant</th>
              <th>Cost. Unit</th>
              <th width="15%">Cost. Total</th>
              <th width="9%">P. Venta</th>
              <th>Fec. limite pago</th>
              <th>Acciones</th>
            </tr>
          </thead>
            <tbody>
                  @php
                    $i=1;
                  @endphp
                  @foreach($services as $liquidacion)
                    @if($liquidacion->parent_id == null)
                        <tr class="fila{{$i}} filapadre" linea="0">
                          <td>{{$i}}</td>
                          <td>{{$liquidacion->nameservice}}</td>
                          <td>{{$liquidacion->nameprovider}}</td>
                          <td>{{$liquidacion->cantidad}}
                              <input type="hidden" class="form-control cantidad" value="{{$liquidacion->cantidad}}" name="services_liquidacion[{{$i}}][cantidad]">
                          </td>
                          <td style="width: 20%">
                              <div class="input-group col-xs-10">
                                @if($liquidacion->costo == null)
                                  <div class="input-group col-xs-10"><span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true"></i></span><input type="text" class="form-control costo_unitario" onkeypress="return OnlyNumbers(event, this);" name="services_liquidacion[{{$i}}][costo]" value="" onkeyup="carga();" required></div>
                                @elseif($liquidacion->chkPadre != 0)
                                  <div class="input-group col-xs-10"><span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true"></i></span>
                                  <input type="text" class="form-control costo_unitario" onkeypress="return OnlyNumbers(event, this);" name="services_liquidacion[{{$i}}][costo]" value="{{number_format($liquidacion->costo,2)}}" onkeyup="carga();" chkpadre="{{$liquidacion->chkPadre}}" readonly></div>
                                @else
                                  <div class="input-group col-xs-10"><span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true"></i></span>
                                  <input type="text" class="form-control costo_unitario" onkeypress="return OnlyNumbers(event, this);" name="services_liquidacion[{{$i}}][costo]" value="{{number_format($liquidacion->costo,2)}}" onkeyup="carga();" chkpadre="{{$liquidacion->chkPadre}}" ></div>
                                @endif
                              </div>
                              <input type="hidden" name="services_liquidacion[{{$i}}][parent_id]" value="{{$i}}">
                              <input type="hidden" name="services_liquidacion[{{$i}}][id_liquidacion]" value="{{$liquidacion->id_liquidacion}}">
                          </td>
                          <td>
                              <div class="input-group col-xs-10"><span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true"></i></span>
                              <input type="text" name="" class="form-control c_total" value="" readonly></div>
                          </td>
                          <td>$ {{number_format($liquidacion->prec_venta,2)}}
                              <input type="hidden" name="services_liquidacion[{{$i}}][precio_total]" value="{{$liquidacion->prec_venta}}" class="form-control p_venta">
                              <input type="hidden" name="sale_id" value="{{$sale_id}}" class="form-control">
                              <input type="hidden" name="services_liquidacion[{{$i}}][identificador]" value="{{$identificador}}">
                              <input type="hidden" name="services_liquidacion[{{$i}}][service_id]" value="{{$liquidacion->service_id}}" class="form-control">
                              <!--<input type="hidden" class="form-control total_utility" name="services_liquidacion[{{$i}}][total_utility]" value="" id="total_utility">-->
                              <input type="hidden" name="services_liquidacion[{{$i}}][precio]" value="{{$liquidacion->precio}}" class="form-control" id="price">
                              <input type="hidden" name="idliqui" value="{{$liquidacion->idliqui}}" class="form-control">
                              <input type="hidden"  class="boton">
                              <input type="hidden" class="precio_venta" value="{{$liquidacion->precio * $liquidacion->cantidad,2,'.',''}}">
                          </td>
                          <td>
                              <input type="text" class="datepicker" value="{{ Carbon\Carbon::parse($liquidacion->fecha_pago)->format('Y-m-d') }}" id="date{{$i}}" data-date-format="yyyy/mm/dd" name="services_liquidacion[{{$i}}][date]" required/>
                          </td>
                          <td>
                              <button type="button" name="addfile" onclick="agregarFila({{$i}},{{$liquidacion->id_liquidacion}},{{$liquidacion->cantidad}},this); validarSubfilasVacias({{$i}})" class="btn btn-success "><i class="fa fa-plus" aria-hidden="true"></i></button>
                          </td>
                        </tr>
                    @endif                    
                    @php
                    $idsub=1;
                    @endphp
                    @foreach($services as $subfila)
                      @if($liquidacion->id_liquidacion == $subfila->parent_id)
                          <tr class="subfilas{{$i}}">
                          <td><input type="hidden" name="subfilaliquidada[{{$idsub}}][parent_id]" value="{{$i}}">
                          <input type="hidden" name="subfilaliquidada[{{$idsub}}][service_id]" value="{{$subfila->service_id}}"></td>
                          <td>{{$subfila->nameservice}}
                            <input type="hidden" name="subfilaliquidada[{{$idsub}}][nombre_servicio]" value="{{$subfila->nameservice}}">
                          </td>
                          <td>{{$subfila->nameprovider}}</td>
                          <td><!--{{$subfila->cantidad}}-->
                              <input type="text" class="form-control text-center cant" value="{{$subfila->cantidad}}" name="subfilaliquidada[{{$idsub}}][cantidad]" placeholder="Cantidad" onkeyup="validarSumaSubfilas({{$i}},this)">
                          </td>
                          <td style="width: 20%">
                              <div class="input-group col-xs-10">
                                <span class="input-group-addon">$</span>
                                <input type="text" class="form-control cost_unit" onkeypress="return OnlyNumbers(event, this);" onkeyup="validarSumaSubfilas({{$i}},this)" name="subfilaliquidada[{{$idsub}}][costo]" value="{{number_format($subfila->costo,2)}}" placeholder="Costo Unit." onkeyup="carga();" required>
                              </div>
                              <input type="hidden" name="subfilaliquidada[{{$idsub}}][precio]" value="{{$subfila->precio}}">
                              <input type="hidden" name="subfilaliquidada[{{$idsub}}][id_liquidacion]" value="{{$subfila->id_liquidacion}}">
                          </td>
                          <td>
                              <!--<div class="input-group col-xs-10"><span class="input-group-addon">$</i></span><input type="text" value="{{number_format($subfila->precio * $subfila->cantidad,2,'.','')}}" class="form-control p_venta" name="subfilaliquidada[{{$idsub}}][p_venta]" readonly>
                              </div>-->
                          </td>
                          <td>
                            
                          </td>
                          <td>
                              <input type="text" class="datepicker" value="{{ Carbon\Carbon::parse($subfila->fecha_pago)->format('Y-m-d') }}" id="date{{$idsub}}" data-date-format="yyyy/mm/dd" name="subfilaliquidada[{{$idsub}}][date]" required/>
                          </td>
                          <td>
                              <button type="button" class="btn btn-danger btn-md" onclick="$(this).parent().parent().remove();validarSubfilasVacias({{$i}})"><i class="fa fa-trash" aria-hidden="true"></i></button>
                          </td>
                        </tr>
                      @endif
                      @php
                      $idsub++;
                      @endphp
                    @endforeach
                
                  @php
                    $i++;
                  @endphp
                  @endforeach
            </tbody>
            <tfoot></tfoot>
        </table>

    
</br>
<br>

        <div class="row">
          <div class="col-xs-3 col-md-2"></div>
          <div class="col-xs-3 col-md-8">         
                <table class=" table table-bordered table-responsive text-center">
                    <tbody>
                      <tr>
                        <th class="text-center"> <label class="control-label">Total de venta</label></th>
                        <th class="text-center"> <label class=" control-label">Costo total de venta</label></th>
                        <th class="text-center"> <label class=" control-label">Total de utilidad</label></th>
                        <th class="text-center"> <label class=" control-label">Porcentaje de utilidad</label></th>
                        <th class="text-center"> <label class=" control-label">Comisión Bancaria</label></th>
                        <th class="text-center"> <label class=" control-label">Total Abonado</label></th>
                        <input type="hidden" name="total_utility" class="utility_value" value="">
                        <input type="hidden" name="p_venta_total" class="total_value" value="">
                        <input type="hidden" name="costo_total" class="cost_value" value="">
                      </tr>
                    </tbody>

                    <tbody>
                      <tr>
                        <td class="total_value text-center"><label></label></td>
                        <td class="cost_value text-center"><label></label></td>
                        <td class="utility_value text-center"><label></label></td>
                        <td class="porcentaje text-center"><label></label></td>
                        <td>$ {{number_format($comision_bancaria->porcentaje,2,'.','')}}</td>
                        <td>$ {{number_format($comision_bancaria->amount_commission,2,'.','')}}</td>
                      </tr>
                    </tbody>
                  </table>
          </div>
          <div class="col-xs-3 col-md-2"></div>
        </div>


        <div class="row">

        
        </div>
        <input class="input-ficons-3" name="inputficons2" id="archivo" multiple type="file" class="file">
        <br>

        <div class="row ">
      



             <div class="btn-group  pull-right">
            <button type="submit" onclick="botonTypeGuardar()" class="btn btn-success pull-right" value="guardar"><i class="fa fa-credit-card"></i> Cerrar liquidación</button> 

            </div>

 <div class="btn-group btn-group col-md-10 pull-right">
            <button  type="submit" onclick="botonTypeActualizar()" class="btn btn-warning pull-right" ><i class="fa fa-credit-card"></i> Guardar liquidación</button> 
</div>

         
        </div>
      </div>
    </div><!--box-->
{!!Form::close()!!}
@endsection
@section('after-scripts')
  <script src="https://code.jquery.com/jquery-1.10.2.js"></script> 
  {{ Html::script("js/backend/plugin/fileinput/fileinput.js") }}
  {{ Html::script("js/backend/plugin/fileinput/es.js") }}
  {{ Html::script("js/backend/plugin/datepicker/bootstrap-datepicker.js") }}
  <script type="text/javascript">
    var linea=0;
    var inc=0;
    $('.datepicker').datepicker();
    var i=0;
      $(document).ready(function()
      {
        //$('button[type="submit"]').attr('disabled','disabled');
        carga();
      });

      
      function agregarFila(id,id_liquidacion,cantidad,objeto)
      {
        validarSumaSubfilas(id,objeto);

          linea = linea + 1;    
          $('.fila'+id).after('<tr class="subfilas'+id+' padre'+id+' ">\
                <td>\
                </td>\
                <td style="width: 20%">\
                    <input type="text" class="form-control" name="subfilas['+linea+'][nombre_servicio]" value="" placeholder="Nombre" required>\
                    <input type="hidden" name="subfilas['+linea+'][parent_id]" value="'+id_liquidacion+'">\
                    \
                </td>\
                <td style="width: 25%">\
                    <div class="input-group col-xs-10"><span class="input-group-addon"><i class="fa fa-user-o" aria-hidden="true"></i></span><input type="text" class="form-control" name="subfilas['+linea+'][nombre_proveedor]" value="" placeholder="Proveedor" required>\
                </td>\
                <td width="8%">\
                    <input type="text" onkeypress="return OnlyNumbers(event, this);" onKeyUp="validarSumaSubfilas('+id+',this)"  class="form-control text-center cant" name="subfilas['+linea+'][cantidad]"  value="1"  placeholder="Cantidad" required>\
                </td>\
                <td width="5%">\
                    <div class="input-group col-xs-10"><span class="input-group-addon"><i class="fa fa-usd" aria-hidden="true"></i></span><input type="text" onkeypress="return OnlyNumbers(event, this);" onKeyUp="validarSumaSubfilas('+id+',this)"  class="form-control cost_unit" id="cost_unit'+linea+'" name="subfilas['+linea+'][costo_unit]" value=""  placeholder="Costo Unit." required>\
                </td>\
                <td>\
                   \
                </td>\
                <td>\
                   \
                </td>\
                <td>\
                    <input type="text" class="datepicker"  data-date-format="yyyy/mm/dd" placeholder="Fecha" name="subfilas['+linea+'][fecha]" required/>\
                </td>\
                <td>\
                    <button type="button" class="btn btn-danger btn-md" onclick="$(this).parent().parent().remove(); validarSubfilasVacias('+id+')"><i class="fa fa-trash" aria-hidden="true"></i></button>\
                </td>\
            </tr>');
            $('.datepicker').datepicker();
           // validarSumaSubfilas(id);
      }

      function validarSubfilasVacias(id,objeto){
        var subfila = 'subfilas'+id;
        var fila = 'fila'+id;
          if($(".table_liquidation tbody tr."+subfila).length){
            var costo_unitario = parseFloat($( ".table_liquidation tbody tr."+fila).find('.costo_unitario').val());
            $( ".table_liquidation tbody tr."+fila).find('.costo_unitario').attr('readonly', true).addClass("product");
            validarSumaSubfilas(id,objeto);
          } else { 
            $(".table_liquidation tbody tr."+fila).find('.costo_unitario').attr("readonly", false).removeClass("product");
            validarSumaSubfilas(id,objeto); 
          }
      }

      function validarSumaSubfilas(id,objeto){
        /*formatoMiles(
          formatoMilesReverse(*/
        var p_venta = 0 ;
        var cost_unit = 0 ;
        var precio_venta=0;
        precio_venta =parseFloat($( ".table_liquidation tbody tr.fila"+id).find('.precio_venta').val());
        cantidad_precio_venta =parseFloat($( ".table_liquidation tbody tr.fila"+id).find('.cantidad').val());
        var subfila = 'subfilas'+id;
        var fila = 'fila'+id;
        //costo_unitario =parseFloat($( ".table_liquidation tbody tr."+fila).find('.costo_unitario').val());
        $( ".table_liquidation tbody tr."+fila).each(function( event ){
          costo_unitario = parseFloat($( ".table_liquidation tbody tr."+fila).find('.cantidad').val()) * parseFloat(formatoMilesReverse($( ".table_liquidation tbody tr."+fila).find('.costo_unitario').val()));

          
            $( ".table_liquidation tbody tr."+subfila).each(function( event ){
              var pre_aux=formatoMilesReverse($(this).find(".cost_unit").val());
                  pre_aux=parseFloat(pre_aux);
              var costoaux = parseFloat($(this).find(".cant").val()) * pre_aux ;


                if(isNaN(costoaux) || costoaux==null){
                  costoaux=0.00;
                }
                cost_unit = cost_unit + costoaux;
            });
              cost_unit = cost_unit.toFixed(2);
              var costo_set = (cost_unit * cantidad_precio_venta).toFixed(2);
              
              if(costo_set > precio_venta){

                $(objeto).val("");
                carga();
                swal("!El costo debe ser menor al precio venta!");
              }

              $( ".table_liquidation tbody tr.fila"+id).find('.costo_unitario').val(formatoMiles(cost_unit));
              $( ".table_liquidation tbody tr.fila"+id).find('.c_total').val(formatoMiles(costo_set));
              carga();
              //$( ".table_liquidation tbody tr.fila"+id).find('.costo_unitario').empty().attr("value",costo_set);      
        });        
      }


      function botonTypeGuardar()
      {
        $('.boton').attr({ name : 'guardar', value : 'guardar' });
        $( ".formulariocrear" ).submit(function( event ) {
        var form = this;
        event.preventDefault();
          swal({
                  title: "¿Desea cerrar esta liquidación?",
                  type: "warning",
                  showCancelButton: true,
                  confirmButtonColor: '#088A08',
                  confirmButtonText: 'Confirmar',
                  closeOnConfirm: false,
              },
                function(){
                    form.submit();  
                });
        });
      }


      function botonTypeActualizar()
      {
        $('.boton').attr({ name : 'actualizar', value : 'actualizar' });
        $( ".formulariocrear" ).submit(function( event ) {
        var form = this;
        event.preventDefault();
          swal({
                  title: "¿Desea actualizar esta liquidación?",
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
      }    

      function OnlyNumbers(e, field)
      {
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

      function load(){

      }

      function carga()
      {
        var p_venta_total = 0.00;
        var costo_total = 0.00;
        var cantidad;
        inc = inc + 1;
          $(".table_liquidation tbody tr.filapadre").each(function(){
              p_venta = parseFloat($(this).find(".p_venta").val());//Precio de venta
              p_venta_total =  p_venta_total  +  parseFloat($(this).find(".p_venta").val());//Total de venta
              var costoAux = parseFloat(formatoMilesReverse($(this).find(".costo_unitario").val()));//  Costo unitario
              var costoAuxClass = $(this).find(".costo_unitario").attr('class');//
              


                /*if (costoAuxClass.indexOf('product') > -1)
                {
                  var costo  = costoAux;
                } else {*/

                  var costo  = costoAux * parseFloat($(this).find(".cantidad").val());//Costo
                  costo_tot = costo.toFixed(2);
                  $(this).find(".c_total").val(formatoMiles(costo_tot));
                /*}*/

                if(!isNaN(costo)){
                  costo_total   =   costo_total  +  costo;
                }
              
              if(isNaN(costo)){
                $(this).find(".c_total").val("0.00");
              }

              if(costo >= p_venta)
              {
                  $(this).find(".costo_unitario").val("");
                  $(this).find(".c_total").val("");
                  swal("!El costo debe ser menor al precio venta!");
                  return false;
              } else {

              }
            inc++;
          });
          var utilidad = p_venta_total - costo_total;
          var porcentaje_ganancia = utilidad / p_venta_total * 100;
           p_venta_total=p_venta_total.toFixed(2);
          $(".total_value").text('$ '+formatoMiles(p_venta_total));
          $(".total_value").val(formatoMiles(p_venta_total));
          costo_total=costo_total.toFixed(2);
          $(".cost_value").text('$ '+formatoMiles(costo_total));
          $(".cost_value").val(formatoMiles(costo_total));
           utilidad=utilidad.toFixed(2);
          $(".utility_value").text('$ '+formatoMiles(utilidad));
          $(".utility_value").val(formatoMiles(utilidad));
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
      var liquidation_id='{{$id_liquidation}}';
      $(".input-ficons-3").fileinput({
        language: "es",
        uploadUrl: '{{route("admin.operation.liquidation.getarchivos")}}',
        uploadExtraData:{id: id, liquidation_id: liquidation_id,created_user_id:created_user_id},
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
        });
        /*.on('filebatchuploadcomplete', function(event, files, extra) {
        $('button[type="submit"]').attr("disabled", false);
        })*/
        
        function limitarcosto(j){
          $(".table_liquidation tbody tr").each(function() {
              var costo=parseFloat($("#cost"+j).val())*parseFloat($("#cant"+j).val());
              var p_venta=parseFloat($("#p_venta"+j).val());
              if (costo>=p_venta) {
                  swal("!El costo debe ser menor al precio venta!");
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

  </script>
@endsection