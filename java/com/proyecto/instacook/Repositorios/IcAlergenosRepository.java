package com.proyecto.instacook.Repositorios;

import com.proyecto.instacook.Entidades.IcAlergenos;
import com.proyecto.instacook.Entidades.IcIngredientes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface IcAlergenosRepository extends JpaRepository<IcAlergenos,Integer> {

    @Query("select distinct a.nombre from IcAlergenos a")
    List<String> listarTodos();

    IcAlergenos findByNombre(String nombre);

    List<IcAlergenos> findAllByOrderByNombreAsc();


}
