package com.proyecto.instacook.Repositorios;

import com.proyecto.instacook.Entidades.IcRecetas;
import com.proyecto.instacook.Entidades.IcValoracion;
import com.proyecto.instacook.Entidades.IcValoracionId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IcValoracionRepository extends JpaRepository<IcValoracion, IcValoracionId> {

    @Query("SELECT v FROM IcValoracion v WHERE v.receta.idReceta = :id")
    List<IcValoracion> findByRecetaId(Integer id);


}

