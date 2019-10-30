@extends('backend.layouts.app')
@section ('title', 'Lista de cotizaciones')
  
@section('after-styles')
    {{ Html::style("css/backend/plugin/datatables/dataTables.bootstrap.min.css") }}
    {{ Html::style("css/bootstrap.css") }}
    <style type="text/css">
      .box-body form.
      {
        float: left;
        width: 25px;
      }
    </style>
@endsection

@section('page-header')
    <h1>
        Gestión de cotizaciones
        <small>Panel de cotizaciones</small>
    </h1>
@endsection

@section('content')
  <div class="box box-success">
    <div class="box-header with-border">     
      <h3 class="box-title">Gestión de cotizaciones</h3>
        <div class="box-tools pull-right">
            @include('backend.access.includes.partials.quote-header-buttons')
        </div>
    </div>
    <div class="box-body">
      <div class="table-responsive">
        <table id="quote-table" class="table table-condensed table-hover">
          <thead>
            <tr>
              <th>Nro</th>
              <th style="width: 200px;">Nombres</th>
              <th style="width: 200px;">Apellidos</th>
              <th >Nro. de cotizacion</th>
              <th>Vendedor</th>
              <th>F. Creación</th>
              <th>F. Validez</th>
              <th>T. Cotización</th>

              <th>Acciones</th>
            </tr>
          </thead>
          <tbody>
            @php
              $i=1;
            @endphp
              @foreach($quote as $cotizacion)
                <tr>
                  <td style="width: 50px;">
                    {{$i}}
                  </td>
                  <td>
                    {{ $cotizacion->customer['name']}}
                  </td>  
                  <td>
                    {{ $cotizacion->customer['last_name']}}
                  </td>
                  <td>
                    {{ $cotizacion->identifier}}
                  </td>
                  <td>
                    {{$cotizacion->counter}}
                  </td>

                  <td>
                    {{$cotizacion->created_at->format('d-m-Y')}}
                  </td>
                  <td>
                    {{Carbon\Carbon::parse($cotizacion->date_vality)->format('d-m-Y')}}
                  </td>

                  <td>
                    $
                    {{number_format($cotizacion->total,2)}}
                  </td>
                  <td>
                    <a data-toggle="tooltip" data-placement="top" title="visualizar" href="{{route('admin.operation.quote.show',$cotizacion->id)}}" type="submit" class="btn btn-info"><i  class="fa fa-search"></i></a>

                    @php
                      if(isset($cotizacion["test"])){
                    @endphp
                                                   
                    @php } else {
                    @endphp
                        <a data-toggle="tooltip" data-placement="top" title="Modificar" href="{{route('admin.operation.quote.edit',$cotizacion->id)}}" type="submit" class="btn btn-info">
                        <i   class="fa fa-pencil"></i>
                        </a>
                    @php
                      }
                    @endphp

                    <a data-toggle="tooltip" data-placement="top" title="Imprimir"  href="{{route('admin.operation.quote.crearpdf',$cotizacion->id)}}" target="_blank" type="submit" class="btn btn-info">
                      <i   class="fa fa-print"></i>
                    </a>

                    <?php
                      if(isset($cotizacion["test"])){
                    ?>
                        <!--<a href="{{route('admin.operation.sale.create',$cotizacion->id)}}" type="submit" class="btn btn-sm btn-info disabled">
                          <i  data-toggle="tooltip" data-placement="top" title="Generar venta" class="fa fa-id-card"></i>
                        </a>-->
                    <?php } else {
                    ?>
                        <a data-toggle="tooltip" data-placement="top" title="Generar venta" href="{{route('admin.operation.sale.create',$cotizacion->id)}}" type="submit" class="btn btn-info">
                          <i class="fa fa-id-card"></i>
                        </a>
                    <?php
                      }
                    ?>
                    @permission('eliminarcotizaciones')
                      <div class="form-group">
                        {{ Form::open(['method' => 'DELETE', 'route' => ['admin.operation.quote.eliminar', $cotizacion->id],'class'=>'eliminar']) }}
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
          $('#quote-table').DataTable({
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
            var tabla = $( "#quote-table tbody tr" ).length;
            swal({
                title: "¿Desea eliminar esta cotización?",
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
@endsection
