package com.proyecto.instacook.Repositorios;

import com.proyecto.instacook.Entidades.IcRecetas;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IcRecetasRepository extends JpaRepository<IcRecetas,Integer> {

    List<IcRecetas> findByNombreUsu_NombreUsu(String nombreUsu);

}
