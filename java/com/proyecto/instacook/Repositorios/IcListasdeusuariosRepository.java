package com.proyecto.instacook.Repositorios;

import com.proyecto.instacook.Entidades.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IcListasdeusuariosRepository extends JpaRepository<IcListasdeusuarios, IcListasdeusuariosId> {


    List<IcListasdeusuarios> findByNombreUsu(IcUsuario nombreUsu);


}

