 $(document).ready(function () {

     $.validator.addMethod("contraIguales", function (value, element) {
         return value === $('#password').val();
     }, "Las contraseñas no coinciden.");

     $("#form-registro").validate({
         rules: {
             nombre: { required: true },
             usuario: {
                 required: true,
                 remote: {
                     url: "/formulario/verificar-usuario",
                     type: "POST",
                     data: {
                         usuario: function () {
                             return $("#usuario").val();
                         }
                     }
                 }
             },
             email: {
                 required: true,
                 email: true,
                 remote: {
                     url: "/formulario/verificar-email",
                     type: "POST",
                     data: {
                         correo: function () {
                             return $("#email").val();
                         }
                     }
                 }
             },
             password: {
                 required: true,
                 minlength: 6
             },
             "repeat-password": {
                 required: true,
                 contraIguales: true
             },
             archivo: {
                 required: true,
                 extension: "jpg|jpeg|png|gif"
             }
         },
         messages: {
             usuario: { remote: "Este nombre de usuario ya existe." },
             email: { remote: "Este correo ya está registrado." }
         },
         errorPlacement: function(error, element) {
            // Busca si ya existe un <ul> dentro de #error para listar los errores
            let $errorList = $("#error ul");
            if ($errorList.length === 0) {
                // Si no existe, crea un <ul> vacío dentro de #error
                $("#error").html("<ul></ul>");
                $errorList = $("#error ul");
            }
            // Elimina el mensaje de error previo de este campo, si ya existía (así no se duplican)
            $errorList.find("li[data-error='" + element.attr("name") + "']").remove();
            // Crea un <li> nuevo para el error de este campo
                .attr("data-error", element.attr("name")) // Le añado data-error para identificar el campo al corregirlo
                .html(error.text())                     // Pongo el mensaje de error como texto
                .appendTo($errorList);                  //Lo añado al ul
         },
         highlight: function (element) {
             $(element).addClass("is-invalid");
         },
         unhighlight: function (element) {
             $(element).removeClass("is-invalid");
            // Quita el error de este campo del <ul>
            let $errorList = $("#error ul");
            $errorList.find("li[data-error='" + $(element).attr("name") + "']").remove();
            // Si no hay más errores, limpia #error
            if ($errorList.children().length === 0) {
                $("#error").html("");
            }
         },
         invalidHandler: function(event, validator) {
          console.log(" Formulario con errores:");
            console.log(validator.errorList);
             $("#error").html(""); // Limpia antes de mostrar nuevos errores
         },
         submitHandler: function (form) {
             console.log("Enviando formulario...");
             const formData = new FormData(form);

             $.ajax({
                 url: "/formulario/registro",
                 type: "POST",
                 data: formData,
                 contentType: false,
                 processData: false,
                 success: function () {
                     window.location.href = "/InicioSesion";
                 },
                 error: function (xhr) {
                     $("#error").html("Error al registrar: " + xhr.responseText);
                 }
             });
         }
     });
 });