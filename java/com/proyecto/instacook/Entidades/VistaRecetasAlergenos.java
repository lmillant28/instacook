package com.proyecto.instacook.Entidades;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "vista_recetas_alergenos")
public class VistaRecetasAlergenos {

    @Id
    @Column(name = "idReceta")
    private Integer idReceta;

    @Column(name = "nombreReceta")
    private String nombreReceta;

    @Column(name = "alergenos")
    private String alergenos; // Aquí se almacena la lista de alérgenos separados por coma

    public VistaRecetasAlergenos() {}

    public Integer getIdReceta() {
        return idReceta;
    }

    public void setIdReceta(Integer idReceta) {
        this.idReceta = idReceta;
    }

    public String getNombreReceta() {
        return nombreReceta;
    }

    public void setNombreReceta(String nombreReceta) {
        this.nombreReceta = nombreReceta;
    }

    public String getAlergenos() {
        return alergenos;
    }

    public void setAlergenos(String alergenos) {
        this.alergenos = alergenos;
    }
}