@extends('backend.layouts.app')
@section ('title', trans('labels.backend.access.users.management'))
@section('after-styles')
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet"/>
@endsection

@section('page-header')
    <h1>
        Gestión de Clientes
        <small>Editar Cliente</small>
    </h1>
@endsection

@section('content')
  {{ Form::model($customer,['route' => ['admin.maintenance.customer.update', $customer], 'class' => 'form-horizontal formulario_editar', 'role' => 'form', 'method' => 'PATCH'])}}
        <div class="box box-success">
            <div class="box-header width-border">     
                <h3 class="box-title">Editar Cliente</h3>
                <div class="box-tools pull-right">
                    @include('backend.access.includes.partials.customer-header-buttons')
                </div><!--box-tools pull-right-->
            </div><!-- /.box-header -->

            </br>
            <div class="box-body text-center">
                <div class="container-fluid">
                
                    <div class="col-md-6 col-lg-6">
                    <div class="form-group" style="margin-left: 0; margin-right: 0">
                        {!! Form::label('name', 'Nombres', ['class' => ' text-center  control-label']) !!}
                        {!!Form::text('name',$customer->name,['class'=>'form-control','placeholder'=>'Ingresar Nombre','required'])!!}
                    </div>
                    </div>

                    <div class="col-md-6 col-lg-6">
                    <div class="form-group" style="margin-left: 0; margin-right: 0">
                        {!! Form::label('last_name', 'Apellidos', ['class' => ' text-center  control-label']) !!}
                        {!!Form::text('last_name',$customer->last_name,['class'=>'form-control','placeholder'=>'Ingresar Nombre','required'])!!}
                    </div>
                    </div>

                    <div class="col-md-4 col-lg-4">
                    <div class="form-group" style="margin-left: 0; margin-right: 0">
                    {!! Form::label('nationality', 'Nacionalidad', ['class' => ' text-center  control-label']) !!}
                        <select name="nationality" class="js-example-basic-single nationality" style="width: 100%">
                            <option value="{{$customer->nationality}}">{{$customer->nationality}}</option>
                            @foreach($nationalities as $nationalitie)
                                <option value="{{$nationalitie->nationality}}" <?php if($nationalitie->nationality == $customer->nationality) echo "selected" ?> >{{$nationalitie->nationality}}</option>
                            @endforeach
                        </select><!--select-->
                    </div>
                    </div>

                    <div class="col-md-4 col-lg-4">
                    <div class="form-group" style="margin-left: 0; margin-right: 0">
                        {!! Form::label('marketing', 'Nos conoció', ['class' => ' text-center  control-label']) !!}
                        <select name="marketing" class="js-example-basic-single marketing" style="width: 100%">
                            @foreach($reasonsvisits as $reasonsvisit)
                                <option value="{{$reasonsvisit->id}}" <?php if($customer->marketing_id == $reasonsvisit->id) echo "selected" ?>>{{$reasonsvisit->name}}</option>
                            @endforeach
                        </select><!--select-->
                    </div>    
                    </div>

                    <div class="col-md-4 col-lg-4">
                    <div class="form-group" style="margin-left: 0; margin-right: 0">    
                        {!! Form::label('teléfono', 'Teléfono', ['class' => ' text-center  control-label']) !!}
                        {!!Form::number('phone',$customer->phone,['class'=>'form-control','placeholder'=>'Teléfono'])!!}
                    </div>
                    </div>

                    <div class="col-md-4 col-lg-4">
                        <div class="form-group" style="margin-left: 0; margin-right: 0">    
                            {!! Form::label('email', 'Email', ['class' => ' text-center  control-label'])!!}
                            {!!Form::email('email',$customer->email,['class'=>'form-control','placeholder'=>'Correo Electrónico'])!!}
                        </div>
                    </div>

                    <div class="col-md-4 col-lg-4">
                    <div class="form-group" style="margin-left: 0; margin-right: 0">
                        {!! Form::label('documento', 'Tipo de documento', ['class' => ' text-center  control-label']) !!}
                        <select name="type_document_id" class="js-example-basic-single documento" style="width: 100%">
                            @foreach($documents as $typedocument)
                                <option value="{{$typedocument->id}}" <?php if($customer->TypeDocument['id'] == $typedocument->id) echo "selected" ?> >{{$typedocument->name}}</option>
                            @endforeach
                        </select><!--select-->
                    </div>
                    </div>

                    

                    <div class="col-md-4 col-lg-4">
                    <div class="form-group" style="margin-left: 0; margin-right: 0">
                        {!! Form::label('number_document', 'Nro. de documento', ['class' => ' text-center  control-label']) !!}
                        {!!Form::text('number_document',$customer->number_document,['class'=>'form-control','placeholder'=>'Nro. de documento'])!!}
                    </div>
                    </div>

                    <div class="col-lg-4"></div>

                    <div class="col-lg-4">
                    <div class="form-group" style="margin-left: 0; margin-right: 0">
                    {!! Form::label('sexo', 'Sexo', ['class' => ' text-center  control-label']) !!}
                        <select name="gender" class="js-example-basic-single gender" style="width: 100%">
                                <option value=""></option>
                            @foreach($gender as $gender)
                                <option value="{{$gender->id}}" <?php if($customer->genders['id'] == $gender->id) echo "selected" ?>>{{$gender->name}}</option>
                            @endforeach
                        </select><!--select-->
                    </div>
                    </div>

                    <div class="col-lg-4"></div>


                <!--<div >
                    {{ Form::label('marketing', 'Como nos conoció?', ['class' => 'col-lg-2 control-label']) }}
                    <div class="col-lg-10">
                    {!!Form::text('email',$customer->marketing,['class'=>'form-control','placeholder'=>'Marketing'])!!}
                    </div>
                </div>-->




                <!--
                <div class="form-group">
                {{ Form::label('conocio', 'Como nos conoció', ['class' => 'col-lg-2 control-label']) }}
                    <div class="col-lg-10">
                        <div class="radios" value="{{$customer->marketing}}" required>

                        @if($customer->marketing == 'Recomendación')
                            <label>
                                <input type="radio" name="marketing" value="Recomendación" checked>
                                Recomendación
                            </label>
                        @else
                            <label>
                                <input type="radio" name="marketing" value="Recomendación">
                                Recomendación
                            </label>
                        @endif

                        @if($customer->marketing == 'Correo')
                            <label>
                                <input type="radio" name="marketing" value="Correo" checked>
                                Correo
                            </label>
                        @else
                            <label>
                                <input type="radio" name="marketing" value="Correo">
                                Correo
                            </label>
                        @endif

                        @if($customer->marketing == 'Ubicación')
                            <label>
                                <input type="radio" name="marketing" value="Ubicación" checked>
                                Ubicación
                            </label>
                        @else
                            <label>
                                <input type="radio" name="marketing" value="Ubicación">
                                Ubicación
                            </label>
                        @endif

                        @if($customer->marketing == 'facebook')
                            <label>
                                <input type="radio" name="marketing" value="facebook" checked>
                                Facebook
                            </label>
                        @else 
                            <label>
                                <input type="radio" name="marketing" value="facebook">
                                Facebook
                            </label>
                        @endif

                        @if($customer->marketing == 'Television')
                            <label>
                                <input type="radio" name="marketing" value="Television" checked>
                                Televisón
                            </label>
                        @else
                            <label>
                                <input type="radio" name="marketing" value="Television">
                                Televisón
                            </label>
                        @endif

                        @if($customer->marketing == 'Web')
                            <label>
                                <input type="radio" name="marketing" value="web" checked>
                                Web
                            </label>
                        @else
                            <label>
                                <input type="radio" name="marketing" value="Web">
                                Web
                            </label>
                        @endif

                        @if($customer->marketing == 'otros')
                            <label>
                                <input type="radio" name="marketing" value="otros" checked>
                                Otros
                            </label>
                        @else
                            <label>
                                <input type="radio" name="marketing" value="otros">
                                Otros
                            </label>
                        @endif    
                        </div>
                    </div>
                </div>-->

            </div>
            </div><!--box-->
        </div>
        <div class="box box-info">
            <div class="box-body">
                <div class="pull-left">
                    <a href="">
                        {{ link_to_route('admin.maintenance.customer.index', 'Cancelar', [], ['class' => 'btn btn-danger']) }}
                    </a>
                </div>
                <div class="pull-right">
                        {!!Form::submit('Actualizar',['class'=>'btn btn-info'])!!}
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
  {!!Form::close()!!}
@endsection

@section('after-scripts')
  <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
  <script type="text/javascript">
      $(document).ready(function(){
        $(".js-example-basic-single").select2({
            placeholder: "Seleccionar Nacionalidad",
        });
        $(".marketing").select2({
        placeholder: "--Seleccione como nos conoció--",
        //allowClear: true
        });
        $(".nationality").select2({
        placeholder: "--Seleccione nacionalidad--",
        //allowClear: true
        });
        $(".documento").select2({
        placeholder: "--Seleccione tipo de documento--",
        //allowClear: true
        });
        $(".gender").select2({
        placeholder: "--Seleccione tipo de genero--",
        //allowClear: true
        });
      });

    $( ".formulario_editar" ).submit(function( event ) {
        var form = this;
        event.preventDefault();
          swal({
                  title: "¿Desea guardar cambios en este cliente?",
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