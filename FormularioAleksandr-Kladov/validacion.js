function validar() {
    if (formulario.nombre.value == "") {
        alert("NO PUEDES DEJAR EL NOMBRE VACIO");
    } else if (formulario.password.value == "") {
        alert("DEBES DE INTRODUCIR UNA CONTRASEÑA")
    } else if (formulario.password2.value == "") {
        alert("DEBES DE INTRODUCIR LA SEGUNDA CONTRASEÑA")
    } else if (formulario.password.value != formulario.password2.value) {
        alert("LAS CONTRASEÑAS NO COINCIDEN")
    } else if (formulario.password.value.length < 8) {
        alert("LA CONTRASEÑA DEBE DE TENER MAS DE 8 CARACTERES")
    } else if (formulario.gender.value == "") {
        alert("DEBES SELECCIONAR UN GENERO"); 
    } else if (formulario.gender.value == "other") {
        alert("QUE MIEDO ME DAS");
    } 
    

    else {
        formulario.submit();
    }


}