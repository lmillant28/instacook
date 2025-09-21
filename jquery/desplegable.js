
function openModal(id) {
    console.log("Intentando abrir modal con id:", id);
    var modal = document.getElementById(id);
    if (modal) {
      modal.style.display = 'flex';
    } else {
      console.error('No existe el modal con id:', id);
    }
}

function closeModal(id) {
  document.getElementById(id).style.display = 'none';
}
// Cerrar pulsando fuera
window.onclick = function(event) {
  // Busca todos los modales que están visibles
  document.querySelectorAll('.modal').forEach(function(modal) {
    if (event.target === modal) {
      modal.style.display = 'none';
    }
  });
}

function activarInputNuevaLista() {
   document.getElementById('nuevaListaSpan').style.display = 'none';
   document.getElementById('nuevaListaForm').classList.remove('d-none');
   document.getElementById('nombreNuevaLista').focus();
 }

 function crearLista(event) {
   event.preventDefault();
   console.log("Crear lista lanzado");
   const nombre = document.getElementById('nombreNuevaLista').value.trim();
   if (!nombre) return;

   fetch('/listas/crear', {
     method: 'POST',
     headers: { 'Content-Type': 'application/json' },
     body: JSON.stringify({ nombre })
   })
   .then(response => response.json())
   .then(data => {
     if (data.idCarpeta && data.nombre) {
       const folderList = document.querySelector('.folder-list');
       const btn = document.createElement('button');
       btn.type = "submit";
       btn.name = "listaId";
       btn.value = data.idCarpeta;
       btn.className = "folder";
       btn.title = `Añadir a ${data.nombre}`;
       btn.innerHTML = `<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-folder" viewBox="0 0 16 16">
                                        <path d="M.54 3.87.5 3a2 2 0 0 1 2-2h3.672a2 2 0 0 1 1.414.586l.828.828A2 2 0 0 0 9.828 3h3.982a2 2 0 0 1 1.992 2.181l-.637 7A2 2 0 0 1 13.174 14H2.826a2 2 0 0 1-1.991-1.819l-.637-7a2 2 0 0 1 .342-1.31zM2.19 4a1 1 0 0 0-.996 1.09l.637 7a1 1 0 0 0 .995.91h10.348a1 1 0 0 0 .995-.91l.637-7A1 1 0 0 0 13.81 4zm4.69-1.707A1 1 0 0 0 6.172 2H2.5a1 1 0 0 0-1 .981l.006.139q.323-.119.684-.12h5.396z"/>
                                      </svg><span>${data.nombre}</span>`;
       folderList.appendChild(btn);

       document.getElementById('nombreNuevaLista').value = '';
       document.getElementById('nuevaListaForm').classList.add('d-none');
       document.getElementById('nuevaListaSpan').style.display = '';
     } else {
       alert("Error al crear la lista");
     }
   })
   .catch(() => alert("Error al conectar con el servidor"));
 }

 function crearNueva(event) {
    event.preventDefault();
    const nombre = document.getElementById('nombreNuevaLista').value.trim();
    if (!nombre) return;
    $.ajax({
      url: '/listas/crear',
      method: 'POST',
      contentType: 'application/json',
      data: JSON.stringify({ nombre: nombre }),
      success: function(response) {
        console.log(response);
        window.location.href = '/perfil/listasUsu';
      },
      error: function(xhr, status, error) {
         alert(error);
      }
    });
  }




