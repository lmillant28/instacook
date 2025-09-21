package com.proyecto.instacook.Entidades;

import jakarta.persistence.*;

import java.util.Objects;

@Entity
@Table(name = "ic_ingredientes")
public class IcIngredientes {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idIngrediente")
    private Integer idIngrediente;

    @Column(name = "nombre")
    private String nombre;

    public IcIngredientes() {}

    public Integer getIdIngrediente() {
        return idIngrediente;
    }

    public void setIdIngrediente(Integer idIngrediente) {
        this.idIngrediente = idIngrediente;
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
        IcIngredientes that = (IcIngredientes) o;
        return Objects.equals(idIngrediente, that.idIngrediente) && Objects.equals(nombre, that.nombre);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idIngrediente, nombre);
    }

    @Override
    public String toString() {
        return "IcIngredientes{" +
                ", idIngrediente=" + idIngrediente +
                ", nombre='" + nombre + '\'' +
                '}';
    }
}