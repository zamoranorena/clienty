@extends('backend.layouts.app')

@section ('title', trans('labels.backend.access.users.management'))

@section('page-header')
{{ Html::style("css/bootstrap-select.css") }}
{{ Html::style("css/bootstrap.css") }}
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet"/>
    <h1>
        Gestión de visitas
        <small>Crear Visita</small>
    </h1>
@endsection

@section('content')
 {!! Form::open(array('route'=>'admin.operation.visit.asignarVisita','method'=>'POST','class'=>'form-horizontal formulariocrear'))!!}
        {{ Form::hidden('created_user_id', access()->user()->id) }}
       <div class="box box-success">
        <div class="box-header width-border">     
            <h3 class="box-title">Crear Visita</h3>
            <div class="box-tools pull-right">
                @include('backend.access.includes.partials.customervisit-header-buttons')
            </div><!--box-tools pull-right-->
        </div><!-- /.box-header -->
        <div class="box-body text-center">
          <div class="container-fluid">
            
                <input type="hidden" name="user_id" value="{{access()->user()->id }}">
                <input type="hidden" name="customer_id" value="{{$customer->id}}" class="form-control">
                <div class="col-md-6">
                <div class="form-group" style="margin-left: 0; margin-right: 0">
                  {{ Form::hidden('created_user_id', access()->user()->id) }}
                  {!! Form::label('name', 'Nombres', ['class' => ' text-center  control-label']) !!}
                  {!!Form::text('name',$customer->name,['class'=>'form-control','placeholder'=>'Nombres','required','readonly'])!!}
                </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group" style="margin-left: 0; margin-right: 0">
                    {!! Form::label('last_name', 'Apellidos ', ['class' => 'text-center  control-label']) !!}
                    <input type="text" class="form-control" name="last_name" value="{{$customer->last_name}}" placeholder="Apellidos" readonly >
                  </div>
                </div>

            
              <div class="col-md-4">
              <div class="form-group" style="margin-left: 0; margin-right: 0">
               {{ Form::label('email', 'Email', ['class' => 'control-label']) }}
                {!!Form::email('email',$customer->email,['class'=>'form-control','placeholder'=>'E-mail','required','readonly'])!!}
              </div>
              </div>
              <div class="col-md-4">
              <div class="form-group" style="margin-left: 0; margin-right: 0">
               {{ Form::label('phone', 'Teléfono', ['class' => 'control-label']) }}
                {!!Form::number('phone',$customer->phone,['class'=>'form-control','placeholder'=>'Teléfono','required','readonly'])!!}
              </div>
              </div>
              <div class="col-md-4">
              <div class="form-group" style="margin-left: 0; margin-right: 0">
               {{ Form::label('marketing', 'Como nos conoció', ['class' => 'control-label']) }}
                {!!Form::text('marketing',$customer->marketing,['class'=>'form-control','required','readonly'])!!}
              </div>
              </div>
          
            
            
              <div class="col-md-2">
              </div>
              
              <div class="col-md-4">
              <div class="form-group" style="margin-left: 0; margin-right: 0">                
                    {{ Form::label('reason', 'Motivo', ['class' => 'text-center control-label']) }}
                        <select name="reason" class="js-example-basic-single reason" style="width: 100%"> 
                            <option value="">--Seleccione el motivo--</option>
                            @foreach($reasons as $reason)
                                <option value="{{$reason->id}}">{{$reason->name}}</option>
                            @endforeach
                        </select><!--select-->
                    </div>
              </div>
              
              <div class="col-md-4">
              <div class="form-group" style="margin-left: 0; margin-right: 0">
                {{ Form::label('counter', 'Asignar Counter', ['class' => 'control-label ']) }}
                  <div class="">  
                    <select class="selectpicker show-tick" name="counter_id" style="width: 100%"  required>
                      <option value="">Seleccione un counter</option>
                      @foreach($users as $users)

                      @if($counter_atendio===$users->id)
                        <option value="{{$users->id}}" selected>{{$users->name}}</option>
                      @else
                        <option value="{{$users->id}}">{{$users->name}}</option>
                      @endif
                      @endforeach
                  </select>
                  </div>
              </div>
              </div>
              <div class="col-md-2">
              </div>            
        </div>
        </div>
        </div><!--box-->

            <div class="box box-info">
            <div class="box-body">
                <div class="pull-left">
                    <a href="">
                      {{ link_to_route('admin.operation.visit.visitCustomer', 'Cancelar', [], ['class' => 'btn btn-danger']) }}
                    </a>
                </div><!--pull-left-->
                <div class="pull-right">
                       {!!Form::submit('Generar Visita',['class'=>'btn btn-success'])!!}
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
    $(".reason").select2({
        placeholder: "--Seleccione motivo--",
        //allowClear: true
    });
    $(".js-example-basic-single").select2();
      $( ".formulariocrear" ).submit(function( event ) {
        var form = this;
        event.preventDefault();
          swal({
                  title: "¿Confirma crear esta visita?",
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
