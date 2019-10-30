@extends('backend.layouts.app')

@section ('title', trans('labels.backend.access.users.management'))

@section('page-header')
{{ Html::style("css/bootstrap-select.css") }}
{{ Html::style("css/bootstrap.css") }}
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet"/>
  <h1>
  
    Gestión de visitas
    <small>Editar visita</small>
  </h1>
@endsection

@section('content')
  {{ Form::model($visita,['route' => ['admin.operation.visit.update', $visita], 'class' => 'form-horizontal editar_visita', 'role' => 'form', 'method' => 'PATCH'])}}
    <div class="box box-success ">
      <div class="box-header width-border">     
        <h3 class="box-title">Editar visita</h3>
          <div class="box-tools pull-right">
            @include('backend.access.includes.partials.visit-header-buttons')
          </div><!--box-tools pull-right-->
      </div><!-- /.box-header -->
      </br>
      <div class="box-body text-center">
        <div class="container-fluid">
          <input type="hidden" name="user_id" class="form-control" value="{{access()->user()->id }}">
          {{ Form::hidden('created_user_id', access()->user()->id) }}
          <div class="col-md-6">
            <div class="form-group" style="margin-left: 0; margin-right: 0">
              {!! Form::label('name', 'Nombres', ['class' => ' text-center  control-label']) !!}
              <input type="hidden" name="customer_id" value="{{$visita->customer['id']}}" >
              <div class="">
                {!!Form::text('name',$visita->customer['name'],['class'=>' form-control','placeholder'=>'Nombres','required','readonly'])!!}
              </div> 
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group" style="margin-left: 0; margin-right: 0">
              {!! Form::label('last_name', 'Apellidos', ['class' => ' control-label']) !!}
                <div class="">
                  {!!Form::text('last_name',$visita->customer['last_name'],['class'=>'form-control','placeholder'=>'Apellidos','required','readonly'])!!}
                </div> 
            </div>
          </div>
          <div class="col-md-2">
          </div>
          <div class="col-md-4">
            <div class="form-group" style="margin-left: 0; margin-right: 0">
              {{ Form::label('counter', 'Asignar Counter', ['class' => 'text-center control-label ']) }}
                <div class="">  
                  <select class="selectpicker show-tick counter " name="counter_id" required style="width: 100%">
                    <option value="{{$visita->counter['id']}}">{{$visita->counter['name']}}</option>
                      @foreach($usuarios as $usuario)
                        <option value="{{$usuario->id}}" <?php if($visita->counter['id'] == $usuario->id) echo "selected" ?> >{{$usuario->name}}</option>
                      @endforeach
                  </select>
                </div>
            </div>
          </div>

          <div class="col-md-4">
            <div class="form-group" style="margin-left: 0; margin-right: 0">
              {{ Form::label('reason', 'Motivo de la visita', ['class' => ' control-label ']) }}
                <div class="">  
                  <select class="selectpicker show-tick motivo" placeholder="Motivo" name="reason" required style="width: 100%">
                      @foreach($motivos as $motivo)
                        <option value="{{$motivo->id}}" <?php if($visita->motivo['id'] == $motivo->id) echo "selected" ?>>{{$motivo->name}}</option>
                      @endforeach
                  </select>
                </div>
            </div>
          </div>

          <div class="col-md-2">
          </div>


          <div class="col-md-2">
            
          </div>

          
      </div><!--box-->
      </div><!--box-->

      </div><!--box-->

          <div class="box box-info">
            <div class="box-body">
              <div class="pull-left">
                <a href="">
                  {{ link_to_route('admin.operation.visit.index', 'Cancelar', [], ['class' => 'btn btn-danger']) }}
                </a>
              </div><!--pull-left-->
              <div class="pull-right">
                {!!Form::submit('Actualizar',['class'=>'btn btn-success'])!!}
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
      $( ".editar_visita" ).submit(function( event ) {
        var form = this;
        event.preventDefault();
          swal({
            title: "¿Desea guardar cambios en esta visita?",
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