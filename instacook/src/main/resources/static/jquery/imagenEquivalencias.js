function openImagen() {
        document.getElementById("modalImagenI").style.display = "block";
}
    function closeImagen() {
        document.getElementById("modalImagenI").style.display = "none";
    }
    window.onclick = function(event) {
        const modal = document.getElementById("modalImagenI");
        if (event.target == modal) {
            closeImagen();
        }
    }