package com.proyecto.instacook.Repositorios;

import com.proyecto.instacook.Entidades.VistaRecetasValoracion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface VistaRecetasValoracionRepository extends JpaRepository<VistaRecetasValoracion, Integer> {

    List<VistaRecetasValoracion> findTop10ByOrderByMediaDesc();

    @Query("SELECT i FROM VistaRecetasValoracion  i WHERE i.idReceta = :id")
    VistaRecetasValoracion findByRecetaId(Integer id);

    @Query("SELECT i FROM VistaRecetasValoracion  i WHERE i.nombreUsu = :nombreUsu")
    List<VistaRecetasValoracion> findByUsuario_NombreUsu(String nombreUsu);
}

