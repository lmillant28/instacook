package com.proyecto.instacook.Repositorios;

import com.proyecto.instacook.Entidades.IcRecetas;
import com.proyecto.instacook.Entidades.IcRecetasporcategoria;
import com.proyecto.instacook.Entidades.IcRecetasporcategoriaId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IcRecetasporcategoriaRepository extends JpaRepository<IcRecetasporcategoria, IcRecetasporcategoriaId> {

    @Query("""
    SELECT r FROM IcRecetas r
    JOIN IcRecetasporcategoria rpc ON rpc.receta = r
    JOIN IcCategorias c ON rpc.categoria = c
    WHERE c.nombre = :nombreCategoria ORDER BY r.nombre ASC 
""")
    List<IcRecetas> findByCategoriaNombre(String nombreCategoria);
}

