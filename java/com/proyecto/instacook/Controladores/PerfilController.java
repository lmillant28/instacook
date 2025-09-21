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
import java.util.List;

@RequestMapping("/perfil")
@Controller
public class PerfilController {

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

    @GetMapping("/listasUsu")
    public String listas(Model model, HttpSession session){
        IcUsuario usuario= (IcUsuario) session.getAttribute("usuario");
        List<IcListasdeusuarios> listas=listaUsuario.findByNombreUsu(usuario);
        model.addAttribute("listas", listas);
        model.addAttribute("usuario",usuario);
        return "Listas";
    }

    @GetMapping("/addRecetaU")
    public String addReceta(Model model,HttpSession session){
        IcUsuario usuario= (IcUsuario) session.getAttribute("usuario");
        List<IcIngredientes> ingredientes= ingredientesRepository.findAllByOrderByNombreAsc();
        List<IcCategorias> categorias=categoriaRepository.findAllByOrderByNombreAsc();
        List<String> unidades=new ArrayList<>();
        unidades.add("g");
        unidades.add("kg");
        unidades.add("uds");
        unidades.add("ud");
        unidades.add("cucharadas");
        unidades.add("cucharaditas");
        unidades.add("pizca");
        unidades.add("tazas");
        unidades.add("cc");
        unidades.add("ml");
        unidades.add("l");
        List<IcAlergenos> alergenos=alergenosRepository.findAllByOrderByNombreAsc();
        model.addAttribute("ingredientes", ingredientes);
        model.addAttribute("categorias", categorias);
        model.addAttribute("unidades", unidades);
        model.addAttribute("alergenos", alergenos);
        return "NuevaReceta";
    }

    @PostMapping("/guardarReceta")
    public String guardarReceta(
            @RequestParam("nombre") String nombre,
            @RequestParam("archivo") MultipartFile archivo,
            @RequestParam("raciones") Integer raciones,
            @RequestParam("categorias") List<Integer> categorias,
            @RequestParam("dificultad") String dificultad,
            @RequestParam("modo-prep") String modoPrep,
            @RequestParam("ingredientesJson") String ingredientesJson,HttpSession session
    ) throws Exception {
        IcUsuario usuario= (IcUsuario) session.getAttribute("usuario");
        // 1. Guardar la receta principal (ajusta según tu entidad)
        IcRecetas receta = new IcRecetas();
        receta.setNombre(nombre);
        receta.setRaciones(raciones);
        receta.setDificultad(dificultad);
        receta.setPreparacion(modoPrep);
        receta.setNombreUsu(usuario);

        if (!archivo.isEmpty()) {
            String nombreArchivo = archivo.getOriginalFilename();
            String ruta = new File("src/main/resources/static/imagenes").getAbsolutePath() + File.separator + nombreArchivo;
            System.out.println("Archivo recibido: " + archivo.getOriginalFilename());
            System.out.println("Tamaño: " + archivo.getSize());
            archivo.transferTo(new File(ruta));
            receta.setImagen(nombreArchivo);
        }

        recetasRepository.save(receta);

        for (Integer idCategoria : categorias) {
            IcRecetasporcategoria relacion = new IcRecetasporcategoria();
            IcRecetasporcategoriaId id= new IcRecetasporcategoriaId(receta.getIdReceta(),idCategoria);
            IcCategorias cate= categoriaRepository.findById(idCategoria).orElse(null);
            relacion.setReceta(receta);
            relacion.setCategoria(cate);
            relacion.setId(id);
            recetaspoCategoria.save(relacion);
        }

        // 2. Parsear el JSON de ingredientes
        ObjectMapper mapper = new ObjectMapper();
        IngredienteRecetaDTO[] ingredientesDTO =
                mapper.readValue(ingredientesJson, IngredienteRecetaDTO[].class);

        // 3. Relacionar ingredientes con la receta recién creada
        for (IngredienteRecetaDTO dto : ingredientesDTO) {
            IcIngredientesporreceta nuevoR = new IcIngredientesporreceta();
            // Crea el id compuesto
            IcIngredientesporrecetaId pk = new IcIngredientesporrecetaId(receta.getIdReceta(), dto.getIdIngrediente());
            nuevoR.setId(pk);

            // Relación con la receta (ya guardada)
            nuevoR.setReceta(receta);

            // Relación con el ingrediente (búscalo por id)
            IcIngredientes ingr = ingredientesRepository.findById(dto.getIdIngrediente()).orElse(null);
            nuevoR.setIngrediente(ingr);

            nuevoR.setCantidad(dto.getCantidad());
            nuevoR.setMedida(dto.getMedida());

            ingredientesRecetaRepository.save(nuevoR);
        }


        return "redirect:/InicioSesion";
    }

    @GetMapping("/eliminaReceta/{rec}")
    public  String eliminaReceta(@PathVariable Integer rec, Model model, HttpSession session){
        recetasRepository.deleteById(rec);
        return "redirect:/InicioSesion";
    }

    @GetMapping("/modificarDatos")
    public String modificarD(Model model,HttpSession session){
        IcUsuario usuario=(IcUsuario) session.getAttribute("usuario");
        model.addAttribute("usuario",usuario);
        return "ModificaDatos";
    }

    @GetMapping("/modificarContra")
    public String modificarC( Model model,HttpSession session){
        IcUsuario usuario=(IcUsuario) session.getAttribute("usuario");
        model.addAttribute("usuario",usuario);
        return "ModificaContra";
    }

    @GetMapping("/cerrarSesion")
    public String cerrarSesion( Model model,HttpSession session){
        session.setAttribute("usuario",null);
        return "InicioSesion";
    }

}
