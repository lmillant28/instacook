package com.proyecto.instacook.Repositorios;

import com.proyecto.instacook.Entidades.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IcRecetasporlistasRepository extends JpaRepository<IcRecetasporlistas, IcRecetasporlistasId> {

    @Query("SELECT r FROM IcRecetasporlistas r WHERE r.carpeta = :carpeta")
    List<IcRecetasporlistas> findByCarpeta(IcListas carpeta);
}

