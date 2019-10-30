
/*Dar Formato de numeros miles a numeros 1000.22  a 1,000.22*/

function formatoMiles(variable){
var a= variable.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
return a;
}

/*Revertir 2,000.20  a 2000.20*/
function formatoMilesReverse(variable){
var a =variable.replace(/,/g,'');
return a;
}