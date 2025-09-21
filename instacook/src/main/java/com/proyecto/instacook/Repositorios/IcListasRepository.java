package com.proyecto.instacook.Repositorios;

import com.proyecto.instacook.Entidades.IcListas;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IcListasRepository extends JpaRepository <IcListas,Integer> {
}
