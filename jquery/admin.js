$(document).ready(function () {
    // Variable global para el li seleccionado
    let selectedLi = null;

    // Todos los li y formularios
    const menuLis = document.querySelectorAll('.sidebar ul li');
    const formularios = document.querySelectorAll('.main-content .formularios');

    // Función para mostrar el formulario correspondiente y ocultar los demás
    function mostrarFormulario(idLi) {
        formularios.forEach(form => {
            if (form.id === idLi + '-form') {
                form.style.display = 'flex';
            } else {
                form.style.display = 'none';
            }
        });
    }

    // Evento para cada li del menú
    menuLis.forEach(li => {
        li.addEventListener('click', function() {
            // Quitar la clase selected del li anterior
            if (selectedLi) {
                selectedLi.classList.remove('selected');
            }
            // Poner selected al nuevo li
            this.classList.add('selected');
            // Guardar referencia global
            selectedLi = this;

            // Mostrar el formulario correspondiente
            mostrarFormulario(this.id);
        });
    });

    // Activar el primer li por defecto al cargar la página
    if (menuLis.length > 0) {
        menuLis[0].click();
    }
});