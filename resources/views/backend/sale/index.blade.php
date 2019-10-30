@extends('backend.layouts.app')
@section ('title', 'Lista de ventas')
@section('after-styles')
    {{ Html::style("css/backend/plugin/datatables/dataTables.bootstrap.min.css")}}
    {{ Html::style("css/font-awesome.min.css") }}
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
        <h1>Gestión de ventas
        <small>Panel de ventas</small>
        </h1>
    </h1>
@endsection
@section('content')
  <div class="box box-success">
    <div class="box-header with-border">     
      <h3 class="box-title">Gestión de ventas</h3>
        <div class="box-tools pull-right">
          @include('backend.access.includes.partials.sale-header-buttons')
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
              @foreach($sales as $venta)
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
                        @if($venta['id']==$venta['liquidacion'])
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
                        if($venta['monto']==$venta['total'] && $venta['abierta']==0){
                      @endphp
                          <a  data-toggle="tooltip" data-placement="top" title="Visualizar" href="{{route('admin.operation.sale.show',$venta->id)}}" class="btn btn-info">
                              <i class="fa fa-search"></i>
                          </a>
                      @php
                      }else if($venta['monto']==$venta['total'] && $venta['abierta']==2 ){
                      @endphp
                          <a data-toggle="tooltip" data-placement="top" title="Visualizar"  href="{{route('admin.operation.sale.show',$venta->id)}}" class="btn btn-info">
                              <i class="fa fa-search" ></i>
                          </a>
                          @role('Counter')
                          <a data-toggle="tooltip" data-placement="top" title="Generar liquidación" href="{{route('admin.operation.liquidation.edit',$venta->id)}}" class="btn btn-info">
                              <i class="fa fa-handshake-o" ></i>
                          </a>
                          @endauth
                      @php
                        }else{
                      @endphp
                        <a  data-toggle="tooltip" data-placement="top" title="Visualizar" href="{{route('admin.operation.sale.show',$venta->id)}}" class="btn btn-info">
                              <i class="fa fa-search"></i>
                          </a>
                      @php
                        }
                      @endphp
                      @permission('desactivarventas')
                      <div class="form-group">
                        {{ Form::open(['method' => 'DELETE', 'route' => ['admin.operation.sale.desactivated', $venta->id],'class'=>'eliminar']) }}
                          <button type="submit" data-toggle="tooltip" data-placement="top" title="Eliminar" class="btn btn-info" ><i class="fa fa-trash" ></i></button>
                        {{Form::close() }}
                      </div>
                      @endauth
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
      $( ".eliminar" ).submit(function( event ){
        var form = this;
        event.preventDefault();
        var tabla = $( "#sales-table tbody tr" ).length;
          swal({
            title: "¿Desea eliminar esta venta?",
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
 
 <!--<script type="text/javascript">
    $(document).ready(function() {
        $('#sales-table').DataTable({
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
