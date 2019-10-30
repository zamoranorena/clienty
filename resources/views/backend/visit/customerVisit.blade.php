@extends('backend.layouts.app')

@section ('title', 'Listado de clientes')

@section('after-styles')
    {{ Html::style("css/bootstrap.css") }}
    {{ Html::style("css/backend.css") }}
    {{ Html::style("css/sweetalert.css") }}
    {{ Html::style("css/backend/plugin/datatables/dataTables.bootstrap.min.css") }}
    {{ Html::style("css/bootstrap-select.css") }}
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
        Asignación de visitas
        <small>Panel de asignacion de visitas</small>
    </h1>
@endsection

@section('content')
    <div class="box box-success">
        <div class="box-header with-border">     
            <h3 class="box-title">Lista de clientes para asignación de visitas</h3>
            <div class="box-tools pull-right">
                @include('backend.access.includes.partials.customervisit-header-buttons')
          </div><!--box-tools pull-right-->
      </div><!-- /.box-header -->
      <div class="box-body">
        <div class="table-responsive">
          <table id="customers-table" class="table table-condensed table-hover">
            <thead>
              <tr>
                <th style="width: 5%">Nro</th>
                <th style="width: 13%">Nombre</th>
                <th style="width: 13%">Apellido</th>
                <th>Nacionalidad</th>
                <th style="width: 10%">E-mail</th>
                <th>Telefono</th>
                <th>Marketing</th>
                <th>F. Creación</th>
                <th>Acciones</th>
              </tr>
            </thead>
            <tbody>
              @php
                $i=1;
                  foreach($datos as $customers){    
              @endphp
                  <tr>
                    <td>
                        {{$i}}
                    </td>
                    <td>
                        {{ $customers->name}}
                    </td>
                    <td>
                        {{ $customers->last_name}}
                    </td>
                    <td>
                        {{ $customers->nationality}}
                    </td>
                    <td>
                        {{ $customers->email}}
                    </td>                                  
                    <td>
                        {{ $customers->phone}}
                    </td>
                    <td>
                        {{ $customers->marketing}}
                    </td>
                    <td> 
                        {{ $customers->created_at->format('d/m/Y')}}
                    </td>
                    <td>
                        <!--<a data-toggle="modal" data-customerid="{{ $customers->id }}" data-name="{{ $customers->name }}" data-last_name="{{ $customers->last_name }}"  data-nationality="{{ $customers->nationality }}" data-email="{{ $customers->email}}" data-phone="{{ $customers->phone}}" data-marketing="{{ $customers->marketing}}" data-target="#modal_visit" type="submit" class="btn btn-info">
                        <i class="fa fa-user" data-toggle="tooltip" data-placement="top" title="Asignar visita"></i>
                        </a>-->
                        <a href="{{route('admin.operation.visit.crearvisita',$customers->id)}}" class="btn btn-info">
                          <i class="fa fa-user" data-toggle="tooltip" data-placement="top" title="Asignar visita"></i>
                        </a>
                    </td>
                  </tr>
                      @php
                        $i++;
                          }
                        ?>
                        </tbody>
                   
                </table>
            </div><!--table-responsive-->
        </div><!-- /.box-body -->
    </div><!--box-->

    <div id="modal_visit" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
                                     <div class="modal-dialog" role="document">
                                       <div class="modal-content">
                                         <div class="modal-header">
                                           <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                           <h4 class="modal-title" id="gridSystemModalLabel">Registrar visita</h4>
                                         </div>
                                         <div class="modal-body">
                          {!! Form::open(array('route'=>'admin.operation.visit.asignarVisita','method'=>'POST','class'=>'formulariocrear'))!!}
                                      <!--Enviamos id usuario/id customer/id counter-->
                                             <input type="hidden" name="user_id" class="form-control" value="{{access()->user()->id }}">
                                             {{ Form::hidden('created_user_id', access()->user()->id) }}
                                          <div class="form-group">
                                             <label>Nombres:</label>
                                             <p id="name"></p>
                                             <input type="hidden" id="customerid" name="customer_id" class="form-control">
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
                                             <input type="text" class="form-control" name="reason" placeholder="Motivo" required>
                                          </div>
                                          <div class="form-group">
                                            <label>Asignar Counter</label>
                                              <select class="selectpicker show-tick" name="counter_id">
                                                <option value="">Seleccion un counter</option>
                                                @foreach($users as $users)
                                                <option value="{{$users->id}}" selected>{{$users->name}}</option>
                                                @endforeach
                                              </select>
                                          </div>
                                         </div>
                                         <div class="modal-footer">
                                           <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                           <input  type="submit" value="Guardar" class="btn btn-info">
                                         </div>
                                {!!Form::close()!!}
                                       </div><!-- /.modal-content -->
                                     </div><!-- /.modal-dialog -->
                                   </div><!-- /.modal -->
