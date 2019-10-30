<!doctype html>
<html>
   <head>
      <!--   {{ Html::style('https://fonts.googleapis.com/css?family=Roboto|Roboto+Slab') }} -->
      {{ Html::style("css/bootstrap.css") }}
      {{ Html::style("css/style.css") }}
      <title>{{$cotizacion->identifier}}</title>
   </head>
   <body>
      <style>
         #logo { 
         width: 200px;
         height: 48px;
         text-align: right;
         float: right;
         position: relative;
         /*margin-top: auto;*/
         border: none;
         max-width: 500px;
         max-height: 500px;
         overflow: hidden;
         }
         #logo1 { 
         width: 200px;
         height: 100px;
         text-align: left;
         float: left;
         position: relative;
         /*margin-top: auto;*/
         border: none;
         max-width: 500px;
         max-height: 500px;
         overflow: hidden;
         }
         p {
         margin: 0.4cm ;
         }
         body, h1, h2, h3, h4, h5, h6,p,table,strong,div,b{
         font-family: Arial, "Helvetica Neue", Helvetica, sans-serif;
         }
         .justificado {
         text-align: justify;
         text-justify: inter-word;
         }
      </style>
      <!-- 
         <div class="col-xs-2">
              <img  src="img/tikatravel.png">
         </div>
         
         <div class="col-xs-2 col-xs-offset-7">
               <img id="logo" src="img/baner.png" alt="logo">
         </div> 
         
         -->
      <div class="row">
         <div >
            <img id="logo1" src="img/50.png">
         </div>
         <div >
            <img id="logo" src="img/layout.png" alt="logo">
         </div>
      </div>
    
      <div class="row ">
         <div class="col-xs-4 text-left col-xs-offset-0">
            <p style="font-size: 11px; text-align:justify;"">
               <strong>Cliente: </strong>{{$cotizacion->customer['name']}} {{$cotizacion->customer['last_name']}}  <br>
               <strong>Fecha de cotización: </strong> {{$cotizacion->visit->created_at->format('d-m-Y')}}<br>
               <strong>Válido hasta: </strong>{{Carbon\Carbon::parse($cotizacion->created_at )->format('d-m-Y') }}<br>
               <strong>Atendido por: </strong>{{$cotizacion->visit->counter['name']}}<br>
               <strong>Teléfono: </strong>{{$cotizacion->visit->counter['phone']}}<br>
               <strong>Email: </strong>{{$cotizacion->visit->counter['email']}}<br>

               
            </p>
         </div>
         <div class="col-xs-4 col-xs-offset-2 text-right">
            <p style="text-align:justify;"><b>Cotización N°: </b>{{$cotizacion->identifier}}</p>
            <p style="font-size: 10px; text-align:justify;"> Av. Pardo 332, Miraflores,Lima-Perú-
               Teléfonos : +51 1 7199990 / +51 1 987529674 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
               tikatravel@tikagroup.com.pe - tikatravel.pe
            </p>
         </div>
      </div>
      <br>
      <br>
      <div class="box box-success">
         <div class="box-body">
            <table class="table  table-condensed  text-center" >
               <thead  >
                  <tr class="active" >
                     <th style="text-align: center;">Item</th>
                     <th style="text-align: center;">Servicio</th>
                     <th style="text-align: center;">Precio unitario</th>
                     <th style="text-align: center;">Cantidad</th>
                     <th style="text-align: center;">Precio total</th>
                  </tr>
               </thead>
               <tbody class="text-center">
                  @php
                  $i=1;
                  @endphp
                  @foreach($quote_service as $detallecotizacion)
                  <tr>
                     <td>
                        <strong>
                           <p style="text-align: center;font-size: 11px;">{{$i}}</p>
                        </strong>
                     </td>
                     <td>
                        <strong>
                           <p style="text-align: center;font-size: 11px;">{{$detallecotizacion->name}}</p>
                        </strong>
                     </td>
                     <td>
                        <p style="text-align: center;font-size: 11px;">$ {{number_format($detallecotizacion->price,2)}}</p>
                     </td>
                     <td>
                        <p style="text-align: center;font-size: 11px;">{{$detallecotizacion->cantidad}}</p>
                     </td>
                     <td>
                        <p style="text-align: center;font-size: 11px;">$ {{number_format($detallecotizacion->total_price,2)}}</p>
                     </td>
                  </tr>
                  <tr>
                     <td colspan="4">
                        <p style="text-align: justify;font-size: 11px;">{!! nl2br(e($detallecotizacion->coments_service)) !!}</p>
                     </td>
                     <td></td>
                  </tr>
                  @php
                  $i++;
                  @endphp
                  @endforeach 
               </tbody>
               <tfoot>
                  <tr>
                     <td class="text-center"></td>
                     <td class="text-center"></td>
                     <td class="text-center"></td>
                     <td class="text-center"><b>TOTAL</b></td>
                     <td class="text-center"><b>$ {{number_format($costotal,2)}}</b></td>
                  </tr>
               </tfoot>
            </table>
            <br>
            <div class="row ">
               <div class="col-xs-12">
                  <p class="h5" style="text-align: center"> <b>Comentarios/Observaciones/Condiciones</b></p>
                  <hr style=" size: 2px; color: black"/>
                  <p class="justificado" style="font-size: 11px;">
                     {!! nl2br(e($cotizacion->coments)) !!}
                  </p>
               </div>
            </div>
         </div>
         <!-- /.box-body -->
      </div>
      <!--box-->
   </body>
</html>