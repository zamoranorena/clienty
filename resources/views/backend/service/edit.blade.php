@extends('backend.layouts.app')
@section ('title', trans('labels.backend.access.users.management'))
@section('page-header')
    <h1>
        Gestión de Servicios
        <small>Editar Servicio</small>
    </h1>
@endsection

@section('content')
 {{ Form::model($service,['route' => ['admin.maintenance.service.update', $service], 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'PATCH'])}}
       <div class="box box-success">
        <div class="box-header width-border">     
            <h3 class="box-title">Editar Servicio</h3>
            <div class="box-tools pull-right">
                @include('backend.access.includes.partials.service-header-buttons')
            </div><!--box-tools pull-right-->
        </div><!-- /.box-header -->
        <div class="box-body">
            <div class="form-group" style="margin-left: 0; margin-right: 0">
              {{ Form::label('name', 'Nombre', ['class' => 'col-lg-2 control-label']) }}
                <div class="col-md-10">
                  {!!Form::text('name',$service->name,['class'=>'form-control','placeholder'=>'Nombre'])!!} 
                </div><!--col-lg-10-->
            </div><!--form group-->

            <div class="form-group" style="margin-left: 0; margin-right: 0">
              {{ Form::label('price', 'Precio', ['class' => 'col-lg-2 control-label']) }}
              <div class="col-md-10">
                {!!Form::number('price',$service->price,['class'=>'form-control','placeholder'=>'Precio'])!!}
              </div>
            </div>

            <div class="form-group" style="margin-left: 0; margin-right: 0">
              {{ Form::label('provider', 'Proveedor', ['class' => 'col-lg-2 control-label']) }}
              <div class="col-md-10">
                <select class="form-control">
                   <option>Elegir Proveedor</option>
                   @foreach($proveedores as $proveedor)
                   <option value="{{$proveedor->id}}" selected >{{$proveedor->name}}</option>
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
                       {!!Form::submit('Actualizar',['class'=>'btn btn-success'])!!}
                </div><!--pull-right-->
                <div class="clearfix"></div>
            </div><!-- /.box-body -->
            </div><!--box-->
        
{!!Form::close()!!}
@endsection