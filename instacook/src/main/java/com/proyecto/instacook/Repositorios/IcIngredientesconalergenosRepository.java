package com.proyecto.instacook.Repositorios;

import com.proyecto.instacook.Entidades.IcIngredientesconalergenos;
import com.proyecto.instacook.Entidades.IcIngredientesconalergenosId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IcIngredientesconalergenosRepository  extends JpaRepository<IcIngredientesconalergenos, IcIngredientesconalergenosId> {
}
