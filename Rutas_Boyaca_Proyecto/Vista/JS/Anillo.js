// Obtener el elemento del título
const titleElement = document.getElementById('animatedTitle');

// Función para ocultar el título después de unos segundos
function hideTitle() {
    titleElement.style.opacity = '0';
}

// Esperar 3 segundos (3000 milisegundos) y luego ocultar el título
setTimeout(hideTitle, 3000);
