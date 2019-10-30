@extends('backend.layouts.app')

@section ('title', 'Listado de visitas')

@section('before-styles')
    {{ Html::style("css/backend/plugin/datatables/dataTables.bootstrap.min.css") }}
    {{ Html::style("css/bootstrap.css") }}
@endsection

@section('page-header')
  <h1>
    Gestión de visitas
      <small>Panel de visitas</small>
  </h1>
@endsection
@section('content')
    <div class="box box-success">
        <div class="box-header with-border">     
            <h3 class="box-title">Listado de visitas</h3>
            <div class="box-tools pull-right">
                @include('backend.access.includes.partials.visit-header-buttons')
            </div><!--box-tools pull-right-->
        </div><!-- /.box-header -->
        <div class="box-body">
            <div class="table-responsive">
                <table id="users-table" class="table table-condensed table-hover">
                  
                    <thead>
                        <tr>
                          <th>Nro</th>
                          <th>Nombres</th>
                          <th>Apellidos</th>
                          <th>Vendedor</th>
                          <th>Motivo</th>
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
                                      <span class="label label-success">Cotizado</span> 
                                <?php } if(empty($visita["quote_id"])){
                                ?>
                                @role('Counter')
                                      <a data-toggle="tooltip" data-placement="top" title="Cotizar"  href="{{route('admin.operation.quote.create',$visita->id)}}" type="submit" class="btn  btn-info"><i class="fa fa-pencil-square-o"></i></a>
                                @endauth
                                <?php
                                  }
                                ?>
                                
                                @role('Recepcionista')
                                <?php 
                                  if(empty($visita["quote_id"])){
                                ?>
                    
                                    <div class="form-group">
                                        <a href="{{route('admin.operation.visit.edit', $visita->id)}}" type="button" class="btn btn-info">
                                          <i class="fa fa-pencil" data-toggle="tooltip" data-placement="top" title="Editar"></i>
                                        </a>
                                    </div>
                                    <div class="form-group">
                                        {{ Form::open(['method' => 'DELETE', 'route' => ['admin.operation.visit.destroy',$visita->id],'class'=>'eliminar']) }}
                                          <button type="submit" data-toggle="tooltip" data-placement="top" title="Eliminar" class="btn btn-info" ><i class="fa fa-trash" ></i></button>
                                        {{Form::close() }}
                                    </div>
                                <?php
                                  } else {
                                ?>
                                    
                                    
                                <?php
                                  }
                                ?>
                                @endauth

                                
                                
                              </td>
                              
                            </tr>
                          @php
                          $i++;
                          @endphp
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

      $( ".eliminar" ).submit(function( event ) {
       var form = this;
       event.preventDefault();
       var tabla = $( ".users-table tbody tr" ).length;
         
         swal({
                 title: "¿Desea eliminar esta visita?",
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
