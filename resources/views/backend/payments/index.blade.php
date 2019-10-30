@extends('backend.layouts.app')

@section ('title', 'Listado de pagos')

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
        Gestión de Tipos de Pagos
        <small>Panel de tipos de pagos</small>
    </h1>
@endsection

@section('content')
	<div class="box box-success">
        <div class="box-header with-border">     
            <h3 class="box-title">Lista de pagos</h3>
            <div class="box-tools pull-right">
                @include('backend.access.includes.partials.payments-header-buttons')
            </div><!--box-tools pull-right-->
        </div><!-- /.box-header -->
        <div class="box-body">
            <div class="table-responsive">
                <table id="users-table" class="table table-condensed table-hover">
                    <thead>
                         <tr>
                            <th>#</th>
                            <th>Nombre</th>
                            <th>Acciones</th>
                         </tr>
                    </thead>
                    <tbody>
                    @php
                    	$i=1;
                    @endphp
                        @foreach($payments as $payment)
                            <tr>
                                <td>
                                    {{ $i }}
                                </td>
                                <td>
                                    {{ $payment->name }}
                                </td>
                                <td>
                                   	<a data-id="{{ $payment->id }}" data-name="{{ $payment->name }}" data-toggle="modal" data-target="#editarpago" href="{{route('admin.maintenance.payments.update',$payment->id)}}" type="submit" class="btn btn-info">
                                    <i class="fa fa-pencil" data-toggle="tooltip" data-placement="top" title="Editar"></i>
                                    </a>
                                    <div class="form-group">
                                    {{Form::open(['method' => 'DELETE', 'route' => ['admin.maintenance.payments.destroy',$payment->id],'class'=>'eliminar']) }}
                                      <button type="submit" class="btn btn-info" ><i class="fa fa-trash" data-toggle="tooltip" data-placement="top" title="Eliminar"></i></button>
                                    {{Form::close()}}
                                    </div>
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

    <div class="modal fade" id="crearpago" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  	<div class="modal-dialog" role="document">
		    <div class="modal-content">
		     	<div class="modal-header">
		       		<h5 class="modal-title" id="exampleModalLabel">Crear Tipo de Pago</h5>
		        	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
		        	</button>
		      	</div>
		      	{!! Form::open(array('route'=>'admin.maintenance.payments.store','method'=>'POST'))!!}
			     	<div class="modal-body">
					        <div class="form-group">
					            <label for="recipient-name" class="form-control-label">Nombre:</label>
					            <input type="text" class="form-control" name="name" value="">
					        </div>
			      	</div>
			      	<div class="modal-footer">
			        	<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
			        	<input  type="submit" value="Guardar" class="btn btn-info">
			      	</div>
		      	{!!Form::close()!!}
		    </div>
	  	</div>
	  </div>
	<div class="modal fade" id="editarpago" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  	<div class="modal-dialog" role="document">
		    <div class="modal-content">
		     	  <div class="modal-header">
		       		<h5 class="modal-title" id="exampleModalLabel">Editar Tipo de pago</h5>
		        	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
		        	</button>
		      	</div>
		      	{{ Form::model($payments,['route' => ['admin.maintenance.payments.update', $payment],  'method' => 'PATCH'])}}
			     	<div class="modal-body">
					        <div class="form-group">
					            <label for="recipient-name" class="form-control-label">Nombre:</label>
					            <input type="hidden" class="form-control" name="id" id="id">
					            <input type="text" class="form-control" name="name" id="name">
					        </div>
			      	</div>
			      	<div class="modal-footer">
			        	<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
			        	<input  type="submit" value="Guardar" class="btn btn-info">
			      	</div>
		      	{!!Form::close()!!}
		    </div>
	  	</div>
	</div>
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
    </script>
    <script>
       $('#editarpago').on('show.bs.modal', function (event) {
       var button = $(event.relatedTarget) // Button that triggered the modal
       var id=button.data('id');
       var name = button.data('name') // Extract info from data-* attributes
       console.log(event.relatedTarget);
       // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
       // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
       var modal = $(this)
       modal.find('.modal-body #id').val(id)
       modal.find('.modal-body #name').val(name)
       })
       $( ".eliminar" ).submit(function( event ) {
        var form = this;
        event.preventDefault();
        var tabla = $( ".services_table tbody tr" ).length;
          swal({
                  title: "Estas seguro?",
                  text: "El Tipo de Pago será eliminado de la base de datos",
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

