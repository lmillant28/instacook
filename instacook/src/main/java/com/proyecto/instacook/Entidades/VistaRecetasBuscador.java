package com.proyecto.instacook.Entidades;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "vista_recetas_buscador")
public class VistaRecetasBuscador {

    @Id
    @Column(name = "idReceta")
    private Long idReceta;

    @Column(name = "nombre")
    private String nombre;

    @Column(name = "imagen")
    private String imagen;

    @Column(name = "nombreUsu")
    private String nombreUsu;

    @Column(name = "categorias")
    private String categorias; // <-- Ahora es String con todas las categorías separadas por comas

    @Column(name = "dificultad")
    private String dificultad;

    @Column(name = "media")
    private Double media;

    // Getters y setters

    public Long getIdReceta() { return idReceta; }
    public void setIdReceta(Long idReceta) { this.idReceta = idReceta; }
    public String getNombre() { return nombre; }
    public void setNombre(String nombre) { this.nombre = nombre; }
    public String getImagen() { return imagen; }
    public void setImagen(String imagen) { this.imagen = imagen; }
    public String getNombreUsu() { return nombreUsu; }
    public void setNombreUsu(String nombreUsu) { this.nombreUsu = nombreUsu; }
    public String getCategorias() { return categorias; }
    public void setCategorias(String categorias) { this.categorias = categorias; }
    public String getDificultad() { return dificultad; }
    public void setDificultad(String dificultad) { this.dificultad = dificultad; }
    public Double getMedia() { return media; }
    public void setMedia(Double media) { this.media = media; }
}

