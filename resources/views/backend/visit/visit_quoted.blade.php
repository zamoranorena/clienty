@extends('backend.layouts.app')

@section ('title', trans('labels.backend.access.users.management'))

@section('page-header')
{{ Html::style("css/bootstrap-select.css") }}
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet"/>
  	<h1>
    	Gestión de visitas
    	<small>Editar visita</small>
  	</h1>
@endsection

@section('content')
  	<div class="box box-success">
      	<div class="box-header width-border">     
        	<h3 class="box-title">Editar visita</h3>
	          	<div class="box-tools pull-right">
	            	@include('backend.access.includes.partials.customervisit-header-buttons')
	          	</div><!--box-tools pull-right-->
      	</div><!-- /.box-header -->
      	</br>
		<div class="box-body text-center">
		    <div class="alert alert-warning alert-dismissible" role="alert">
			  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			  <strong>Error!</strong> No se puede editar la visita, debido a que tiene una cotización.
			</div>   
		</div><!--box-->
    </div><!--box-->
          
@endsection