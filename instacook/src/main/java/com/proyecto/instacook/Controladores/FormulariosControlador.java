package com.proyecto.instacook.Controladores;

import com.proyecto.instacook.Entidades.*;
import com.proyecto.instacook.Repositorios.IcRecetasRepository;
import com.proyecto.instacook.Repositorios.IcUsuarioRepository;
import com.proyecto.instacook.Repositorios.IcValoracionRepository;
import com.proyecto.instacook.Repositorios.VistaRecetasValoracionRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.List;
import java.util.Map;

@RequestMapping("/formulario")
@Controller
public class FormulariosControlador {

    @Autowired
    private IcValoracionRepository comentarioRepository;

    @Autowired
    private IcUsuarioRepository usuarioRepo;

    @Autowired
    private IcRecetasRepository recetasRepository;

    @Autowired
    private VistaRecetasValoracionRepository vistaMediaRepository;

    @PostMapping("/login")
    public String verificarLogin(@RequestParam String nombreUsuario,
                                 @RequestParam String password,
                                 HttpSession session,
                                 Model model) {
        if(nombreUsuario.equals("admin") && password.equals("admin")){
            IcUsuario admin=new IcUsuario();
            admin.setNombreUsu("admin");
            session.setAttribute("usuario",admin);
            return "redirect:/admin/formularios";
        }
        IcUsuario usuario = usuarioRepo.findByNombreUsuAndPassword(nombreUsuario, password);

        if (usuario != null) {
            session.setAttribute("usuario", usuario);
            model.addAttribute("usuario", usuario);
            List<VistaRecetasValoracion> recetasUsu = vistaMediaRepository.findByUsuario_NombreUsu(usuario.getNombreUsu());
            model.addAttribute("recetas", recetasUsu);
            model.addAttribute("cantidad", recetasUsu.size());
            return "Perfil";
        } else {
            model.addAttribute("error", "Usuario o contraseña incorrectos");
            return "InicioSesion";
        }
    }



    @PostMapping("/valorar")
    public ResponseEntity<String> valorar(@RequestBody Map<String, Object> datos, HttpSession session) {
        IcUsuario usuario = (IcUsuario) session.getAttribute("usuario");
        if (usuario == null) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("No has iniciado sesión.");
        }


        Integer recetaId = ((Number) datos.get("recetaId")).intValue();
        Integer valoracion = ((Number) datos.get("valoracion")).intValue();
        String comentario = (String) datos.get("comentario");

        if (recetaId == null || recetaId == 0) {
            return ResponseEntity.badRequest().body("ID de receta inválido.");
        }

        IcRecetas receta = recetasRepository.findById(recetaId).orElse(null);
        if (receta == null) {
            return ResponseEntity.badRequest().body("Receta no encontrada.");
        }


        IcValoracionId id = new IcValoracionId();
        id.setIdReceta(recetaId);
        id.setNombreUsu(usuario.getNombreUsu());

        IcValoracion nueva = new IcValoracion();
        nueva.setId(id);
        nueva.setReceta(receta);
        nueva.setNombreUsu(usuario);
        nueva.setValoracion(valoracion);
        nueva.setComentario(comentario);

        comentarioRepository.save(nueva);
        return ResponseEntity.ok("Comentario guardado con éxito.");
    }

    @PostMapping("/registro")
    public String registrarUsuario(@RequestParam String nombre,
                                                   @RequestParam String usuario,
                                                   @RequestParam String email,
                                                   @RequestParam String password,
                                                   @RequestParam("archivo") MultipartFile archivo,HttpSession session) {
        try {

            String nombreArchivo = archivo.getOriginalFilename();
            String ruta = new File("src/main/resources/static/imagenes").getAbsolutePath() + File.separator + nombreArchivo;
            System.out.println("Archivo recibido: " + archivo.getOriginalFilename());
            System.out.println("Tamaño: " + archivo.getSize());
            archivo.transferTo(new File(ruta));


            IcUsuario nuevo = new IcUsuario();
            nuevo.setNombre(nombre);
            nuevo.setNombreUsu(usuario);
            nuevo.setCorreo(email);
            nuevo.setPassword(password);
            nuevo.setImagen(nombreArchivo);

            usuarioRepo.save(nuevo);
            session.setAttribute("usuario",nuevo);
            return "redirect:/InicioSesion";

        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/FormRegistro";
        }
    }


    @PostMapping("/verificar-usuario")
    public ResponseEntity<Boolean> verificarUsuario(@RequestParam String usuario) {
        boolean existe = usuarioRepo.existsByNombreUsu(usuario);
        System.out.println(existe);
        return ResponseEntity.ok(!existe);
    }

    @PostMapping("/verificar-email")
    public ResponseEntity<Boolean> verificarEmail(@RequestParam String correo) {
        boolean existe = usuarioRepo.existsByCorreo(correo);
        return ResponseEntity.ok(!existe);
    }

    @PostMapping("/modificar")
    public String modificarUsuario(@RequestParam String nombre,
                                                   @RequestParam String email,
                                                   @RequestParam("archivo") MultipartFile archivo,HttpSession session) {
        IcUsuario usu =(IcUsuario) session.getAttribute("usuario");
        // 1. Buscar el usuario por su nombre de usuario (PK)
        IcUsuario user = usu;

        if(nombre!=null){
            user.setNombre(nombre);
        }
        if(email!=null){
            user.setCorreo(email);
        }



        // 3. Procesar archivo si lo hay
        if (archivo != null && !archivo.isEmpty()) {
            try {
                    String nombreArchivo = archivo.getOriginalFilename();
                    String ruta = new File("src/main/resources/static/imagenes").getAbsolutePath() + File.separator + nombreArchivo;
                    System.out.println("Archivo recibido: " + archivo.getOriginalFilename());
                    System.out.println("Tamaño: " + archivo.getSize());
                    archivo.transferTo(new File(ruta));
                    user.setImagen(nombreArchivo);
            } catch (Exception e) {
                return "redirect:/Perfil?mensaje=Error%20modificando";
            }
        }

        // 4. Guardar cambios
        usuarioRepo.save(user);

        session.setAttribute("usuario",user);


        return "redirect:/Perfil?mensaje=Datos%20modificados";
    }

    @PostMapping("/modificarC")
    public String modificarContra(@RequestParam String password,HttpSession session) {
        IcUsuario usu =(IcUsuario) session.getAttribute("usuario");

        IcUsuario user = usu;

        user.setPassword(password);

        usuarioRepo.save(user);

        session.setAttribute("usuario",user);


        return "redirect:/Perfil?mensaje=Contraseña%20modificada";
    }

}
