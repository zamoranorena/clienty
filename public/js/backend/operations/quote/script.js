
     var i=0;
        //Haciendo una peticion con ajax
        $('select[name="select_services"]').on('select2:select', function (event){
        $('select[name="select_services"]').val(null).trigger("change");
          //Contador
        i = i + 1;
        console.log(i)
            if (event.params.data.id==0){
                 $('.services_table tbody').append('<tr><td><input type="hidden" value='+event.params.data.id+' name="service_id"><input type="text" class="form-control" placeholder="Escribir servicio" id="servicio'+i+'"></td><td><input type="text" class="form-control" value="" id="precio'+i+'" onChange="multiplicar('+i+')"></td><td><input type="number" class="form-control" value="1" id="cantidad'+i+'" onChange="multiplicar('+i+')"></td><td><input type="number" class="form-control"  value="'+(2 * 1)+'" id="resultado'+i+'" onChange="multiplicar('+i+')"></td><td><button type="button" class="btn btn-danger btn-sm" id="eliminarNodo" >Eliminar</button></td></tr>'
                  );
                 eliminarFila();
                 actualizarTotalCotizacion();
            }else{
              $.ajax({
               url: '{{URL::to("admin/access/getservice")}}/'+event.params.data.id,
               data: {
                  format:'json',
                  id: event.params.data.id
               },
               error: function(){
               },
               dataType:'json',
               success: function(service){  
                $('.services_table tbody').append(
                  '<tr>\
                      <td><input type="hidden" value='+event.params.data.id+' name="service_id[]"><input type="text" class="form-control " value="'+service.name+'" id="nombre'+i+'" onChange="multiplicar('+i+')" ></td>\
                      <td><input type="text" class="form-control " value="'+service.price+'" id="precio'+i+'"            onChange="multiplicar('+i+')"></td>\
                      <td><input type="number" class="form-control " value="1" id="cantidad'+i+'" onChange="multiplicar('+i+')"></td>\
                      <td><input type="number" class="form-control resultado" value="'+(service.price*1)+'" id="resultado'+i+'" onChange="multiplicar('+i+')"></td>\
                      <td>\
                      <button type="button" class="btn btn-danger btn-sm" id="eliminarNodo" >Eliminar</button> </td>\
                  </tr>'
                  );
                //Eliminando una fila de una tabla
                eliminarFila();
                actualizarTotalCotizacion();
               }
            }
            );
            }

          }
          );

        function multiplicar(j){
            var m1 = document.getElementById("precio"+j).value;
            var m2 = document.getElementById("cantidad"+j).value;
            var r = m1*m2;
            document.getElementById("resultado"+j).value = r;
            actualizarTotalCotizacion();
        }

        function actualizarTotalCotizacion(){
            var valortotal=0;
               $(".services_table tbody tr").each(function(){
                   valortotal = valortotal + parseFloat($(this).find(".resultado").val());
               $("#totales").html(valortotal)
               console.log(valortotal)
               });
        }
        function eliminarFila(){
          $('.services_table #eliminarNodo').click(function(){
                    $(this).parent().parent().remove();
                    console.log($(this).parent().parent().remove());         
          });
        }
