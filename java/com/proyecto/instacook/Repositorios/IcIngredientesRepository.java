package com.proyecto.instacook.Repositorios;

import com.proyecto.instacook.Entidades.IcIngredientes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IcIngredientesRepository extends JpaRepository<IcIngredientes,Integer> {

    List<IcIngredientes> findAllByOrderByNombreAsc();
}
