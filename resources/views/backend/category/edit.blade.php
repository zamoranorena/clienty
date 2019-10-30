@extends('backend.layouts.app')
@section ('title', trans('labels.backend.access.users.management'))
@section('page-header')
    <h1>
        Gestión de Categorias
        <small>Editar Categoria</small>
    </h1>
@endsection

@section('content')
 {{ Form::model($category,['route' => ['admin.access.category.update', $category], 'class' => 'form-horizontal', 'role' => 'form', 'method' => 'PATCH'])}}
       <div class="box box-success">
        <div class="box-header width-border">     
            <h3 class="box-title">Editar Categoria</h3>
            <div class="box-tools pull-right">
                @include('backend.access.includes.partials.category-header-buttons')
            </div><!--box-tools pull-right-->
        </div><!-- /.box-header -->
        <div class="box-body">
            <div class="form-group" style="margin-left: 0; margin-right: 0">
               {!!Form::label('Nombre:')!!}
               {!!Form::text('name',$category->name,['class'=>'form-control','placeholder'=>'Ingresar Nombre'])!!} 
            </div> 
        </div>
        </div><!--box-->

            <div class="box box-info">
            <div class="box-body">
                <div class="pull-left">
                    <a href="">
                       {!!Form::submit('Cancelar',['class'=>'btn btn-info btn-xs'])!!}
                    </a>
                </div><!--pull-left-->
                <div class="pull-right">
                       {!!Form::submit('Actualizar',['class'=>'btn btn-info btn-xs'])!!}
                </div><!--pull-right-->
                <div class="clearfix"></div>
            </div><!-- /.box-body -->
            </div><!--box-->
        
{!!Form::close()!!}
@endsection