package com.proyecto.instacook.Repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.proyecto.instacook.Entidades.VistaRecetasBuscador;
import java.util.List;

@Repository
public interface VistaRecetasBuscadorRepository extends JpaRepository<VistaRecetasBuscador, Long> {


    List<VistaRecetasBuscador> findByNombreContainingIgnoreCase(String nombre);


    List<VistaRecetasBuscador> findByDificultad(String dificultad);


    List<VistaRecetasBuscador> findByCategorias(String categorias);


    List<VistaRecetasBuscador> findByNombreContainingIgnoreCaseAndDificultadAndCategorias(
            String nombre, String dificultad, String categorias
    );


    @Query("SELECT v FROM VistaRecetasBuscador v " +
            "WHERE (:nombre IS NULL OR LOWER(v.nombre) LIKE LOWER(CONCAT('%', :nombre, '%'))) " +
            "AND (:categorias IS NULL OR LOWER(v.categorias) LIKE LOWER(CONCAT('%', :categorias, '%'))) " +
            "AND (:dificultad IS NULL OR v.dificultad IN :dificultad)")
    List<VistaRecetasBuscador> buscarRecetas(
            @Param("nombre") String nombre,
            @Param("categorias") String categorias,
            @Param("dificultad") List<String> dificultad
    );



}

