@extends('backend.layouts.app')

@section ('title', 'Listar liquidaciones')

@section('after-styles')
    {{ Html::style("css/backend/plugin/datatables/dataTables.bootstrap.min.css")}}
    {{ Html::style("css/font-awesome.min.css") }}
    {{ Html::style("css/bootstrap.css") }}
@endsection

@section('page-header')
    <h1>
        <h1>Gestión de liquidaciones
        <small>Panel de liquidaciones</small>
        </h1>
    </h1>
@endsection
@section('content')
  <div class="box box-success">
    <div class="box-header with-border">
      <h3 class="box-title">Gestión de liquidaciones</h3>
        <div class="box-tools pull-right">
          @include('backend.access.includes.partials.liquidation-header-buttons')
        </div>
    </div>
    <div class="box-body">
      <table class="table table-striped table_liquidation">
        <thead>
          <tr>
	          <th>#</th>
	          <th style="width: 170px;">Nro Liquidación</th>
            <th style="width: 170px;">Nro Venta</th>
	          <th>Cliente</th>
	          <th>Fecha. Creación</th>
	          <th>Fecha. Modificación</th>
            <th>Acciones</th>
          </tr>
        </thead>
          <tbody>
            @php
              $i=1;
            @endphp

            @foreach($liquidations as $liquidation)
              @php
                if($liquidation['id']==$liquidation['liquidacion']){
              @endphp
                <tr>
                    <td>
                      {{$i}}
                    </td>
                    <td>
                      {{$liquidation->identifier}}
                    </td>
                    <td>
                      {{$liquidation->sale_identifier}}
                    </td>
                    <td>
                      {{$liquidation->sale->customer['name']}} {{$liquidation->sale->customer['last_name']}}
                    </td>
                    <td>
                      {{$liquidation->created_at->format('d-m-Y')}}
                    </td>
                    <td>
                      {{$liquidation->updated_at->format('d-m-Y')}}
                    </td>
                    <td>
                      <a data-toggle="tooltip" data-placement="top" title="Visualizar" href="{{route('admin.liquidation.liquidation.showliquidacion', $liquidation->id)}}" class="btn btn-info">
                        <i class="fa fa-search" aria-hidden="true"></i>
                      </a>

                      @permission('reabrirliquidacion')
                        <div class="form-group">
                          {{ Form::open(['method' => 'DELETE', 'route' =>['admin.liquidation.liquidation.reabrirliquidacion', $liquidation->id],'class'=>'reabrirliquidacion']) }}
                            <button type="submit" data-toggle="tooltip" data-placement="top" title="Reabrir liquidación" class="btn btn-info"><i class="fa fa-refresh" ></i></button>
                          {{ Form::close() }}
                        </div>
                      @endauth

                      @role('Counter')
                        @if($liquidation->send==1)
                          
                        @else
                          <div class="form-group">
                            <a data-toggle="tooltip" data-placement="top" title="Editar" href="{{route('admin.operation.liquidation.editar',$liquidation->id)}}" type="submit" class="btn btn-info">
                              <i class="fa fa-pencil" ></i>
                            </a>
                          </div>
                        @endif
                        <a data-toggle="tooltip" data-placement="top" title="Imprimir"  href="{{route('admin.operation.liquidation.crearpdfliqui',$liquidation->id)}}" target="_blank" type="submit" class="btn btn-info">
                          <i   class="fa fa-print"></i>
                        </a>
                      @endauth          
                    </td>
                </tr>
              @php
                }
              @endphp    
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
@endsection
@section('after-scripts')
{{ Html::script("js/backend/plugin/datatables/jquery.dataTables.min.js") }}
    {{ Html::script("js/backend/plugin/datatables/dataTables.bootstrap.min.js") }}
<script>
      $(document).ready(function() {
        $('.table_liquidation').DataTable({
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
        $( ".reabrirliquidacion" ).submit(function( event ){
          var form = this;
          event.preventDefault();
            var tabla = $( ".table_liquidation tbody tr" ).length;
            swal({
                title: "¿Desea abrir esta liquidación?",
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
      });
    </script>
@endsection