package com.proyecto.instacook.Entidades;

import jakarta.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "ic_recetas")
public class IcRecetas {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idReceta")
    private Integer idReceta;

    @Column(name = "nombre")
    private String nombre;

    @Column(name = "imagen")
    private String imagen;

    @Column(name = "preparacion")
    private String preparacion;

    @Column(name = "raciones")
    private Integer raciones;

    @Column(name = "dificultad")
    private String dificultad;

    @ManyToOne
    @JoinColumn(name = "nombreUsu") // clave foránea que hace referencia a ic_usuario.nombreUsu
    private IcUsuario nombreUsu;

    public IcRecetas() {}

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

    public String getPreparacion() {
        return preparacion;
    }

    public void setPreparacion(String preparacion) {
        this.preparacion = preparacion;
    }

    public Integer getRaciones() {
        return raciones;
    }

    public void setRaciones(Integer raciones) {
        this.raciones = raciones;
    }

    public String getDificultad() {
        return dificultad;
    }

    public void setDificultad(String dificultad) {
        this.dificultad = dificultad;
    }

    public IcUsuario getNombreUsu() {
        return nombreUsu;
    }

    public void setNombreUsu(IcUsuario nombreUsu) {
        this.nombreUsu = nombreUsu;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        IcRecetas that = (IcRecetas) o;
        return Objects.equals(idReceta, that.idReceta) &&
                Objects.equals(nombre, that.nombre) &&
                Objects.equals(imagen, that.imagen) &&
                Objects.equals(preparacion, that.preparacion) &&
                Objects.equals(raciones, that.raciones) &&
                Objects.equals(dificultad, that.dificultad) &&
                Objects.equals(nombreUsu, that.nombreUsu);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idReceta, nombre, imagen, preparacion, raciones, dificultad, nombreUsu);
    }

    @Override
    public String toString() {
        return "IcRecetas{" +
                "idReceta=" + idReceta +
                ", nombre='" + nombre + '\'' +
                ", imagen='" + imagen + '\'' +
                ", preparacion='" + preparacion + '\'' +
                ", raciones=" + raciones +
                ", dificultad='" + dificultad + '\'' +
                ", nombreUsu=" + (nombreUsu != null ? nombreUsu.getNombreUsu() : "null") +
                '}';
    }
}
