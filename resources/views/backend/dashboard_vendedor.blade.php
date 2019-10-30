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
<div class="box box-success">
   <div class="box-header with-border">
      <!--<h3 class="box-title">Bienvenido {{ $logged_in_user->name }}</h3>-->
      <div class="box-tools pull-right">
         <!--<button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>-->
      </div>
      <!-- /.box tools -->
   </div>
   <!-- /.box-header -->
   <div class="">
      <div class="col-md-3 col-sm-6 col-xs-12">
         <div class="info-box">
            <span class="info-box-icon bg-aqua"><i class="fa fa-bullhorn"></i></span>
            <div class="info-box-content">
               <span class="info-box-text">Visitas sin cotizar</span>
               <span class="info-box-number"><small>{{$visitasCount}}</small></span>
            </div>
            <!-- /.info-box-content -->
         </div>
         <!-- /.info-box -->
      </div>
      <!-- /.col -->
      <div class="col-md-3 col-sm-6 col-xs-12">
         <div class="info-box">
            <span class="info-box-icon bg-yellow"><i class="fa fa-cart-arrow-down"></i></span>
            <div class="info-box-content">
               <span class="info-box-text">COTIZACIONES abiertas</span>
               <span class="info-box-number">{{$cotizaciones}}</span>
            </div>
            <!-- /.info-box-content -->
         </div>
         <!-- /.info-box -->
      </div>
      <!-- /.col -->
      <!-- fix for small devices only -->
      <div class="clearfix visible-sm-block"></div>
      <div class="col-md-3 col-sm-6 col-xs-12">
         <div class="info-box">
            <span class="info-box-icon bg-green"><i class="fa fa-dollar"></i></span>
            <div class="info-box-content">
               <span class="info-box-text">Ventas abiertas</span>
               <span class="info-box-number">{{$ventasCount}}</span>
            </div>
            <!-- /.info-box-content -->
         </div>
         <!-- /.info-box -->
      </div>
      <!-- /.col -->
      <div class="col-md-3 col-sm-6 col-xs-12">
         <div class="info-box-">
            <span class="info-box-icon bg-red"><i class="fa fa-file"></i></span>
            <div class="info-box-content">
               <span class="info-box-text">Liquidaciones abiertas</span>
               <span class="info-box-number">{{$liquidaciones}}</span>
            </div>
            <!-- /.info-box-content -->
         </div>
         <!-- /.info-box -->
      </div>
      <!-- /.col -->
   </div>
   <div class="col-md-12 center">
      <div class="col-md-4  text-center">
      </div>
      <div class="col-md-4  text-center">
         <div class="progress-group">
            <span class="progress-text">Meta:</span>
            <span class="progress-number"><b>$ {{$totalutilidad}} /$ 5,000 </b></span>
            <?php $por=(str_replace(",","",$totalutilidad)/5000)*100; ?>
            <div class="progress xl">

               <div class="progress-bar progress-bar-purple" style="width: <?php echo $por."%"; ?>"></div>

            </div>
         </div>
      </div>
      <div class="col-md-4  text-center">
      </div>
   </div>
   <div class="box-body">
      <!--{!! trans('strings.backend.welcome') !!}-->
   </div>
   <!-- /.box-body -->
   <!-- Tabla ultimas visitas -->
   <div class="box box-info">
      <div class="box-header with-border">
         <h3 class="box-title">Visitas sin cotizar</h3>
         <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
         </div>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
         <div class="table-responsive">
            <table id="visitas-table" class="table table-condensed table-hover">
               <thead>
                  <tr>
                     <th>Nro</th>
                     <th>Nombres</th>
                     <th>Apellidos</th>
                     <th>Vendedor</th>
                     <th style="width: 200px;">Motivo</th>
                     <th>F. Creación</th>
                     <th>Acciones</th>
                  </tr>
               </thead>
               <tbody>
                  @php
                  $i=1;
                  @endphp
                  @foreach($visitas as $visita)
                  <tr>
                     <td>
                        {{$i}}
                     </td>
                     <td>
                        {{ $visita->customer['name']}}
                     </td>
                     <td>
                        {{ $visita->customer['last_name']}}
                     </td>
                     <td>
                        {{ $visita->counter['name'] }}
                     </td>
                     <td>
                        {{ $visita->reason}}
                     </td>
                     <td> 
                        {{ $visita->created_at->format('d-m-Y')}}
                     </td>
                     <td>
                        <?php
                           if(is_numeric($visita["quote_id"])){
                           ?>
                        <!--<a href="{{route('admin.operation.quote.edit',$visita->quote_id)}}" type="submit" class="btn btn-info"><i data-toggle="tooltip" data-placement="top" title="ver cotización" class="fa fa-search"></i></a>-->
                        <span class="label label-success">Cotizado</span>
                        <?php  }if(empty($visita["quote_id"])){
                           ?>
                        <a data-toggle="tooltip" data-placement="top" title="Cotizar" href="{{route('admin.operation.quote.create',$visita->visita_id)}}" type="submit" class="btn  btn-info" title="Cotizar"><i  class="fa fa-pencil-square-o"></i></a>
                        <?php
                           }
                           ?>
                     </td>
                  </tr>
                  @php
                  $i++;
                  @endphp
                  @endforeach
               </tbody>
            </table>
         </div>
         <!--table-responsive-->
      </div>
      <!-- /.box-body -->
      <!-- /.box-body -->
      <!-- /.box-footer -->
   </div>
   <!-- tabla ultimas cotizaciones -->
   <div class="box box-warning">
      <div class="box-header with-border">
         <h3 class="box-title">Cotizaciones abiertas</h3>
         <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
         </div>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
         <div class="table-responsive">
            <table id="quotes-table" class="table table-condensed table-hover">
               <thead>
                  <tr>
                     <th>Nro</th>
                     <th style="width: 200px;">Nombres</th>
                     <th style="width: 200px;">Apellidos</th>
                     <th >Nro. de cotización</th>
                     <th>Vendedor</th>
                     <th>T. Cotización</th>
                     <th>F. Creación</th>
                     <th>F. Validez</th>                     
                     <th>Acciones</th>
                  </tr>
               </thead>
               <tbody>
                  @php
                  $i=1;

                  @endphp

                  @foreach($quote as $cotizacion2)
                  <tr>
                     <td style="width: 50px;">
                        {{$i}}
                     </td>
                     <td>
                        {{ $cotizacion2->name}}
                     </td>
                     <td>
                        {{ $cotizacion2->last_name}}
                     </td>
                     <td>
                        {{ $cotizacion2->identifier}}
                     </td>
                     <td>
                        {{$cotizacion2->counter}}
                     </td>

                     <td>$ {{number_format($cotizacion2->total,2)}}
                     </td>
                     <td>
                        {{$cotizacion2->created_at->format('d-m-Y')}}
                     </td>
                     <td>
                        {{Carbon\Carbon::parse($cotizacion2->date_vality)->format('d-m-Y')}}
                     </td>       
                     <td>
                        <a href="{{route('admin.operation.quote.show',$cotizacion2->id)}}" type="submit" class="btn btn-info" title="Visualizar" data-toggle="tooltip" data-placement="top" title="Visualizar"><i  class="fa fa-search"></i></a>
                        @php
                        if(isset($cotizacion2->test)){
                        @endphp
                        @php } else {
                        @endphp
                        <a data-toggle="tooltip" data-placement="top" title="Modificar"   href="{{route('admin.operation.quote.edit',$cotizacion2->id)}}" type="submit" class="btn btn-info">
                        <i  class="fa fa-pencil"></i>
                        </a>
                        @php
                        }
                        @endphp
                        <a data-toggle="tooltip" data-placement="top" title="Imprimir" href="{{route('admin.operation.quote.crearpdf',$cotizacion2->id)}}" target="_blank" type="submit" class="btn btn-info">
                        <i    class="fa fa-print"></i>
                        </a>
                        <?php
                           if(isset($cotizacion2->test)){
                           ?>
      
                        <?php }else{
                           ?>
                        <a data-toggle="tooltip" data-placement="top" title="Generar venta" href="{{route('admin.operation.sale.create',$cotizacion2->id)}}" type="submit" class="btn btn-info">
                        <i   class="fa fa-id-card"></i>
                        </a>
                        <?php
                           }
                           ?>
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
   <!-- /.box -->
   <!-- /.box -->

   <!-- Tabla ultimas ventas -->
   <div class="box box-success">
      <div class="box-header with-border">
         <h3 class="box-title">Ventas abiertas</h3>
         <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
         </div>
      </div>
      <!-- /.box-header -->
    <div class="box-body">
      <div class="table-responsive">
        <table id="sales-table" class="table table-condensed table-hover">
          <thead>
            <tr>
              <th>Nro</th>
              <th>Nombres</th>
              <th>Apellidos</th>
              <th>Nro. de venta</th>
              <th>Nro. de cotización</th>
              <th>Estado</th>
              <th>Liquidado</th>
              <th>T. Venta</th>               
              <th>F. Creación</th>
              <th>Acciones</th>
            </tr>
          </thead>
          <tbody>
            @php
              $i=1;
            @endphp
              @foreach($ventas as $venta)
                <tr>
                  <td>
                    {{$i}}
                  </td>
                  <td>
                    {{ $venta->customer['name']}}
                  </td>
                  <td>
                    {{ $venta->customer['last_name']}}
                  </td>
                  <td>
                    {{ $venta->identifier}}
                  </td>
                  <td>
                    {{ $venta->quote_identifier}}
                  </td>
                  


                  <td>
                        @if($venta['monto']===$venta['total'])
                          <span class="label label-danger">Pagado</span>
                        @else
                          <span class="label label-success">Abierta</span>
                        @endif
                  </td>
                  <td>

                        @if($venta['abierta']==0)
                          <span class="label label-primary">Si</span>                          
                        @else
                          <span class="label label-info">No</span>
                        @endif

                  </td>

                  <td>
                    $ {{ number_format($venta->total ,2)}}
                  </td>

                  <td>
                    {{ $venta->created_at->format('d-m-Y')}}
                  </td>



                  <td>
                      @php
                        if( ($venta['monto']!=$venta['total'])  && ($venta['abierta']==1)){
                      @endphp
                          <a data-toggle="tooltip" data-placement="top" title="Visualizar" href="{{route('admin.operation.sale.show',$venta->id)}}" class="btn btn-info">
                              <i class="fa fa-search" ></i>
                          </a>

                          <!--<a href="">
                              <i class="fa fa-handshake-o" aria-hidden="true"></i>
                          </a>-->
                      @php
                      }else if($venta['monto']==$venta['total'] && $venta['abierta']==2){


                      @endphp
                          <a data-toggle="tooltip" data-placement="top" title="Visualizar"  href="{{route('admin.operation.sale.show',$venta->id)}}" class="btn btn-info">
                              <i class="fa fa-search" ></i>
                          </a>
                          @role('Counter')
                          <a  data-toggle="tooltip" data-placement="top" title="Generar liquidación" href="{{route('admin.operation.liquidation.edit',$venta->id)}}" class="btn btn-info">
                              <i class="fa fa-handshake-o" ></i>
                          </a>
                          @endauth
  
                      @php
                        }else{
                        @endphp 
                       <a data-toggle="tooltip" data-placement="top" title="Visualizar" href="{{route('admin.operation.sale.show',$venta->id)}}" class="btn btn-info">
                              <i class="fa fa-search" ></i>
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
   </div>


       <div class="box box-danger">
        <div class="box-header with-border">
              <h3 class="box-title">Liquidaciones pendientes</h3>
         <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
         </div>
          </div>


        <div class="box-body">
            <table class="table table-striped table_liquidation">
                <thead>
                  <tr>
                      <th>Nro</th>
                                            <th>Nombres</th>

               <th>Apellidos</th>    
               
               <th style="width: 130px;">Nro. de venta</th>                          
                      <th style="width: 130px;">Nro. de liquidación</th>
                      

                      <th>Monto</th>
                      <th>F. Creación</th>
                      <th>F. Actualización</th>
                      <th style="width: 190px;">Acciones</th>
                  </tr>
                </thead>
              <tbody>
                  @php
                  $i=1;
                  @endphp
                  @foreach($liquidations as $liquidation)                    
                        <tr>
                            <td>
                                {{$i}}
                            </td>
                            <td>
                                {{$liquidation->sale->customer['name']}} 
                            </td>
                             <td>
                               {{$liquidation->sale->customer['last_name']}}
                            </td> 
                            <td>
                                {{$liquidation->sale_identifier}}
                            </td>

                            <td>
                                {{$liquidation->identifier}}
                            </td>





                            <td>
                                {{number_format($liquidation->p_venta_total,2)}}
                            </td>

                            <td>
                                {{Carbon\Carbon::parse($liquidation->created_at )->format('d-m-Y')}}
                            </td>
                            <td>
                               {{Carbon\Carbon::parse($liquidation->updated_at )->format('d-m-Y')}} 
                            </td>

                            <td>
                                <a data-toggle="tooltip" data-placement="top" title="Ver Liquidación" href="{{route('admin.liquidation.liquidation.showliquidacion', $liquidation->id)}}" class="btn btn-info">
                                  <i class="fa fa-search" aria-hidden="true"></i>
                                </a>
                                @role('Counter')
                                @if($liquidation->active == 0)

                                
                                
                                @else

                                <div class="form-group">
                                   <a  data-toggle="tooltip" data-placement="top" title="Editar" href="{{route('admin.operation.liquidation.editar',$liquidation->id)}}" type="submit" class="btn btn-info">
                                   <i class="fa fa-pencil" ></i>
                                   </a>
                                </div>

                                @endif
                      
                                @endauth
                                <!--<a href="{{route('admin.operation.liquidation.edit', $liquidation->id)}}" class="btn btn-sm btn-info">
                                  <i class="fa fa-pencil" aria-hidden="true"></i>
                                </a>-->
                            </td>

                        </tr>
                    
                      
                  @php
                  $i++;
                  @endphp
                  @endforeach   
              </tbody>
            </table>
        </div>
        
        <div class="box-footer">
          
        </div>
    </div>

</div>
<!-- /.col -->
</div><!--box box-success-->
@endsection
@section('after-scripts')
{{ Html::script("js/backend/plugin/datatables/jquery.dataTables.min.js") }}
{{ Html::script("js/backend/plugin/datatables/dataTables.bootstrap.min.js") }}
<script>
   $(document).ready(function() {
     $('#visitas-table').DataTable({
       "lengthMenu": [ 3, 6,9,],
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
     $('#quotes-table').DataTable({
       "lengthMenu": [ 3, 6,9,],
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
       "lengthMenu": [ 3, 6,9,],
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

          "lengthMenu": [ 3, 6,9,],
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