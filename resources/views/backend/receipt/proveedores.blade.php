@extends('backend.layouts.app')
@section ('title', 'Lista de pagos a proveedores')
  
@section('after-styles')
    {{ Html::style("css/backend/plugin/datatables/dataTables.bootstrap.min.css") }}
    {{ Html::style("css/bootstrap.css") }}
    <style type="text/css">
      .box-body form{
        float: left;
        width: 25px;
      }
    </style>
@endsection

@section('page-header')
  <h1>
      Pagos a proveedores 
      <small>Pagos por día</small>
  </h1>
@endsection

@section('content')
  <div class="box box-success">
    <div class="box-header with-border">     
      <h3 class="box-title">Gestión de pagos a proveedores</h3>

    </div>
    <div class="box-body">
      <div class="table-responsive">
        <table id="sales-table" class="table table-condensed table-hover text-center">
          <thead>
            <tr>
              <th>Nro</th>
              <th>Fecha limite de pago</th>
               <th>Tipo</th>               
              <th width="35px">Servicio</th>
              <th width="35px">Proveedor</th>     
              <th>Telefono</th>
              <th>Email</th>          
              <th>Cantidad</th>
              <th>Total</th>
              <th>Nro. de liquidación</th>
              <th>Nro. de venta</th>
              <th>Alerta</th>
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
                    {{ Carbon\Carbon::parse($liquidation->fecha_pago)->format('d-m-Y')}}
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
                    {{ $liquidation->cantidad}}
                  </td>                
              @php
               if($liquidation->parent_id!=null){
                  @endphp 
                  <td>
                    $ {{ number_format($liquidation->costo,2)}}
                  </td>
              @php
               }else{
               @endphp 
                 <td>
                    $ {{ number_format($liquidation->costo,2)}}
                  </td>
                  @php
               }
              @endphp   
                  <td>
                    {{ $liquidation->identifier}}
                  </td>

                  <td>
                    {{ $liquidation->venta}}
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
@endsection
@section('after-scripts')
    {{ Html::script("js/backend/plugin/datatables/jquery.dataTables.min.js") }}
    {{ Html::script("js/backend/plugin/datatables/dataTables.bootstrap.min.js") }}
    <script>
      $(document).ready(function() {
        $('#sales-table').DataTable({
            "lengthMenu": [30,40,50,60,70,80,90,100,150,200,300],
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
 
 <!--<script type="text/javascript">
    $(document).ready(function() {
        oTable = $('#sales-table').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": "{{ route('admin.operation.sales.datatable') }}",
            "columns": [
                {data: 'nombre_cliente', name: 'nombre_cliente'},
                {data: 'apellido_cliente', name: 'apellido_cliente'},
                {data: 'tipo_pago', name: 'tipo_pago'},
                {data: 'identificador', name: 'identificador'},
                {data: 'fechacreada', name: 'fechacreada'},
                {data: 'montototal', name: 'montototal'},
                {data: 'montopagado', name: 'montopagado'},

            ]
        });
    });
    </script>-->
@endsection
