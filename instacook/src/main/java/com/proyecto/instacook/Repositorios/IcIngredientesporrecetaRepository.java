package com.proyecto.instacook.Repositorios;

import com.proyecto.instacook.Entidades.IcIngredientesporreceta;
import com.proyecto.instacook.Entidades.IcIngredientesporrecetaId;
import com.proyecto.instacook.Entidades.IcValoracion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IcIngredientesporrecetaRepository extends JpaRepository<IcIngredientesporreceta, IcIngredientesporrecetaId> {

    @Query("SELECT i FROM IcIngredientesporreceta i WHERE i.receta.idReceta = :id")
    List<IcIngredientesporreceta> findByRecetaId(Integer id);
}

