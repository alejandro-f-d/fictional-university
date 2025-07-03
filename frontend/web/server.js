const express = require('express');
const path = require('path');
const app = express();
const PORT = 8080;

// Servir archivos estáticos (CSS, JS, imágenes)
app.use(express.static(path.join(__dirname, '')));

// Rutas personalizadas
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'assets/inicio.html'));
});

app.get('/login', (req, res) => {
  res.sendFile(path.join(__dirname, 'assets/login.html'));
});

app.get('/pagina_crear_cuenta_login.html', (req, res) => {
  res.sendFile(path.join(__dirname, 'assets/pagina_crear_cuenta_login.html'));
});

app.listen(PORT, () => {
  console.log(`Servidor corriendo en http://localhost:${PORT}`);
});
