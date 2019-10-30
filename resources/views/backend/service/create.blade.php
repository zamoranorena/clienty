@extends('backend.layouts.app')

@section ('title', trans('labels.backend.access.users.management'))

@section('page-header')
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet"/>
  <h1>
    Gestión de Servicios
    <small>Crear Servicio</small>
  </h1>
@endsection

@section('content')
  {!! Form::open(array('route'=>'admin.maintenance.service.store','class' => 'form-horizontal formulariocrear','role' => 'form','method'=>'post'))!!}
    {{ Form::hidden('created_user_id', access()->user()->id) }}
    {{ Form::hidden('active', 1) }}
    <div class="box box-success">
        <div class="box-header width-border">
          <h3 class="box-title">Crear Servicio</h3>
            <div class="box-tools pull-right">
                @include('backend.access.includes.partials.service-header-buttons')
            </div><!--box-tools pull-right-->
        </div><!-- /.box-header -->

        <div class="box-body">
          <div class="form-group">
              {{ Form::label('name', 'Nombre', ['class' => 'col-lg-2 control-label']) }}
              <div class="col-lg-10">
                  {!!Form::text('name',null,['class'=>'form-control','placeholder'=>'Nombre'])!!}
              </div>
          </div>

          <div class="form-group">
              {{ Form::label('price', 'Precio', ['class' => 'col-lg-2 control-label']) }}
              <div class="col-lg-10">
                {!!Form::number('price',null,['class'=>'form-control','placeholder'=>'Precio'])!!}
              </div>
          </div>

          

          <div class="form-group">
              {{ Form::label('provider', 'Proveedor', ['class' => 'col-lg-2 control-label']) }}
              <div class="col-lg-10">
              <select name="nationality" class="js-example-basic-single" style="width: 100%" required>
                <option value="">Elegir Proveedor</option>
                @foreach($proveedores as $proveedor)
                  <option value="{{$proveedor->id}}">{{$proveedor->name}}</option>
                @endforeach
              </select>
              </div>
          </div>

        </div>
        </div><!--box-->
                <div class="box box-info">
            <div class="box-body">
                <div class="pull-left">
                    {{ link_to_route('admin.maintenance.service.index', trans('Cancelar'), [], ['class' => 'btn btn-danger']) }}
                </div><!--pull-left-->

                <div class="pull-right">

                      {!!Form::submit('Crear',['class'=>'btn btn-success'])!!}

                </div><!--pull-right-->


                <div class="clearfix"></div>
            </div><!-- /.box-body -->
        </div><!--box-->
{!!Form::close()!!}
@endsection
@section('after-scripts')
    {{ Html::script("js/bootstrap-select.js") }}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
    <script type="text/javascript">
    $(".js-example-basic-single").select2();
      $( ".formulariocrear" ).submit(function( event ) {
        var form = this;
        event.preventDefault();
          swal({
                  title: "Estas seguro?",
                  text: "El Servicio será creada en la base de datos",
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
