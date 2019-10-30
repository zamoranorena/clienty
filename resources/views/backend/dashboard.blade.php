@extends('backend.layouts.app')
@section('page-header')
<h1>
   Dashboard
   <small>Panel de rápido</small>
</h1>
@endsection
@section('before-styles')
{{ Html::style("css/backend/plugin/datatables/dataTables.bootstrap.min.css") }}
{{ Html::style("css/bootstrap.css") }}
@endsection
@section('content')
<div class="box box-success">
   <div class="box-header with-border">
      <!--<h3 class="box-title">Bienvenido {{ $logged_in_user->name }}</h3>-->
      <div class="box-tools pull-right">
         <!--<button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>-->
      </div>
      <!-- /.box tools -->
   </div>
   <!-- /.box-header -->


   </div>
   <div class="box-body">
      <!--{!! trans('strings.backend.welcome') !!}-->
   </div>


@endsection