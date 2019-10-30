@extends('backend.layouts.app')

@section ('title', 'Listado de clientes')

@section('after-styles')
    {{ Html::style("css/backend/plugin/datatables/dataTables.bootstrap.min.css") }}
    {{ Html::style("css/bootstrap-select.css") }}
    {{ Html::style("css/bootstrap.css") }}
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet"/>
    <style type="text/css">
      .box-body form{
        float: left;
        width: 25px;
      }
    </style>
@endsection


@section('page-header')
    <h1>
        Gestión de clientes
        <small>Panel de clientes</small>
    </h1>
@endsection

@section('content')
    <div class="box box-success">
        <div class="box-header with-border">     
            <h3 class="box-title">Lista de clientes</h3>
            <div class="box-tools pull-right">
                @include('backend.access.includes.partials.customer-header-buttons')
            </div><!--box-tools pull-right-->
        </div><!-- /.box-header -->
        <div class="box-body">
            <div class="table-responsive">
                <table id="customers-table" class="table table-condensed table-hover">
                    <thead>
                         <tr>
                            <th>Dni</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Nacionalidad</th>
                            <th>E-mail</th>
                            <th>Telefono</th>
                            <th>Marketing</th>
                            <th>F. Creación</th>
                            <th>Acciones</th>
                         </tr>
                     </thead>
                         
                </table>
            </div><!--table-responsive-->
        </div><!-- /.box-body -->
    </div><!--box-->

    <!--<div id="modal_visit" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
                                     <div class="modal-dialog" role="document">
                                       <div class="modal-content">
                                         <div class="modal-header">
                                           <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                           <h4 class="modal-title" id="gridSystemModalLabel">Registrar visita</h4>
                                         </div>
                                         <div class="modal-body">
                          {!! Form::open(array('route'=>'admin.maintenance.customer.store','method'=>'POST','class'=>'formulariocrear'))!!}
                                             <input type="hidden" name="user_id" class="form-control" value="{{access()->user()->id }}">
                                          <div class="form-group">
                                             <label>Nombres:</label>
                                             <p id="name"></p>
                                             <input type="hidden" id="customerid" name="customer_id" class="form-control" required>
                                          </div>
                                          <div class="form-group">
                                             <label>Apellidos:</label>
                                             <p id="last_name"></p>
                                          </div>
                                          <div class="form-group">
                                             <label>Nacionalidad:</label>
                                               <p id="nationality"></p>
                                          </div>
                                          <div class="form-group">
                                             <label>E-mail:</label>
                                             <p id="email"></p>
                                          </div>
                                          <div class="form-group">
                                             <label>Telefono:</label>
                                             <p id="phone"></p>
                                          </div>
                                          <div class="form-group">
                                             <label>Marketing:</label>
                                             <p id="marketing"></p>
                                          </div>
                                          <div class="form-group">
                                             <label>Motivo:</label>
                                             <input type="text" class="form-control" name="reason" placeholder="Motivo">
                                          </div>
                                          <div class="form-group">
                                            <label>Elegir Counter</label>
                                             <select class="selectpicker show-tick" name="counter_id">
                                                 @foreach($users as $users)
                                                 <option value="{{$users->id}}" selected >{{$users->name}}</option>
                                                 @endforeach
                                             </select>
                                          </div>
                           
                                         </div>
                                         <div class="modal-footer">
                                           <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                           <input  type="submit" value="Guardar" class="btn btn-info">
                                         </div>
                                {!!Form::close()!!}
                                       </div>
                                     </div>
                                   </div>-->

@endsection
@section('after-scripts')
    {{ Html::script("js/backend/plugin/datatables/jquery.dataTables.min.js") }}
    {{ Html::script("js/backend/plugin/datatables/dataTables.bootstrap.min.js") }}
    {{ Html::script("js/bootstrap-select.js") }}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
    <script>
    var idioma_español=
          {
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

       $('#modal_visit').on('show.bs.modal', function (event) {
       var button = $(event.relatedTarget) // Button that triggered the modal
       var id = button.data('customerid') // Extract info from data-* attributes
       var name = button.data('name') // Extract info from data-* attributes
       var last_name= button.data('last_name') // Extract info from data-* attributes
       var nationality= button.data('nationality') // Extract info from data-* attributes
       var email= button.data('email') // Extract info from data-* attributes
       var phone= button.data('phone') // Extract info from data-* attributes
       var marketing= button.data('marketing') // Extract info from data-* attributes

       console.log(event.relatedTarget);

       var modal = $(this)
       modal.find('.modal-body #customerid').val(id)
       modal.find('.modal-body #name').text(name)
       modal.find('.modal-body #last_name').text(last_name)
       modal.find('.modal-body #nationality').text(nationality)
       modal.find('.modal-body #email').text(email)
       modal.find('.modal-body #phone').text(phone)
       modal.find('.modal-body #marketing').text(marketing)
       })
       $(document).ready(function(){
        listar();

        $(".js-example-basic-single").select2();
          placeholder: "Select a state"
       });
       
        /*$( ".eliminar" ).submit(function( event ) {
        var form = this;
        event.preventDefault();
        var tabla = $( "#customers-table tbody tr" ).length;
          swal({
                  title: "Estas seguro?",
                  text: "El Cliente será eliminado de la base de datos",
                  type: "warning",
                  showCancelButton: true,
                  confirmButtonColor: '#088A08',
                  confirmButtonText: 'Confirmar',
                  closeOnConfirm: false,
              },
                function() {
                    form.submit();  
                });
        });*/

        $( ".formulariocrear" ).submit(function( event ){
        var form = this;
        event.preventDefault();            
            swal({
                  title: "Estas seguro?",
                  text: "El cliente será creado en la base de datos",
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

        function listar(){
        var table = $('#customers-table').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": "{{ route('admin.maintenance.customers.getcustomers') }}",
            "columns": [
                {"data": 'number_document'},
                {"data": 'name'},
                {"data": 'last_name'},
                {"data": 'nationality'},
                {"data": 'email'},
                {"data": 'phone'},
                {"data": 'marketing'},
                {"data": 'created_at'},
                {"data": 'action', name: 'action', orderable: true, searchable: false}
            ],
            "language": idioma_español
            
        });
        //obtener_data_editar("#customers-table tbody", table);
        }

        /*var obtener_data_editar=function(tbody,table){
          $(tbody).on("click",".editar",function(){
            var data= table.row($(this).parents("tr")).data();
            var id=data.id;
             $(".editar").attr("href", '{{URL::to("admin/maintenance/customer")}}/'+id+'/edit');
          });
        }

        var obtener_data_eliminar=function(tbody,table){
          $(tbody).on("click","button.eliminar",function(){
            var data= table.row($(this).parents("tr")).data();
            var id=data.id;
            console.log(data.id);
          });
        }*/
    </script>

    
@endsection
