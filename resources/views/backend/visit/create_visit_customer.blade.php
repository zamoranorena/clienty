@extends('backend.layouts.app')
@section ('title', trans('labels.backend.access.users.management'))
@section('page-header')
{{ Html::style("css/bootstrap-select.css") }}
{{ Html::style("css/bootstrap.css") }}
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet"/>
<h1>
   Gestión de visitas
   <small>Crear nuevo cliente</small>
</h1>
@endsection
@section('content')
{!! Form::open(array('route'=>'admin.operation.visit.store','method'=>'POST','class'=>'form-horizontal formulariocrear'))!!}
<div class="box box-success ">
   <div class="box-header width-border">
      <h3 class="box-title">Crear Visita</h3>
      <div class="box-tools pull-right">
         @include('backend.access.includes.partials.customervisit-header-buttons')
      </div>
      <!--box-tools pull-right-->
   </div>
   <!-- /.box-header -->
   </br>
   <div class="box-body text-center">
      <div class="container-fluid">
         <input type="hidden" name="user_id" class="form-control" value="{{access()->user()->id }}">
         {{ Form::hidden('created_user_id', access()->user()->id) }}


<div class="container ">
         <div class="col-md-12 text-center">
            <div class="col-md-4">
               <div class="form-group input-lg" >
                  {!! Form::label('name', 'Nombres (*)', ['class' => ' text-center  control-label']) !!}
                  <div class="">
                     {!!Form::text('name',null,['class'=>' form-control','placeholder'=>'Nombres','required'])!!}
                  </div>
               </div>
            </div>
            <div class="col-md-1">
            </div>
            <div class="col-md-4">
               <div class="form-group input-lg" >
                  {!! Form::label('last_name', 'Apellidos (*)', ['class' => ' control-label']) !!}
                  <div class="">
                     {!!Form::text('last_name',null,['class'=>'form-control','placeholder'=>'Apellidos','required'])!!}
                  </div>
               </div>
            </div>
         </div>
         <div class="col-md-12">
            <div class="col-md-4">
               <div class="form-group input-lg" >
                  {{ Form::label('conocio', 'Nos conoció', ['class' => ' control-label ']) }}
                  <div class="">
                     <select class="selectpicker show-tick comonosconocio" placeholder="Motivo" name="marketing" required style="width: 100%">
                        <option value=""></option>
                        @foreach($reasonvisits as $re)
                        <option value="{{$re->id}}">{{$re->name}}</option>
                        @endforeach
                     </select>
                  </div>
               </div>
            </div>
            <div class="col-md-1"></div>
            <div class="col-md-4">
               <div class="form-group input-lg" style="">
                  {{ Form::label('reason', 'Motivo de la visita (*)', ['class' => ' control-label ']) }}
                  <div class="">
                     <select class="selectpicker show-tick motivo" placeholder="Motivo" name="reason" required style="width: 100%">
                        <option value=""></option>
                        @foreach($reasons as $re)
                        <option value="{{$re->id}}">{{$re->name}}</option>
                        @endforeach
                     </select>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-md-12">
            <div class="col-md-3">
            </div>
            <div class="col-md-3">
               <div class="form-group input-lg" >
                  {{ Form::label('counter', 'Asignar Counter (*)', ['class' => 'text-center control-label ']) }}
                  <div class="">
                     <select class="selectpicker show-tick counter " name="counter_id" required style="width: 100%">
                        <option value=""></option>
                        @foreach($users as $users)
                        <option value="{{$users->id}}">{{$users->name}}</option>
                        @endforeach
                     </select>
                  </div>
               </div>
            </div>
            <div class="col-md-3 ">
            </div>
         </div>

       </div>
      </div>
   </div>
   </br>
</div>
</br>
<div class="box box-info">
   <div class="box-body">
      <div class="pull-left">
         <a href="">
         {{ link_to_route('admin.operation.visit.visitCustomer', 'Cancelar', [], ['class' => 'btn btn-danger']) }}
         </a>
      </div>
      <!--pull-left-->
      <div class="pull-right">
         {!!Form::submit('Generar Visita',['class'=>'btn btn-success'])!!}
      </div>
      <!--pull-right-->
      <div class="clearfix"></div>
   </div>
   <!-- /.box-body -->
</div>
<!--box-->  
{!!Form::close()!!}
@endsection
@section('after-scripts')
{{ Html::script("js/bootstrap-select.js") }}
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
<script type="text/javascript">
   $(".motivo").select2({
     placeholder: "--Seleccione motivo --",
     //allowClear: true
   });
   
       $(".comonosconocio").select2({
     placeholder: "--Seleccione como nos conocio --",
     //allowClear: true
   });
   
   $(".nacionalidad").select2({
     placeholder: "--Seleccione nacionalidad--",
    // allowClear: true
   });
   $(".gender").select2({
     placeholder: "--Seleccione nacionalidad--",
    // allowClear: true
   });
   
   /*$(".counter").select2({
     placeholder: "--Seleccione counter--",
    // allowClear: true
   });*/
   
   
   
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