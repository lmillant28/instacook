package com.proyecto.instacook.Entidades;

import jakarta.persistence.*;

import java.util.Objects;

@Entity
@Table(name = "ic_categorias")
public class IcCategorias {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idCategoria")
    private Integer idCategoria;

    @Column(name = "nombre")
    private String nombre;

    public IcCategorias() {}

    public Integer getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(Integer idCategoria) {
        this.idCategoria = idCategoria;
    }


    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public String toString() {
        return "IcCategorias{" +
                ", idCategoria=" + idCategoria +
                ", nombre='" + nombre + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        IcCategorias that = (IcCategorias) o;
        return Objects.equals(idCategoria, that.idCategoria) && Objects.equals(nombre, that.nombre);
    }

    @Override
    public int hashCode() {
        return Objects.hash( idCategoria, nombre);
    }
}