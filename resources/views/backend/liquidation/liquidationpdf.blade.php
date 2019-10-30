<!doctype html>
<html>
   <head>
      <!--   {{ Html::style('https://fonts.googleapis.com/css?family=Roboto|Roboto+Slab') }} -->
      {{ Html::style("css/bootstrap.css") }}
      {{ Html::style("css/style.css") }}
      <title>{{$liquidation->identifier}}</title>
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
            <p style="font-size: 10px; text-align:justify;"">
               <strong>Cliente: </strong>{{$liquidation->sale->customer['name']}} {{$liquidation->sale->customer['last_name']}}<br>
               <strong>Nro de venta: </strong>{{$identifier_sale}} <br>
               <strong>Vendedor: </strong>{{$namecounter}}<br>
               <strong>Fecha creación: </strong>{{Carbon\Carbon::parse($liquidation->created_at )->format('d-m-Y') }}<br>
            </p>



         </div>
         <div class="col-xs-4 col-xs-offset-2 text-right">
            <p style="text-align:justify;"><b>Liquidación N°:{{$liquidation->identifier}} </b></p>
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
               <thead>
                    <tr class="active">
                        <th style="text-align: center;font-size: 10px;">Nro</th>
                        <th style="text-align: center;font-size: 10px;">Servicio</th>
                        <th style="text-align: center;font-size: 10px;">Proveedor</th>
                        <th style="text-align: center;font-size: 10px;">Cantidad</th>
                        <th style="text-align: center;font-size: 10px;">Costo. Unit</th>
                        <th style="text-align: center;font-size: 10px;">Costo. Total</th>
                        <th style="text-align: center;font-size: 10px;">P. Venta.</th>
                        <th style="text-align: center;font-size: 10px;">F. Pago</th>
                     </tr>
               </thead>
               <tbody class="text-center">
                 
                     @php
                     $i=1;
                     @endphp
                     @foreach($servicios_liquidacion as $servicio_liquidacion)
                        @if($servicio_liquidacion->parent_id == null)
                        <tr class="filapadre">
                           <td>
                              <p style="text-align: center;font-size: 10px;font-size: 10px;">{{$i}}</p>
                           </td>
                           <td>
                              <p style="text-align: center;font-size: 10px;font-size: 10px;">{{$servicio_liquidacion->nameservice}}</p>
                           </td>
                           <td>
                              <p style="text-align: center;font-size: 10px;font-size: 10px;">{{$servicio_liquidacion->nameprovider}}</p>
                           </td>
                           <td>
                              <p style="text-align: center;font-size: 10px;font-size: 10px;">{{$servicio_liquidacion->cantidad}}</p>
                              
                           </td>
                           <td>
                             <p style="text-align: center;font-size: 10px;font-size: 10px;"> $ {{number_format($servicio_liquidacion->costo,2)}}</p>
                             
                           </td>
                           <td>
                              <p style="text-align: center;font-size: 10px;font-size: 10px;">$ {{number_format($servicio_liquidacion->costo * $servicio_liquidacion->cantidad,2) }}</p>
                           </td>
                           <td>
                              <p style="text-align: center;font-size: 10px;font-size: 10px;">$ {{number_format($servicio_liquidacion->price * $servicio_liquidacion->cantidad,2)}}</p>
                        
                           </td>
                           <td>
                              <p style="text-align: center;font-size: 10px;font-size: 10px;">{{ Carbon\Carbon::parse($servicio_liquidacion->fecha_pago)->format('d-m-Y') }}</p>
                           </td>
                        </tr>

                           @endif 
                           @foreach($servicios_liquidacion as $subfila)
                      @if($servicio_liquidacion->id_liquidacion == $subfila->parent_id)
                          <tr>
                          <td></td>
                          <td><p style="text-align: center;font-size: 10px;font-size: 10px;">{{$subfila->nameservice}}</p></td>
                          <td><p style="text-align: center;font-size: 10px;font-size: 10px;">{{$subfila->nameprovider}}</p></td>
                          <td><p style="text-align: center;font-size: 10px;font-size: 10px;">{{$subfila->cantidad}}</p>
                              
                          </td>
                          <td style="width: 20%">
                              <p style="text-align: center;font-size: 10px;font-size: 10px;">$ {{number_format($subfila->costo,2)}}</p>
                              
                          </td> 
         
       
                          <td>
                              <p style="text-align: center;font-size: 10px;font-size: 10px;">{{ Carbon\Carbon::parse($subfila->fecha_pago)->format('d-m-Y') }}</p>
                          </td>
                          <td>
                              
                          </td>
                        </tr>
                      @endif
                    @endforeach
                     @php
                        $i++;
                     @endphp
                     @endforeach


               </tbody>
               <tfoot>


               </tfoot>
            </table>


</div>
</br>

           
                      <table class="table  table-condensed  text-center">
                          <thead><tr class="active">
                            <th style="text-align: center;font-size: 10px;"> Total de venta</th>
                            <th style="text-align: center;font-size: 10px;">Costo total de venta<</th>
                            <th style="text-align: center;font-size: 10px;"> Total de utilidad</th>
                            <th style="text-align: center;font-size: 10px;"> Porcentaje de utilidad</th>

                          </tr>
                          </thead><tbody>
                          <tr>
                            <td style="text-align: center;font-size: 10px;">$ {{number_format($liquidation->p_venta_total,2)}}</td>
                            <td style="text-align: center;font-size: 10px;">$ {{number_format($liquidation->costo_total,2)}}</td>
                            <td style="text-align: center;font-size: 10px;">$ {{number_format($liquidation->total_utility,2)}}</td>
                            <td style="text-align: center;font-size: 10px;">{{ number_format(($liquidation->total_utility/$liquidation->p_venta_total )* 100 ,2) }} %</td>
                          </tr>
                        </tbody>
                        </table>
               
  

             

        
           <div class="flex-container">
                      @php
                       if($files != null){
                      @endphp
                        @foreach($files as $file)

                           <a href="{{$file->route}}" class="flex-item" download="{{$file->name}}">
                              <i class="fa fa-file-text-o fa-5x" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="{{$file->name}}"></i>
                           </a>
                     @endforeach
                      @php
                      } else {
                      @endphp
                  


                  @php
                  }
                  @endphp
                  
                  </div>
           </div><!-- /.box-
         </div>
         <!-- /.box-body -->
      </div>
      <!--box-->
   </body>
</html>

