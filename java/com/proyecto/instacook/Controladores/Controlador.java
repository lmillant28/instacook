package com.proyecto.instacook.Controladores;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.proyecto.instacook.Entidades.*;
import com.proyecto.instacook.Repositorios.*;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class Controlador {
    //En este controlador tengo la navegabilidad básica
    @Autowired
    private VistaRecetasValoracionRepository mediaRecetas;

    @Autowired
    private IcListasdeusuariosRepository listaUsuario;

    @Autowired
    private IcRecetasporcategoriaRepository recetaspoCategoria;

    @Autowired
    private VistaRecetasAlergenosRepository vistaAlergenosRepository;

    @Autowired
    private IcRecetasRepository recetasRepository;

    @Autowired
    private IcIngredientesporrecetaRepository ingredientesRecetaRepository;

    @Autowired
    private IcValoracionRepository comentarioRepository;

    @Autowired
    private IcUsuarioRepository usuarioRepo;

    @Autowired
    private IcCategoriasRepository categoriaRepository;

    @Autowired
    private VistaRecetasValoracionRepository vistaMediaRepository;

    @Autowired
    private IcIngredientesRepository ingredientesRepository;

    @Autowired
    private IcAlergenosRepository alergenosRepository;

    @GetMapping("/")
    public String paginaPrincipal(Model model){
        List<VistaRecetasValoracion> recetasMejores=mediaRecetas.findTop10ByOrderByMediaDesc();
        model.addAttribute("recetasMejores",recetasMejores);
        return "PaginaPrincipal";
    }

    @GetMapping("/InicioSesion")
    public String inicioSesion(Model model,HttpSession session){
       if(session.getAttribute("usuario")!=null){
           IcUsuario admin=(IcUsuario) session.getAttribute("usuario");
           if(admin.getNombreUsu().equals("admin")){//Si es admin se redirige a la página de admin
               return "redirect:/admin/formularios";
           }
           //Si no se cooge el usuario de la sesion y se buscan todo lo necesario para la página
           IcUsuario usuario = (IcUsuario) session.getAttribute("usuario");
           List<IcListasdeusuarios> listas =listaUsuario.findByNombreUsu(usuario);
           model.addAttribute("usuario", usuario);
           model.addAttribute("listas", listas);
           List<VistaRecetasValoracion> recetasUsu = vistaMediaRepository.findByUsuario_NombreUsu(usuario.getNombreUsu());
           model.addAttribute("recetas", recetasUsu);
           model.addAttribute("cantidad", recetasUsu.size());
           return "Perfil";//Se muestra la página de Perfil
       }
       else{
           return "InicioSesion";//y si no se muestra la página de Inicio Sesión
       }

    }

    @GetMapping("/Perfil")
    public String perfil(@RequestParam(required = false) String mensaje, Model model, HttpSession session) {
        //Esta la utilizo para ver cuando cambio algo en la base de datos
        //Por ejemplo cuando cambio la contraseña o los datos
        model.addAttribute("mensaje", mensaje);
        IcUsuario usuario = (IcUsuario) session.getAttribute("usuario");
        List<IcListasdeusuarios> listas =listaUsuario.findByNombreUsu(usuario);
        model.addAttribute("usuario", usuario);
        model.addAttribute("listas", listas);
        List<VistaRecetasValoracion> recetasUsu = vistaMediaRepository.findByUsuario_NombreUsu(usuario.getNombreUsu());
        model.addAttribute("recetas", recetasUsu);
        model.addAttribute("cantidad", recetasUsu.size());
        return "Perfil";
    }


    @GetMapping("/FormRegistro")
    public String mostrarFormularioRegistro() {
        return "Registro";
    }

    @GetMapping("/Buscador")
    public String mostrarBuscador(Model model) {
        //Esta es para ver la página del Buscador. Debemos mostrar las categorías(en este caso poor orden alfabético).
        List<IcCategorias> categorias=categoriaRepository.findAllByOrderByNombreAsc();
        model.addAttribute("categorias",categorias);
        return "Buscador";
    }

    @GetMapping("/Categorias")
    public String mostrarCategorias(Model model) {
        //Este para ir a la página de la lista de las categorías.(Por orden alfabético tambien)
        List<IcCategorias> categorias=categoriaRepository.findAllByOrderByNombreAsc();
        model.addAttribute("categorias",categorias);
        return "ListaCategorias";
    }

    @GetMapping("/categoria/{nombreCategoria}")
    public String categoria(@PathVariable String nombreCategoria, Model model){
        //Aquí mostramos la página de una categoría donde sacamos todas las recetas y pasamos el nombre de la categoría que estamos
        List<IcRecetas> recetas=recetaspoCategoria.findByCategoriaNombre(nombreCategoria);
        model.addAttribute("recetas",recetas);
        model.addAttribute("categoria",nombreCategoria);
        return "Categoria";
    }

    @GetMapping("/receta/{rec}")
    public String mostrarReceta(@PathVariable Integer rec, Model model,HttpSession session){
        //Aqui para mostrar una receta donde vamos a necesitar:ingredientes, los pasos, las valoraciones,los alérgenos...
        IcRecetas receta = recetasRepository.findById(rec).orElse(null);
        List<IcIngredientesporreceta> ingredientes=ingredientesRecetaRepository.findByRecetaId(rec);
        List<IcValoracion> valoraciones=comentarioRepository.findByRecetaId(rec);
        VistaRecetasValoracion valoracionMedia=vistaMediaRepository.findByRecetaId(rec);
        List<String> pasos = List.of(receta.getPreparacion().split("\\. "));

        IcUsuario usuario= (IcUsuario) session.getAttribute("usuario");


        if (usuario != null && !"admin".equals(usuario.getNombreUsu())){

            //Si hay usuario en la session sacamos la listas del usuario y miramos si hay algún comentario del mismo en esta receta
            IcValoracionId id = new IcValoracionId();
            id.setIdReceta(rec);
            id.setNombreUsu(usuario.getNombreUsu());
            List<IcListasdeusuarios> listas=listaUsuario.findByNombreUsu(usuario);
            IcValoracion valoracionExistente = comentarioRepository.findById(id).orElse(null);
            model.addAttribute("existe",valoracionExistente);//Luego si el html se muestra un bóton si no hay comentario y si hay no se muestra
            model.addAttribute("listas",listas);
        }
        else{
            model.addAttribute("existe",null);//si no hay usuario en la session pues no se muestra botón de addlistas y el del comentario
        }
        //Aquí buscamos que la receta tenga alergenos en una vista que hemos creado
        VistaRecetasAlergenos alergenosR=vistaAlergenosRepository.findByRecetaId(rec);

        if(alergenosR!=null){//Como en la BD están en un String todos juntos los saco en un array de String
            String alergenos[]=alergenosR.getAlergenos().split(", ");
            model.addAttribute("alergenos",alergenos);
        }

        model.addAttribute("receta",receta);
        model.addAttribute("ingredientes",ingredientes);
        model.addAttribute("pasos",pasos);
        model.addAttribute("reseñas",valoraciones);
        model.addAttribute("valoracion",(int) Math.round(valoracionMedia.getMedia()));
        return "Receta";

    }


    @GetMapping("/perfilUsu/{usu}")
    public String perfiles(@PathVariable String usu, Model model,HttpSession session){
        //En este voy a coger los datos del usuario que he seleccionado para ver su perfil
        IcUsuario usuario= usuarioRepo.findById(usu).orElse(null);
        List<VistaRecetasValoracion> recetasUSu=vistaMediaRepository.findByUsuario_NombreUsu(usu);

        IcUsuario usuSesion=(IcUsuario) session.getAttribute("usuario");

        if(usuSesion!=null && !"admin".equals(usuSesion.getNombreUsu())){
            //Si es el mismo que el de la sesion lo redirigio a su perfil
            if((usuSesion.getNombreUsu()).equals(usu)){
                return "redirect:/Perfil";
            }
            //Si no cargo las listas del usuario de la session
            List<IcListasdeusuarios> listas =listaUsuario.findByNombreUsu(usuSesion);
            model.addAttribute("listas", listas);
        }
        //Envio los datos del usuario que voy a ver su perfil
        model.addAttribute("recetas",recetasUSu);
        model.addAttribute("usuario",usuario);
        model.addAttribute("cantidad", recetasUSu.size());
        return "PerfilUsu";
    }


    @GetMapping("/Contacta")
    public String contacta(){
        return "ContactaConNosotros";
    }

    @GetMapping("/Mapa")
    public String mapa(){
        return "MapaSitio";
    }

    @GetMapping("/Terminos")
    public String terminos(){
        return "Terminos";
    }

    @GetMapping("/Politica")
    public String politica(){
        return "Politica";
    }

    @GetMapping("/alergenos/{aler}")
    public String mostarRecetasAlergenos(@PathVariable String aler, Model model,HttpSession session){
        //Aqui es para mostrar la página de una alergeno en especial
        IcAlergenos alergeno=alergenosRepository.findByNombre(aler);
        List<VistaRecetasAlergenos> vistaRecetas=vistaAlergenosRepository.buscarPorAlergeno(aler);
        List<IcRecetas> recetas=new ArrayList<>();
        for (VistaRecetasAlergenos vista: vistaRecetas){
            IcRecetas receta=recetasRepository.findById(vista.getIdReceta()).orElse(null);
            recetas.add(receta);
        }
        model.addAttribute("recetas",recetas);
        model.addAttribute("alergeno",alergeno);
        return "Alergenos";

    }


}


