window.alert("MENSAJE DE BIENVENIDA!!");

/*var a="HOLA";
var nombre = prompt("DIME TU NOMBRE");
var b="CREO QUE ME GUSTAS";
var c;
c= a + " " + nombre + " " + b;
window.document.write(c);
*/
window.document.write("<br/>");    //salto de linea

var edad = prompt("DIME TU EDAD"); //pide la edad pero esta la considera como texto
edad = parseInt(edad);             //transformacion en un numero entero
edadSumada = edad + 10;
window.document.write("TU EDAD DENTRO DE 10 AÑOS SERA: " + edadSumada);

//FUNCIONES
function prueba() {
    alert("HELLO WORLD");   //call the alert in h1
}

function texto() {
    window.document.write("*************")
}
function nombre() {
    texto();
    var nombre = prompt("DIME TU NOMBRE");
    var c = "HELLO " + nombre;
    window.document.write(c);
    texto();
}