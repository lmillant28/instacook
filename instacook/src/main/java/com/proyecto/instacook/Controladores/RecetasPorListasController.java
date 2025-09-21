package com.proyecto.instacook.Controladores;
import com.proyecto.instacook.Entidades.*;
import com.proyecto.instacook.Repositorios.*;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;
import java.util.Map;

@RequestMapping("/listas")
@Controller
public class RecetasPorListasController {

    @Autowired
    private IcRecetasporlistasRepository recetasporlistasRepository;
    @Autowired
    private IcListasRepository listasRepository;
    @Autowired
    private IcRecetasRepository recetasRepository;

    @Autowired
    private IcListasdeusuariosRepository listasdeusuariosRepository;

    // POST: Añadir receta a lista
    @PostMapping("/addToList")
    public String addToList(
            @RequestParam("recetaId") Integer recetaId,
            @RequestParam("listaId") Integer listaId,
            RedirectAttributes redirectAttrs
    ) {
        // Buscar la receta y la lista
        var receta = recetasRepository.findById(recetaId).orElse(null);
        var lista = listasRepository.findById(listaId).orElse(null);

        if (receta == null || lista == null) {
            redirectAttrs.addFlashAttribute("error", "No se encontró la receta o la lista");
            return "redirect:/receta/" + recetaId;
        }

        IcRecetasporlistas rel = new IcRecetasporlistas();
        rel.setReceta(receta);
        rel.setCarpeta(lista);   

        IcRecetasporlistasId relId = new IcRecetasporlistasId();
        relId.setIdReceta(receta.getIdReceta());
        relId.setIdCarpeta(lista.getIdCarpeta());

        rel.setId(relId);
        recetasporlistasRepository.save(rel);

        redirectAttrs.addFlashAttribute("msg", "¡Receta añadida correctamente a la lista!");
        return "redirect:/receta/" + recetaId;
    }


    @PostMapping("/crear")
    @ResponseBody
    public Map<String, Object> crearLista(@RequestBody Map<String, String> datos, HttpSession session) {
        String nombre = datos.get("nombre");
        // 1. Validar nombre
        if (nombre == null || nombre.trim().isEmpty()) {
            return Map.of("error", "El nombre de la lista no puede estar vacío");
        }

        // 2. Recuperar el usuario desde la sesión
        IcUsuario usuario = (IcUsuario) session.getAttribute("usuario");
        if (usuario == null) {
            return Map.of("error", "No hay usuario en sesión");
        }

        // 3. Crear y guardar la nueva lista (IcListas)
        IcListas nuevaLista = new IcListas();
        nuevaLista.setNombre(nombre);
        try {
            nuevaLista = listasRepository.save(nuevaLista); // Aquí se genera el idCarpeta automáticamente
        } catch (Exception e) {
            return Map.of("error", "No se pudo guardar la lista: " + e.getMessage());
        }

        // 4. Crear y guardar la relación con el usuario (IcListasdeusuarios)
        IcListasdeusuarios relacion = new IcListasdeusuarios();
        relacion.setCarpeta(nuevaLista);
        relacion.setNombreUsu(usuario);

        IcListasdeusuariosId nuevaId=new IcListasdeusuariosId();
        nuevaId.setNombreUsu(usuario.getNombreUsu());
        nuevaId.setIdCarpeta(nuevaLista.getIdCarpeta());

        relacion.setId(nuevaId);

        try {
            listasdeusuariosRepository.save(relacion);
        } catch (Exception e) {
            return Map.of("error", "No se pudo asociar la lista al usuario: " + e.getMessage());
        }

        // 5. Devolver el resultado al frontend
        return Map.of(
                "idCarpeta", nuevaLista.getIdCarpeta(),
                "nombre", nuevaLista.getNombre()
        );

    }

    @GetMapping("/listarLista/{carp}")
    public String ListarLista(@PathVariable("carp") IcListas carp, HttpSession session, Model model) {
        IcUsuario usuario = (IcUsuario) session.getAttribute("usuario");

        List<IcRecetasporlistas> recetas = recetasporlistasRepository.findByCarpeta(carp);
        model.addAttribute("usuario", usuario);
        model.addAttribute("recetas", recetas);
        model.addAttribute("carpeta", carp.getNombre());
        return "ListaX";
    }

    @PostMapping("/eliminar")
    public String EliminaReceta(
            @RequestParam Integer idReceta,
            @RequestParam Integer idCarpeta,
            HttpSession session, Model model) {

        IcUsuario usuario = (IcUsuario) session.getAttribute("usuario");
        IcListas lista = listasRepository.findById(idCarpeta).orElse(null);
        IcRecetasporlistasId id = new IcRecetasporlistasId();
        id.setIdReceta(idReceta);
        id.setIdCarpeta(idCarpeta);
        recetasporlistasRepository.deleteById(id);

        List<IcRecetasporlistas> recetas = recetasporlistasRepository.findByCarpeta(lista);
        model.addAttribute("usuario", usuario);
        model.addAttribute("recetas", recetas);
        model.addAttribute("carpeta", lista != null ? lista.getNombre() : "Lista");
        return "ListaX";
    }
}



