function ventanas() {
	//coge el valor obtenido del id edad del formulario
	var edad = parseInt(document.getElementById("edad").value);
	
	if (edad >= 0 && edad <= 18) {
		window.open("html/monopatin.html", "_blank", "width=500,height=500");
	} else if (edad > 18 && edad <= 40) {
		window.open("html/coche.html", "_blank", "width=500,height=500");
	} else if (edad > 40 && edad <= 100) {
		window.open("html/vacaciones.html", "_blank", "width=500,height=500");
	} else {
		alert("LA EDAD DEBE DE ESTAR COMPRENDIDA ENTRE 0 Y 100");
	}
}