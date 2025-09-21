package com.proyecto.instacook.Controladores;

import com.proyecto.instacook.Entidades.*;
import com.proyecto.instacook.Repositorios.*;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;
/*Este es el controlador de todo lo relacionado con la página de Admin*/
@RequestMapping("/admin")
@Controller
public class AdminController {
    /*Necesitaremos varios repositorios para acceder a las tablas de la base de datos que utilizamos*/
    @Autowired
    private IcRecetasRepository recetasRepository;

    @Autowired
    private IcUsuarioRepository usuarioRepo;

    @Autowired
    private IcCategoriasRepository categoriaRepository;

    @Autowired
    private IcIngredientesRepository ingredientesRepository;

    @Autowired
    private IcAlergenosRepository alergenosRepository;

    @Autowired
    private IcIngredientesconalergenosRepository ingredientesAlergenosRepository;

    @Autowired
    private JavaMailSender mailSender;//Este es para poder enviar loa avisos a los usuarios

    @Autowired
    private VistaRecetasValoracionRepository mediaRecetas;

    @GetMapping("/formularios")
    public String datos(Model model, HttpSession session){
        /*Este enlace sirve para que veamos los diferentes formularios que hay accesible para el admin.
        *Además mandamos datos que vamos a necesitar para mostar como las lista de las mejores recetas
        * los alérgenos que tenemos y los usuarios. */
        List<IcAlergenos> alergenos =alergenosRepository.findAllByOrderByNombreAsc();
        List<IcUsuario> usuarios =usuarioRepo.findAll();
        List<VistaRecetasValoracion> recetasMejores=mediaRecetas.findTop10ByOrderByMediaDesc();
        model.addAttribute("recetas",recetasMejores);
        model.addAttribute("alergenos",alergenos);
        model.addAttribute("usuarios",usuarios);
        return "Admin";
    }

    @PostMapping("/addCategoria")
    public String addCategoria(@RequestParam String categoria,RedirectAttributes model){
    //Este es el formulario para añadir una categoria en la BD. Solo necesitamos el nombre porque el id es Autoincrementado
        IcCategorias cate=new IcCategorias();
        cate.setNombre(categoria);
        categoriaRepository.save(cate);
        /*El RedirectAtribute sirve para poder enviar datos a través de las redirecciones*/
        model.addFlashAttribute("mensaje", "Categoria añadida");
        return "redirect:/admin/formularios";//Redirigimos a todos los formularios
    }

    @PostMapping("/addIngrediente")
    public String addIngrediente(@RequestParam String ingrediente,
                                 @RequestParam(required = false) List<Integer> alergenos, RedirectAttributes model){
        /*Este es el formulario para añadir un ingrediente en la BD.
        * Solo necesitamos el nombre porque el id es Autoincrementado.
        * Además vamos a añadir los alérgenos que tiene ese ingrediente
        * Como pueden ser varios alergenos lo metemos en una lista y vamos recorriendolo para ir añadiendo*/

        IcIngredientes ingre=new IcIngredientes();
        ingre.setNombre(ingrediente);
        ingredientesRepository.save(ingre);

        if(alergenos!=null){
            for (Integer idAlergeno : alergenos) {
                IcIngredientesconalergenos relacion = new IcIngredientesconalergenos();
                IcIngredientesconalergenosId id= new IcIngredientesconalergenosId(ingre.getIdIngrediente(),idAlergeno);
                IcAlergenos aler= alergenosRepository.findById(idAlergeno).orElse(null);
                relacion.setIngrediente(ingre);
                relacion.setAlergeno(aler);
                relacion.setId(id);
                ingredientesAlergenosRepository.save(relacion);
            }
        }

        model.addFlashAttribute("mensaje", "Ingrediente añadido");
        return "redirect:/admin/formularios";
    }

    @PostMapping("/enviarAviso")
    public String enviarAviso(
            @RequestParam String usuario,
            @RequestParam String comentario,
            RedirectAttributes model) {
        /*Este formulario es para mandar un mensaje a un usuario seleccionado.
        * en este caso tenemos el id del usuario y el mensaje que queremos enviar. */

        // Buscamos email del usuario seleccionado
        IcUsuario user = usuarioRepo.findById(usuario).orElse(null);
        if (user == null) {
            model.addFlashAttribute("mensaje", "Usuario no encontrado");
            return "redirect:/admin/formularios";
        }
        String emailDestino = user.getCorreo();
        try {
            SimpleMailMessage message = new SimpleMailMessage();
            message.setTo(emailDestino);
            message.setSubject("Nuevo aviso");
            message.setText(comentario);
            mailSender.send(message);

            model.addFlashAttribute("mensaje", "Aviso enviado correctamente");
        } catch (Exception e) {
            model.addFlashAttribute("mensaje", "Error al enviar el correo: " + e.getMessage());
        }

        return "redirect:/admin/formularios";
    }

    @PostMapping("/eliminaUsu")
    public String eliminarUsuario(
            @RequestParam String usu,
            RedirectAttributes model) {
        usuarioRepo.deleteById(usu);
        model.addFlashAttribute("mensaje","Usuario eliminado");
        return "redirect:/admin/formularios"; // O redirige a donde quieras
    }




}
