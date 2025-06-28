document.addEventListener('DOMContentLoaded', () => {

    const botonLogin = document.getElementById('login');
    const botonCreateAccount = document.getElementById('create-account');




    document.getElementById('login').addEventListener('click', function () {
        window.location.href = '../assets/login.html';
    });

    document.getElementById('create-account').addEventListener('click', function () {
        window.location.href = '../assets/create-account.html'
    })


    
});