<div id="modal_customer" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Registro Visita</h4>
      </div>
      <div class="modal-body">
{!! Form::open(array('route'=>'admin.operation.visit.store','method'=>'POST','class'=>'formulariocrear'))!!}
        <input type="hidden" name="user_id" class="form-control" value="{{access()->user()->id }}">
        {{ Form::hidden('created_user_id', access()->user()->id) }}
        <div class="form-group">
               {!!Form::label('Nombre:')!!}
               {!!Form::text('name',null,['class'=>'form-control','placeholder'=>'Nombres','required'])!!} 
        </div>
        <div class="form-group">
              <label>Apellidos</label>
              <input type="text" class="form-control" name="last_name" placeholder="Apellidos" required>
        </div>
        <div class="form-group">
          <label>Nacionalidad</label>
          <select name="nationality" class="js-example-basic-single" style="width: 100%" required>
            <option value="" >Seleccione una nacionalidad</option>
            @foreach($nacionalidades as $nacionalidad)
              <option value="{{$nacionalidad->nationality}}">{{$nacionalidad->nationality}}</option>
            @endforeach
          </select>
        </div>
        <div class="form-group">
               {!!Form::label('Email:')!!}
               {!!Form::email('email',null,['class'=>'form-control','placeholder'=>'Ingresar Email','required'])!!}
        </div>
        <div class="form-group">
               {!!Form::label('Telefono:')!!}
               {!!Form::number('phone',null,['class'=>'form-control','placeholder'=>'Ingresar Teléfono','required'])!!}
        </div>
        <div class="form-group">
              <label>Como nos conoció</label>
                <div class="radios">
                  <label>
                    <input type="radio" name="marketing" value="Recomendación">
                    Recomendación
                  </label>
                  <label>
                    <input type="radio" name="marketing" value="Correo">
                    Correo
                  </label>
                  <label>
                    <input type="radio" name="marketing" value="Ubicación">
                    Ubicación
                  </label>
                  <label>
                    <input type="radio" name="marketing" value="Facebook">
                    Facebook
                  </label>
                  <label>
                    <input type="radio" name="marketing" value="Televisón">
                    Televisón
                  </label>
                  <label>
                    <input type="radio" name="marketing" value="Web">
                    Web
                  </label>
                  <label>
                    <input type="radio" name="marketing" value="Otros">
                    Otros
                  </label>
                </div>
            </div>
        <div class="form-group">
              <label>Motivo</label>
              <input type="text" class="form-control" name="reason" placeholder="Motivo">
        </div>
        <div class="form-group">
            <label>Seleccione Counter</label>
              <select class="selectpicker show-tick" name="counter_id" required>
                  @foreach($users_visit as $users_visit)
                  <option value="{{$users_visit->id}}" selected >{{$users_visit->name}}</option>
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
</div>
@endsection
@section('after-scripts')
    {{ Html::script("js/bootstrap-select.js") }}
    {{ Html::script("js/backend/plugin/datatables/jquery.dataTables.min.js") }}
    {{ Html::script("js/backend/plugin/datatables/dataTables.bootstrap.min.js") }}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>

    <script>
      $(".js-example-basic-single").select2();
      $(document).ready(function() {
        $('#customers-table').DataTable({
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
       // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
       // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
       var modal = $(this)
       modal.find('.modal-body #customerid').val(id)
       modal.find('.modal-body #name').text(name)
       modal.find('.modal-body #last_name').text(last_name)
       modal.find('.modal-body #nationality').text(nationality)
       modal.find('.modal-body #email').text(email)
       modal.find('.modal-body #phone').text(phone)
       modal.find('.modal-body #marketing').text(marketing)
       })
        $( ".formulariocrear" ).submit(function( event ) {
        var form = this;
        event.preventDefault();            
            swal({
                  title: "¿Desea crear esta visita?",
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
