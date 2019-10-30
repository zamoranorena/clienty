@extends('backend.layouts.app')

@section ('title', 'Administración de proveedores')

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
        Gestión de proveedores
        <small>Panel de proveedores</small>
    </h1>
@endsection

@section('content')
    <div class="box box-success">
        <div class="box-header with-border">     
            <h3 class="box-title">Lista de proveedores</h3>
            <div class="box-tools pull-right">
                @include('backend.access.includes.partials.provider-header-buttons')
            </div><!--box-tools pull-right-->
        </div><!-- /.box-header -->
        <div class="box-body">
            <div class="table-responsive">
                <table id="users-table" class="table table-condensed table-hover">
                    <thead>
                         <tr>
                            <th>Nro</th>
                            <th>Nombre</th>
                            <th>E-mail</th>
                            <th>telefono</th>
                            <th>pais</th>
                            <th>ciudad</th>
                            <th>Creado</th>
                            <th>Ultima Actualización</th>
                            <th>Acciones</th>
                         </tr>
                     </thead>
                         <tbody>
                         @foreach($datos as $proveedores)
                               <tr>
                                   <td>
                                       {{ $proveedores->id}}
                                   </td>
                                   <td>
                                       {{ $proveedores->name}}
                                   </td>
                                   <td>
                                       {{ $proveedores->email}}
                                   </td>
                                   <td>
                                       {{ $proveedores->telefono}}
                                   </td>
                                   <td>
                                       {{ $proveedores->pais}}
                                   </td>
                                   <td>
                                       {{ $proveedores->direccion}}
                                   </td>
                                   <td>
                                       {{ $proveedores->created_at->format('d-m-Y')}}
                                   </td>
                                   <td>
                                       {{ $proveedores->updated_at->format('d-m-Y')}}
                                   </td>
                                   <td>
                                   <div class="form-group">
                                   <a href="{{route('admin.maintenance.provider.edit',$proveedores->id)}}" type="submit" class="btn btn-info">
                                   <i class="fa fa-pencil" data-toggle="tooltip" data-placement="top" title="Editar"></i>
                                   </a>
                                   </div>
<!--                                    <div class="form-group"> 
                                   {{Form::open(['method' => 'DELETE', 'route' => ['admin.maintenance.provider.destroy',$proveedores->id],'class' => 'eliminar',]) }}
                                        <button type="submit" class="btn  btn-info" ><i class="fa fa-trash" data-toggle="tooltip" data-placement="top" title="Eliminar"></i></button>
                                   {{Form::close() }}
                                   </div> -->
                                  </td>
                                </tr>
                        @endforeach
                        </tbody>
                </table>
            </div><!--table-responsive-->
        </div><!-- /.box-body -->
    </div><!--box-->
@endsection
@section('after-scripts')
    {{ Html::script("js/backend/plugin/datatables/jquery.dataTables.min.js") }}
    {{ Html::script("js/backend/plugin/datatables/dataTables.bootstrap.min.js") }}

    <script>
      $(document).ready(function(){
        $('#users-table').DataTable({
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
                    "oPaginate":{
                        "sFirst":    "Primero",
                        "sLast":     "Último",
                        "sNext":     "Siguiente",
                        "sPrevious": "Anterior"
                    },
                    "oAria":{
                        "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
                        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                    }
          }
        });
      });

      $( ".eliminar" ).submit(function( event ) {
        var form = this;
        event.preventDefault();
        var tabla = $( ".services_table tbody tr" ).length;
          swal({
                  title: "Estas seguro?",
                  text: "El proveedor será eliminado de la base de datos",
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
