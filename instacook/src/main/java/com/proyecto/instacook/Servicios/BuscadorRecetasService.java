package com.proyecto.instacook.Servicios;

import com.proyecto.instacook.Entidades.VistaRecetasBuscador;
import com.proyecto.instacook.Repositorios.VistaRecetasBuscadorRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BuscadorRecetasService {

    private final VistaRecetasBuscadorRepository repository;

    public BuscadorRecetasService(VistaRecetasBuscadorRepository repository) {
        this.repository = repository;
    }

    public List<VistaRecetasBuscador> buscar(String nombre, String categorias, List<String> dificultad) {
        // Llama al repositorio para buscar recetas, pero primero verifica cada parámetro
        // Si el parámetro es null o está vacío, pasa null al repositorio si no envía el dato
        //Si pasas null el repositorio lo ignora como filtro
        return repository.buscarRecetas(
                (nombre != null && !nombre.isEmpty()) ? nombre : null,
                (categorias != null && !categorias.isEmpty()) ? categorias : null,
                (dificultad != null && !dificultad.isEmpty()) ? dificultad : null
        );
    }
}

