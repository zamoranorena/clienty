@extends('backend.layouts.app')

@section ('title', 'Recibos de caja')

@section('after-styles')
    {{ Html::style("css/backend/plugin/datatables/dataTables.bootstrap.min.css") }}
    {{ Html::style("css/bootstrap.css") }}
    <style type="text/css">
      .box-body form{
        float: left;
        width: 25px;
      }
    </style>
@endsection

@section('page-header')
  <h1>
      Gestión de recibos
      <small>Panel de recibos</small>
  </h1>
@endsection

@section('content')
  <div class="box box-success">
    <div class="box-header with-border">     
      <h3 class="box-title">Recibos Eliminados</h3>
        <div class="box-tools pull-right">
          @include('backend.receipt.includes.partials.receipt-header-buttons')
        </div>
    </div>
    <div class="box-body">
      <div class="table-responsive">
        <table id="receipt-table" class="table table-condensed table-hover eliminar">
          <thead>
            <tr>
              <th>Nro</th>
              <th>Nombres</th>
              <th>Apellidos</th>
              <th>Vendedor</th>
              <th>Nro. de recibo</th>
              <th>Nro. de venta</th>
              <th>Estado</th>
              <th>Total</th>
              <th>F. Creación</th>              
              <th>Acciones</th>
            </tr>
          </thead>
          <tbody>
            @php
              $i=1;
            @endphp
              @foreach($receipts as $receipt)
                <tr>
                  <td>
                    {{$i}}
                  </td>
                  <td>
                    {{ $receipt->sale->customer['name']}}
                  </td>  
                  <td>
                    {{ $receipt->sale->customer['last_name']}}
                  </td>
                  <td>
                    {{ $receipt->namecounter}}
                  </td>
                  <td>
                    {{ $receipt->identifier}}
                  </td>
                  <td>
                    {{ $receipt->sale_identifier}}
                  </td>

                  <td>
                      @php
                        if($receipt->monto_total==$receipt["monto"]){
                      @endphp
                          <span class="label label-danger">Pagado</span>
                      @php
                      }else{
                      @endphp
                          <span class="label label-success">Abierto</span>
                      @php
                        }
                      @endphp
                  </td>
                  <td>
                    $ {{ number_format($receipt->monto_total,2)}}
                  </td>
                  <td>
                    {{ $receipt->created_at->format('d-m-Y')}}
                  </td>
                  <td>
                      	@permission('restaurarrecibos')
	                        <div class="form-group">
	                        	{{ Form::open(['method' => 'DELETE', 'route' => ['admin.box.receipt.restore', $receipt->id],'class'=>'restaurar']) }}
	                          		<button type="submit" data-toggle="tooltip" data-placement="top" title="Restaurar recibo" class="btn btn-info"><i class="fa fa-refresh" ></i></button>
	                          	{{ Form::close() }}
	                        </div>
                      	@endauth 
                  </td>
                </tr>
                @php
                  $i++;
                @endphp
              @endforeach
          </tbody>
        </table>
      </div>
    </div>
  </div>
@endsection

@section('after-scripts')
    {{ Html::script("js/backend/plugin/datatables/jquery.dataTables.min.js") }}
    {{ Html::script("js/backend/plugin/datatables/dataTables.bootstrap.min.js") }}
    <script>
      $(document).ready(function() {
        $('#receipt-table').DataTable({
          "language":{
                    "sProcessing":     "Procesando...",
                    "sLengthMenu":     "Mostrar _MENU_ registros",
                    "sZeroRecords":    "No se encontraron resultados",
                    "sEmptyTable":     "Ningún dato disponible en esta tabla",
                    "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                    "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
                    "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
                    "sInfoPostFix":    "",
                    "sSearch":         "Buscar:",
                    "sUrl":            "",
                    "sInfoThousands":  ",",
                    "sLoadingRecords": "Cargando...",
                    "oPaginate": {
                        "sFirst":    "Primero",
                        "sLast":     "Último",
                        "sNext":     "Siguiente",
                        "sPrevious": "Anterior"
                    },
                    "oAria": {
                        "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
                        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                    }
          }
        });
        $( ".restaurar" ).submit(function( event ){
          var form = this;
          event.preventDefault();
          var tabla = $("#receipt-table tbody tr").length;
          swal({
            title: "¿Esta segura de restaurar este recibo?",
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
      });

      

    </script>
 
 <!--<script type="text/javascript">
    $(document).ready(function() {
        oTable = $('#sales-table').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": "{{ route('admin.operation.sales.datatable') }}",
            "columns": [
                {data: 'nombre_cliente', name: 'nombre_cliente'},
                {data: 'apellido_cliente', name: 'apellido_cliente'},
                {data: 'tipo_pago', name: 'tipo_pago'},
                {data: 'identificador', name: 'identificador'},
                {data: 'fechacreada', name: 'fechacreada'},
                {data: 'montototal', name: 'montototal'},
                {data: 'montopagado', name: 'montopagado'},

            ]
        });
    });
    </script>-->
@endsection

