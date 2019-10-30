@extends('backend.layouts.app')
@section('page-header')
<h1>
   Dashboard
   <small>Panel de rápido</small>
</h1>
@endsection
@section('before-styles')
{{ Html::style("css/backend/plugin/datatables/dataTables.bootstrap.min.css") }}
{{ Html::style("css/bootstrap.css") }}
@endsection
@section('content')

   <div class="box-body">
      <!--{!! trans('strings.backend.welcome') !!}-->
   </div>

  <div class="box box-success">
    <div class="box-header with-border">     
      <h3 class="box-title">Gestión de pagos a proveedores</h3>
         <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
         </div>
    </div>
    <div class="box-body">
      <div class="table-responsive">
        <table id="Proveedor-table" class="table table-condensed table-hover text-center">
          <thead>
            <tr>
              <th>Nro</th>
              <th>Tipo</th>              
              <th width="35px">Servicio</th>
              <th width="35px">Proveedor</th>   
              <th>Telefono</th>
              <th>Email</th>          
              <th>Nro. de liquidación</th>
              <th>Nro. de venta</th>
              <th>Cantidad</th>              
              <th>Monto</th>
              <th>F. limite de pago</th>
              <th>Alerta</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            @php
              $i=1;
            @endphp
              @foreach($liquidations as $liquidation)

              @php
               if($liquidation->parent_id!=null){
                $color="";
               }else{
                 $color="#E6E6E6";
               }
              @endphp


                <tr  bgcolor="{{$color}}">
                  <td>
                    {{$i}}
                  </td>
              @php
               if($liquidation->parent_id!=null){
                  @endphp 
                  <td>
                     <span class="label label-info">Sub Servicio</span>
                  </td>
              @php
               }else{
               @endphp 
                 <td>
                     <span class="label label-primary">Servicio</span>
                  </td>
                  @php
               }
              @endphp  

                  <td>
                    {{ $liquidation->name}}
                  </td>  
                  <td>
                    {{ $liquidation->proveedor}}
                  </td>
                  <td>
                    {{ $liquidation->telefono}}
                  </td>  
                  <td>
                    {{ $liquidation->email}}
                  </td> 



                  <td>
                    {{ $liquidation->identifier}}
                  </td>

                  <td>
                    {{ $liquidation->venta}}
                  </td>
                  <td>
                    {{ $liquidation->cantidad}}
                  </td> 

                  <td>
                    $ {{ number_format($liquidation->costo,2)}}
                  </td>

                  <td>
                    {{ Carbon\Carbon::parse($liquidation->fecha_pago)->format('d-m-Y')}}
                  </td>

                  <td>
                      @php
                        if((Carbon\Carbon::parse($liquidation->fecha_pago)->format('d-m-Y')) == date('d-m-Y') ){
                      @endphp
                          <span class="label label-danger">Hoy</span>
                      @php
                      }else if((Carbon\Carbon::parse($liquidation->fecha_pago)->format('d-m-Y')) < date('d-m-Y') ){
                      @endphp
                          <span class="label label-warning">Día-Anterior</span>
                      @php
                        }else{
                      @endphp
                        <span class="label label-success">Día-Futuro</span>
                      @php
                        }
                      @endphp
    </td>
  <td>
                   <a data-toggle="tooltip" data-placement="top" title="Visualizar" href="{{route('admin.liquidation.liquidation.showliquidacion', $liquidation->liquidation_id)}}" class="btn btn-info">
                                  <i class="fa fa-search" aria-hidden="true"></i>
                                </a>
                  </td>

                </tr>
                @php
                  $i++;
                @endphp
              @endforeach
          </tbody>
        </table>
      </div>
    </div>
  </div>



   <!-- tabla ultimas cotizaciones -->
   <div class="box box-warning">
      <div class="box-header with-border">
         <h3 class="box-title">Recibos abiertos</h3>
         <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
         </div>
      </div>
    <div class="box-body">
      <div class="table-responsive">
        <table id="sales-table" class="table table-condensed table-hover">
          <thead>
            <tr>
              <th>Nro</th>
              <th>Nombres</th>
              <th>Apellidos</th>
              <th>Vendedor</th>
              <th>Nro. de recibo</th>
              <th>Nro. de venta</th>
              <th>Total</th>
              <th>F. Creación</th>
              <th>Estado</th>
              <th>Acciones</th>
            </tr>
          </thead>
          <tbody>
            @php
              $i=1;
            @endphp
              @foreach($receipts as $receipt)
                <tr>
                  <td>
                    {{$i}}
                  </td>
                  <td>
                    {{ $receipt->sale->customer['name']}}
                  </td>  
                  <td>
                    {{ $receipt->sale->customer['last_name']}}
                  </td>
                  <td>
                    {{ $receipt->namecounter}}
                  </td>
                  <td>
                    {{ $receipt->identifier}}
                  </td>
                  <td>
                    {{ $receipt->sale_identifier}}
                  </td>
                  <td>
                    $ {{ number_format($receipt->monto_total,2)}}
                  </td>
                  <td>
                    {{ $receipt->created_at->format('d-m-Y')}}
                  </td>
                  <td>
                      @php
                        if($receipt->monto_total==$receipt["monto"]){
                      @endphp
                          <span class="label label-danger">Pagado</span>
                      @php
                      }else{
                      @endphp
                          <span class="label label-success">Abierto</span>
                      @php
                        }
                      @endphp
                  </td>
                  <td>
                      <a data-toggle="tooltip" data-placement="top" title="Visualizar" href="{{route('admin.box.receipt.show', $receipt->id)}}" class="btn btn-sm btn-info">
                          <i class="fa fa-search fa-lg" ></i>
                      </a>
                      <a data-toggle="tooltip" data-placement="top" title="Imprimir" href="{{route('admin.box.receipt.crearpdf', $receipt->id)}}" class="btn btn-sm btn-info" target="_blank">
                          <i class="fa fa-print fa-lg" ></i>
                      </a>
                      <a data-toggle="tooltip" data-placement="top" title="Editar" href="{{route('admin.box.receipt.edit', $receipt->id)}}" class="btn btn-sm btn-info">
                          <i class="fa fa-pencil fa-lg" ></i>
                      </a>
                      @php
                        if($receipt->monto_total==$receipt["monto"]){
                      @endphp   
                      @php
                      }else{
                      @endphp
                          <a data-toggle="tooltip" data-placement="top" title="Añadir Pago" href="{{route('admin.operation.deposit.addpayments',$receipt->id)}}" class="btn btn-sm btn-info">
                            <i class="fa fa-plus" ></i>
                          </a>
                      @php
                        }
                      @endphp 
                  </td>


                </tr>
                @php
                  $i++;
                @endphp
              @endforeach
          </tbody>
        </table>
      </div>
    </div>
      <!-- /.box-body -->
      <!-- /.box-footer -->
   </div>





















