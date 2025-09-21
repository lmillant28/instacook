package com.proyecto.instacook.Entidades;

import jakarta.persistence.*;

@Entity
@Table(name = "vista_recetas_valoracion")
public class VistaRecetasValoracion {

    @Id
    @Column(name = "idReceta")
    private Integer idReceta;

    private String nombre;

    private String nombreUsu;

    private String imagen;

    private Double media;

    public VistaRecetasValoracion() {}

    public Integer getIdReceta() {
        return idReceta;
    }

    public void setIdReceta(Integer idReceta) {
        this.idReceta = idReceta;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public Double getMedia() {
        return media;
    }

    public void setMedia(Double media) {
        this.media = media;
    }

    public String getNombreUsu() {
        return nombreUsu;
    }

    public void setNombreUsu(String nombreUsu) {
        this.nombreUsu = nombreUsu;
    }
}

