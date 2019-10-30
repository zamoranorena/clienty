@extends('backend.layouts.app')

@section ('title', 'Administración de proveedores | Editar Proveedor')

@section('after-styles')
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet"/>
@endsection
@section('page-header')
    <h1>
        Gestión de Proveedor
        <small>Editar Proveedor</small>
    </h1>
@endsection

@section('content')
  {{ Form::model($proveedor,['route' => ['admin.maintenance.provider.update', $proveedor], 'class' => 'form-horizontal formularioeditar', 'role' => 'form', 'method' => 'PATCH'])}}
    <div class="box box-success">
      <div class="box-header width-border">     
        <h3 class="box-title">Editar Proveedor</h3>
          <div class="box-tools pull-right">
            @include('backend.access.includes.partials.provider-header-buttons')
          </div><!--box-tools pull-right-->
      </div><!-- /.box-header -->

      <div class="box-body">
        <div class="form-group" style="margin-left: 0; margin-right: 0">
          {{ Form::label('name', 'Nombre', ['class' => 'col-lg-2 control-label']) }}
            <div class="col-lg-10">
              {!!Form::text('name',$proveedor->name,['class'=>'form-control','placeholder'=>'Nombre'])!!} 
            </div><!--col-lg-10-->
        </div><!--form group-->

        <div class="form-group" style="margin-left: 0; margin-right: 0">
          {{ Form::label('email', 'Email', ['class' => 'col-lg-2 control-label']) }}
            <div class="col-lg-10">
               {!!Form::text('email',$proveedor->email,['class'=>'form-control','placeholder'=>'Dirección de correo'])!!}
            </div><!--col-lg-10-->
        </div><!--form group-->

        <div class="form-group" style="margin-left: 0; margin-right: 0">
          {{ Form::label('phone', 'Teléfono', ['class' => 'col-lg-2 control-label']) }}
            <div class="col-lg-10">
               {!!Form::text('telefono',$proveedor->telefono,['class'=>'form-control','placeholder'=>'Teléfono'])!!}
            </div><!--col-lg-10-->
        </div><!--form group-->

        <div class="form-group" style="margin-left: 0; margin-right: 0">
          {{ Form::label('countrie', 'País', ['class' => 'col-lg-2 control-label']) }}
            <div class="col-lg-10">
              <select name="pais" class="js-example-basic-single" style="width: 100%" required>
                  <option value="0">{{$proveedor->pais}}</option>
                  @foreach($countries as $countrie)
                    <option value="{{$countrie->name}}">{{$countrie->name}}</option>
                  @endforeach
              </select><!--select-->
            </div>
        </div><!--form group-->

        <div class="form-group" style="margin-left: 0; margin-right: 0">
          {{ Form::label('name', 'Lugar', ['class' => 'col-lg-2 control-label']) }}
            <div class="col-lg-10">
              {!!Form::text('direccion',$proveedor->direccion,['class'=>'form-control','placeholder'=>'Lugar'])!!}
            </div><!--col-lg-10-->
        </div><!--form group--> 
      </div><!--box-->

      <div class="box box-info">
        <div class="box-body">
          <div class="pull-left">
              {{ link_to_route('admin.maintenance.provider.index', 'Cancelar', [], ['class' => 'btn btn-danger']) }}
          </div><!--pull-left-->

          <div class="pull-right">
              {!!Form::submit('Actualizar',['class'=>'btn btn-success'])!!}
          </div><!--pull-right-->


                <div class="clearfix"></div>
        </div><!-- /.box-body -->
      </div><!--box-->
        
    {{ Form::close() }}
@endsection
@section('after-scripts')
  <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
  <script type="text/javascript">
      $(document).ready(function(){
        $(".js-example-basic-single").select2();
    });
    $( ".formularioeditar" ).submit(function( event ) {
        var form = this;
        event.preventDefault();
          swal({
                  title: "¿Desea actualizar este proveedor?",

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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
@endsection