document.addEventListener('DOMContentLoaded', () => {
    const inputCorreo = document.getElementById('entrada-usuario-correo');
    const correo_login = document.getElementById('correo-login');
    const boton_login = document.getElementById('entrar');
    const contrasenaCorreo = document.getElementById('entrada-usuario-contrasena');

   
    document.getElementById('entrar').addEventListener('click', function () {
        console.log(inputCorreo.value);
        console.log(contrasenaCorreo.value);
    });

    

});