package com.proyecto.instacook.Controladores;

import com.proyecto.instacook.Entidades.VistaRecetasBuscador;
import com.proyecto.instacook.Servicios.BuscadorRecetasService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/busqueda")
public class BuscadorRecetasController {

    private final BuscadorRecetasService service;

    public BuscadorRecetasController(BuscadorRecetasService service) {
        this.service = service;
    }

    @GetMapping("/buscar")
    public List<VistaRecetasBuscador> buscarRecetas(
            // Parámetro opcional "nombre" (puede venir o no en la URL)
            @RequestParam(required = false) String nombre,
            // Parámetro opcional "categorias" (igual, puede venir o no)
            @RequestParam(required = false) String categorias,
            // Parámetro opcional "dificultad", pero aquí como lista (por si se seleccionan varias dificultades)
            @RequestParam(required = false) List<String> dificultad
    ) {
        // Llama al servicio para buscar recetas según los filtros dados, y devuelve el resultado como lista de recetas
        return service.buscar(nombre, categorias, dificultad);
    }
}
