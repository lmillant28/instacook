package com.proyecto.instacook.Repositorios;

import com.proyecto.instacook.Entidades.VistaRecetasAlergenos;
import com.proyecto.instacook.Entidades.VistaRecetasValoracion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface VistaRecetasAlergenosRepository extends JpaRepository<VistaRecetasAlergenos, Integer> {
    @Query("SELECT i FROM VistaRecetasAlergenos  i WHERE i.idReceta = :id")
    VistaRecetasAlergenos findByRecetaId(Integer id);

    @Query("SELECT r FROM VistaRecetasAlergenos r WHERE CONCAT(',', LOWER(r.alergenos), ',') LIKE %:alergeno%")
    List<VistaRecetasAlergenos> buscarPorAlergeno(@Param("alergeno") String alergeno);

}
