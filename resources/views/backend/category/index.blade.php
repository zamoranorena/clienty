@extends('backend.layouts.app')

@section ('title', trans('labels.backend.access.users.management'))

@section('after-styles')
    {{ Html::style("css/backend/plugin/datatables/dataTables.bootstrap.min.css") }}
    <style type="text/css">
      .box-body form{
        float: left;
        width: 25px;
      }
    </style>
@endsection


@section('page-header')
    <h1>
        Gestión de Categorias
        <small>Panel de categorias</small>
    </h1>
@endsection

@section('content')
    <div class="box box-success">
        <div class="box-header width-border">     
            <h3 class="box-title">Lista de Categorias</h3>
            <div class="box-tools pull-right">
                @include('backend.access.includes.partials.category-header-buttons')
            </div><!--box-tools pull-right-->
        </div><!-- /.box-header -->
        <div class="box-body">
            <div class="table-responsive">
                <table id="users-table" class="table table-condensed table-hover">
                    <thead>
                         <tr>
                            <th>Nro</th>
                            <th>Nombre</th>
                            <th>Creado</th>
                            <th>Ultima Actualización</th>
                            <th>Acciones</th>
                         </tr>
                     </thead>
                         <tbody>
                         @foreach($datos as $categories)
                               <tr>
                                   <td>
                                       {{ $categories->id}}
                                   </td>
                                   <td>
                                       {{ $categories->name}}
                                   </td>
                                   <td>
                                       {{ $categories->created_at}}
                                   </td>
                                   <td>
                                       {{ $categories->updated_at}}
                                   </td>
                                   <td>
                                   
                                   <a href="{{route('admin.access.category.show',$categories->id)}}" type="submit" class="btn btn-sm btn-info">
                                   <i class="fa fa-search" data-toggle="tooltip" data-placement="top" title="Ver"></i>
                                   </a>

                                   <a href="{{route('admin.access.category.edit',$categories->id)}}" type="submit" class="btn btn-sm btn-info">
                                   <i class="fa fa-pencil" data-toggle="tooltip" data-placement="top" title="Editar"></i>
                                   </a>
                                   {{Form::open(['method' => 'DELETE', 'route' => ['admin.access.category.destroy',$categories->id]]) }}
                                        <button type="submit" class="btn btn-sm btn-info" ><i class="fa fa-trash" data-toggle="tooltip" data-placement="top" title="Eliminar"></i></button>
                                   {{Form::close() }}
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
       $(document).ready(function() {
       $('#users-table').DataTable();
       });
    </script>
@endsection