@endsection
@section('after-scripts')
{{ Html::script("js/backend/plugin/datatables/jquery.dataTables.min.js") }}
{{ Html::script("js/backend/plugin/datatables/dataTables.bootstrap.min.js") }}
<script>
   $(document).ready(function() {
     $('#Proveedor-table').DataTable({
     "lengthMenu": [3,6,9,15,20,30,40,50,],
       "language":{
                 "sProcessing":     "Procesando...",
                 "sLengthMenu":     "Mostrar _MENU_ registros",
                 "sZeroRecords":    "No se encontraron resultados",
                 "sEmptyTable":     "Ningún dato disponible en esta tabla",
                 "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                 "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
                 "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
                 "sInfoPostFix":    "",
                 "sSearch":         "Buscar:",
                 "sUrl":            "",
                 "sInfoThousands":  ",",
                 "sLoadingRecords": "Cargando...",
                 "oPaginate": {
                     "sFirst":    "Primero",
                     "sLast":     "Último",
                     "sNext":     "Siguiente",
                     "sPrevious": "Anterior"
                 },
                 "oAria": {
                     "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
                     "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                 }
       }
     });
   });
   
   
   



   $(document).ready(function() {
     $('#sales-table').DataTable({
           "lengthMenu": [3,6,9,15,20,30,40,50,],
       "language":{
                 "sProcessing":     "Procesando...",
                 "sLengthMenu":     "Mostrar _MENU_ registros",
                 "sZeroRecords":    "No se encontraron resultados",
                 "sEmptyTable":     "Ningún dato disponible en esta tabla",
                 "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                 "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
                 "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
                 "sInfoPostFix":    "",
                 "sSearch":         "Buscar:",
                 "sUrl":            "",
                 "sInfoThousands":  ",",
                 "sLoadingRecords": "Cargando...",
                 "oPaginate": {
                     "sFirst":    "Primero",
                     "sLast":     "Último",
                     "sNext":     "Siguiente",
                     "sPrevious": "Anterior"
                 },
                 "oAria": {
                     "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
                     "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                 }
       }
     });
   });


         $(document).ready(function() {
        $('.table_liquidation').DataTable({

          "lengthMenu": [3,6,9,15,20,30,40,50,],
          "language":{
                    "sProcessing":     "Procesando...",
                    "sLengthMenu":     "Mostrar _MENU_ registros",
                    "sZeroRecords":    "No se encontraron resultados",
                    "sEmptyTable":     "Ningún dato disponible en esta tabla",
                    "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                    "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
                    "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
                    "sInfoPostFix":    "",
                    "sSearch":         "Buscar:",
                    "sUrl":            "",
                    "sInfoThousands":  ",",
                    "sLoadingRecords": "Cargando...",
                    "oPaginate": {
                        "sFirst":    "Primero",
                        "sLast":     "Último",
                        "sNext":     "Siguiente",
                        "sPrevious": "Anterior"
                    },
                    "oAria": {
                        "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
                        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                    }
          }
        });
      });
</script>


@endsection