@extends('backend.layouts.app')

@section ('title', 'Listar')

@section('after-styles')
    {{ Html::style("css/backend/plugin/datatables/dataTables.bootstrap.min.css")}}
    {{ Html::style("css/font-awesome.min.css") }}
    {{ Html::style("css/bootstrap.css") }}
@endsection

@section('page-header')
    <h1>
        <h1>Reporte de utilidades
        <small>Mensual de utilidades</small>
        </h1>
    </h1>
@endsection
@section('content')
    <div class="box box-success">
        <div class="box-header with-border">
              <h3 class="box-title">Utilidad por liquidación</h3>
         
          </div>
        <div class="box-body">
          	<table class="table table-striped table_liquidation">
              	<thead>
                	<tr>
	                    <th>#</th>
	                    <th style="width: 170px;">Nro Liquidación</th>
                      <th style="width: 170px;">Nro Venta</th>
	                    <th>Cliente</th>
	                    <th>Utilidad</th>
	                    <th>Creacion</th>
                      <th>Vendedor</th>

                	</tr>
              	</thead>
              <tbody>
                  @php
                  $i=1;
                  @endphp
                  @foreach($liquidations as $liquidation)
                      @php
                        if($liquidation['id']==$liquidation['liquidacion']){
                      @endphp
                        <tr>
                            <td>
                                {{$i}}
                            </td>
                            <td>
                                {{$liquidation->identifier}}
                            </td>
                            <td>
                                {{$liquidation->sale_identifier}}
                            </td>
                            <td>
                                {{$liquidation->sale->customer['name']}} {{$liquidation->sale->customer['last_name']}}
                            </td>
                            <td>
                                {{number_format($liquidation->total_utility,2)}}
                            </td>
                            <td>
                                {{Carbon\Carbon::parse($liquidation->create_at)->format('d-m-Y')}}
                            </td>
                            <td>
                                {{$liquidation->counter}}
                            </td>

                        </tr>
                      @php
                        }
                      @endphp
                      
                  @php
                  $i++;
                  @endphp
                  @endforeach 	
              </tbody>
            </table>
        </div>
        

        <div class="box-header with-border">
              <h3 class="box-title">Reporte de utilidades Año-Mes</h3>
         
          </div>
 <div class="box-body">
 

            <table class="table table-striped text-center" id="utilidadesto">
                <thead>
                  <tr>
                      <th>#</th>
                      <th style="width: 170px;">Año</th>
                      <th style="width: 170px;">Mes</th>
                      <th style="width: 170px;">Vendedor</th>
                      <th>Total de utilidad</th>

                  </tr>
                </thead>
              <tbody>
                  @php
                  $i=1;
                  @endphp
                  @foreach($utilidades as $utilidad)

                        <tr>
                            <td>
                                {{$i}}
                            </td>
                            <td>
                                {{$utilidad->Ano}}
                            </td>
                            <td>
                                {{$utilidad->Mes}}
                            </td>
                            <td>
                                {{$utilidad->counter}}
                            </td>
                            <td>
                                $ {{number_format($utilidad->Cantidad,2)}}
                            </td>

                        </tr>

                  @php
                  $i++;
                  @endphp
                  @endforeach   
              </tbody>
            </table>
        </div>


        <div class="box-footer">
          
        </div>
    </div>
@endsection
@section('after-scripts')
{{ Html::script("js/backend/plugin/datatables/jquery.dataTables.min.js") }}
    {{ Html::script("js/backend/plugin/datatables/dataTables.bootstrap.min.js") }}
<script>
      $(document).ready(function() {
        $('.table_liquidation').DataTable({
                    "lengthMenu": [30,40,50,60,70,80,90,100,150,200,300],
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
      });

            $(document).ready(function() {
        $('#utilidadesto').DataTable({
                    "lengthMenu": [30,40,50,60,70,80,90,100,150,200,300],
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
      });
    </script>
@endsection