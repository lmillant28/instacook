package com.proyecto.instacook.Entidades;

import jakarta.persistence.*;

import java.util.Objects;

@Entity
@Table(name = "ic_alergenos")
public class IcAlergenos {

    @Id
    @Column(name = "idAlergeno")
    private Integer idAlergeno;

    @Column(name = "nombre")
    private String nombre;

    public IcAlergenos() {}



    public Integer getIdAlergeno() {
        return idAlergeno;
    }

    public void setIdAlergeno(Integer idAlergeno) {
        this.idAlergeno = idAlergeno;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        IcAlergenos that = (IcAlergenos) o;
        return Objects.equals(idAlergeno, that.idAlergeno) && Objects.equals(nombre, that.nombre);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idAlergeno, nombre);
    }

    @Override
    public String toString() {
        return "IcAlergenos{" +
                ", idAlergeno=" + idAlergeno +
                ", nombre='" + nombre + '\'' +
                '}';
    }
}