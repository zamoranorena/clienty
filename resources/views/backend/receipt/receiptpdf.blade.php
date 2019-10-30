<!doctype html>
<html>
   <head>
      <!--   {{ Html::style('https://fonts.googleapis.com/css?family=Roboto|Roboto+Slab') }} -->
      {{ Html::style("css/bootstrap.css") }}
      {{ Html::style("css/style.css") }}
      <title>{{$receipt->identifier}}</title>
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
         .margen {
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
            <p class="margen" style="font-size: 12px; text-align:justify">
               <strong>Cliente: </strong>{{ $cliente_name.' '.$cliente_last_name }} <br>
               <strong>Nro. de documento:</strong>   <br>               
               <strong>Fecha:</strong> {{$receipt->created_at->format('d-m-Y')}} <br>
               <strong>Reimpresión:</strong> {{Carbon\Carbon::parse($day )->format('d-m-Y')}}<br>
               <strong>Vendedor: </strong>{{$vendedor}}<br>                
               <strong>Cajero: </strong>{{$cajero}}<br>  
               <strong>Nro. Venta: </strong>{{$correlativo_venta}}
            </p>
         </div>
         <div class="col-xs-4 col-xs-offset-2 text-right">
            <p class="margen" style="text-align:justify;"><b>Recibo Nro: {{$receipt->identifier}} </b></p>
            <p class="margen" style="font-size: 10px; text-align:justify;"> Av. Pardo 332, Miraflores,Lima-Perú-
               Teléfonos : +51 1 7199990 / +51 1 987529674 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
               tikatravel@tikagroup.com.pe - tikatravel.pe &nbsp; &nbsp; 
            </p>
              <strong><p style="text-align: center;font-size: 14px;">Total: $ {{number_format($total,2)}}</p></strong></td>   
         </div>
      </div>
      <br>
      <div class="box box-success">
         <div class="box-body">
          
          <table class="table  table-condensed  text-center" >
           <thead >
                <tr  class="active" >
                  <th class="text-center" style="text-align: left; font-size: 10px;" height="10" >Servicios</th>
                </tr>
              </thead>
              </table>

          <table class="table  table-condensed  text-center" >
           <thead >
                <tr  class="active" >
                  <th class="text-center" style="text-align: center; font-size: 10px;" height="10" >Nro</th>
                  <th class="text-center" style="text-align: center; font-size: 10px;" height="10">Descripción</th>
                  <th class="text-center" style="text-align: center; font-size: 10px;" height="10">Cantidad</th>
                  <th class="text-center" style="text-align: center; font-size: 10px;" height="10">Precio Total</th>                                                                  
                </tr>
              </thead>
              <tbody >
                @php
                  $i=1;
                @endphp
                @foreach($sale_service as $servicio)
                  <tr>
                    <td class="text-center"  height="10">
                      <p style="text-align: center;font-size: 10px;">{{$i}}</p>
                    </td>
                    <td class="text-center"  height="10">
                      <p style="text-align: center;font-size: 10px;">{{$servicio->name}}</p>
                    </td>
                    <td class="text-center"  height="10"><p style="text-align: center;font-size: 11px;">{{$servicio->cantidad}}</p>
                    </td>
                   <td class="text-center"  height="10"><p style="text-align: center;font-size: 11px;">$ {{number_format($servicio->total_price,2)}}</p>
                   </td>                    
                  </tr>

                @php
                    $i++;
                  @endphp
                @endforeach
               </tbody>
            </table>
   
          <table class="table  table-condensed  text-center" >
           <thead >
                <tr  class="active" >
                  <th class="text-center" style="text-align: left; font-size: 10px;" height="10" >Pagos</th>
     
                </tr>
              </thead>
              </table>
            <table class="table  table-condensed  text-center" >
           <thead >
                <tr  class="active" >
                  <th class="text-center" style="text-align: center; font-size: 10px;" height="10" >Nro</th>
                  <th class="text-center" style="text-align: center; font-size: 10px;" height="10">Fecha de creación</th>
                  <th class="text-center" style="text-align: center; font-size: 10px;" height="10">Cajero</th>                                   
                  <th class="text-center" style="text-align: center; font-size: 10px;" height="10">Tipo de pago</th>
                  <th class="text-center" style="text-align: center; font-size: 10px;" height="10">Monto</th>
                  <th class="text-center" style="text-align: center; font-size: 10px;" height="10">Comisión bancaria</th>

                  <th class="text-center" style="text-align: center; font-size: 10px;" height="10">Pago Total</th>
                                 
                </tr>
              </thead>
              <tbody >
                @php
                  $i=1;
                @endphp
                @foreach($deposits as $deposit)
                  <tr >
                    <td class="text-center"  height="10">
                      <p style="text-align: center;font-size: 10px;">{{$i}}</p>
                    </td>
                    <td class="text-center"  height="10">
                      <p style="text-align: center;font-size: 10px;">{{$deposit->created_at->format('d-m-Y')}}</p>
                    </td>
                    <td class="text-center"  height="10"><p style="text-align: center;font-size: 11px;">{{$deposit->usuario}}</p></td>
                    <td class="text-center"  height="10">
                      <p style="text-align: center;font-size: 10px;">{{$deposit->name}}</p>
                    </td>
                    <td class="text-center"  height="10">
                      <p style="text-align: center;font-size: 10px;">$ {{number_format($deposit->amount,2)}}</p>
                    </td>
                    <td class="text-center"   height="10">
                    <p style="text-align: center;font-size: 10px;"> $ {{number_format($deposit->commission,2)}}</p>
                    </td>
                    <td class="text-center"   height="10">
                    <p style="text-align: center;font-size: 10px;"> $ {{number_format($deposit->amount_commission,2)}}</p>
                    </td>

                  </tr>

                @php
                    $i++;
                  @endphp
                @endforeach
               </tbody>
               <tfoot>
               <tr>
                 <td colspan="7">
               </tr>


                 <tr class="estilo">
                    <td height="10"></td>
                    <td height="10"></td>
                    <td height="10"></td>
                    <td height="10"></td>
                    <td height="10"></td>
                    <td class="estilo"><strong> <p style="text-align: center;font-size: 10px;"><strong>Total Abonado:</strong></p></strong></td><td class="text-center"><p style="text-align: center;font-size: 10px;">$ {{number_format($abono,2)}}</p>
                    </td>
                  </tr>
                  
                  
                  
                  @if($restante!=0 && $restante!=null)
                   <tr class="estilo">

                   <td height="10"></td><td height="10"></td><td height="10"></td><td height="10"></td> <td class="estilo" height="10"><strong> <p style="text-align: center;font-size: 10px;">Restante:</p></strong></td><td class="text-center" height="10"> <p style="text-align: center;font-size: 10px;">$ {{number_format($restante,2)}}</p></td>
                  </tr>
                  @endif
               </tfoot>
            </table>
            <br>
            <div class="row">
               <div class="col-xs-12">
                   <p style="text-align: center;font-size: 10px;"> <b>Comentarios/Observaciones/Condiciones</b></p>
            
                  <p style="text-align: justify;font-size: 10px">
                     {{$receipt->coments}}
                  </p>
               </div>
            </div>
         </div>
         <!-- /.box-body -->
      </div>
      <!--box-->
   </body>
</html>