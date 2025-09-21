package com.proyecto.instacook.Repositorios;

import com.proyecto.instacook.Entidades.IcUsuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IcUsuarioRepository extends JpaRepository<IcUsuario,String> {

    IcUsuario findByNombreUsuAndPassword(String nombreUsu, String password);

    boolean existsByNombreUsu(String nombreUsu);
    boolean existsByCorreo(String correo);
}
