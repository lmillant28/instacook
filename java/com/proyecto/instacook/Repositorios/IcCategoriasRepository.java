package com.proyecto.instacook.Repositorios;

import com.proyecto.instacook.Entidades.IcCategorias;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IcCategoriasRepository extends JpaRepository<IcCategorias,Integer> {



    List<IcCategorias> findAllByOrderByNombreAsc();
}
