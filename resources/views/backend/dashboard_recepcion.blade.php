@extends('backend.layouts.app')
@section('page-header')
<h1>
   Dashboard
   <small>Panel de rápido recepción</small>
</h1>
@endsection
@section('before-styles')
{{ Html::style("css/backend/plugin/datatables/dataTables.bootstrap.min.css") }}
{{ Html::style("css/bootstrap.css") }}
@endsection
@section('content')
<div class="box box-success">
   <div class="box-header with-border">
      <h3 class="box-title">Gestión de clientes y visitas</h3>
   </div>
   </br>
   <!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
   <div class="row">
      <div class="col-4 col-md-4"></div>
      <div class="col-4 col-md-4" alt="Crer cliente">
         <a  href="{{URL::to('/admin/operation/visitCustomer/crearcliente')}}">{{ HTML::image('img/add.png', 'a picture') }} </a> 
         <p class=""><b>Crear cliente con visita</b></p>
      </div>
      <div  alt="Asignar Visita" class="col-4 col-md-4">
         <a href="{{URL::to('/admin/maintenance/customer/create')}}">{{ HTML::image('img/visit.png', 'a picture') }}</a>
         <p class=""><b>Crear cliente</b></p>
      </div>
      <div class="col-4 col-md-4"></div>
   </div>
   <div class="row"></div>
   </br>
   <div class="box-header with-border">
      <input id="myInput" type="text" placeholder="Buscador de clientes..." class="form-control no-padding-hr" style="background: #F2F2F2 ;" name="gsearch_input">   
      
      <div class="box-body">
         <div class="table-responsive">
            <table id="customers-table" class="table table-condensed table-hover">
               <thead>
                  <tr><th>Cliente N°</th>
                                          <th>F. Creación</th>

                     <th style="width: 13%">Nombre</th>
                     <th style="width: 13%">Apellido</th>
                                          
                                          <th>Marketing</th>
                     <th style="width: 10%">E-mail</th>
                   
                     <th>Documento</th>

                     <th>Acciones</th>
                  </tr>
               </thead>
               <tbody>
                  @php
                  $i=1;
                  foreach($datos as $customers){    
                  @endphp
                  <tr>
                       <td> 
                        {{ $customers->id}}
                     </td>
                     <td> 
                        {{ $customers->created_at->format('d-m-Y:h:m')}}
                     </td>

                     <td>
                        {{ $customers->name}}
                     </td>
                     <td>
                        {{ $customers->last_name}}
                     </td>
                     
                                          <td>
                        {{ $customers->marketing}}
                     </td>
                     <td>
                        {{ $customers->email}}
                     </td>
<td>
                        {{ $customers->number_document }}
                     </td>


                     <td>
                        <!--<a data-toggle="modal" data-customerid="{{ $customers->id }}" data-name="{{ $customers->name }}" data-last_name="{{ $customers->last_name }}"  data-nationality="{{ $customers->nationality }}" data-email="{{ $customers->email}}" data-phone="{{ $customers->phone}}" data-marketing="{{ $customers->marketing}}" data-target="#modal_visit" type="submit" class="btn btn-info">
                           <i class="fa fa-user" data-toggle="tooltip" data-placement="top" title="Asignar visita"></i>
                           </a>-->
                        <a href="{{route('admin.operation.visit.crearvisita',$customers->id)}}" class="btn btn-info">
                        <i class="fa fa-user" data-toggle="tooltip" data-placement="top" title="Asignar visita"></i>
                        </a>
                     </td>
                  </tr>
                  @php
                  $i++;
                  }
                  ?>
               </tbody>
            </table>
         </div>
         <!--table-responsive-->
      </div>
      <!-- /.box-body -->
   </div>
</div>
@endsection
@section('after-scripts')
{{ Html::script("js/bootstrap-select.js") }}
{{ Html::script("js/backend/plugin/datatables/jquery.dataTables.min.js") }}
{{ Html::script("js/backend/plugin/datatables/dataTables.bootstrap.min.js") }}
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
<script>
   $(".js-example-basic-single").select2();
   $(document).ready(function() {
  
   var table = $('#customers-table').DataTable(  {      
   "lengthMenu": [ 5,6,9,12,15,20,30,40,50,60,70,80,90,100],
   "order": [ 0, "desc" ],
   "searching": true}  );
   
   $('#myInput').on( 'keyup', function () {
    table.search( this.value ).draw();
   } );
   
   $("#customers-table_filter").css("display","none");
     
   
   });
   
   
   
   
</script>
@endsection