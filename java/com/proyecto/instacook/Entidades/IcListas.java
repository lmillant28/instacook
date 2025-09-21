package com.proyecto.instacook.Entidades;

import jakarta.persistence.*;

import java.util.Objects;

@Entity
@Table(name = "ic_listas")
public class IcListas {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idCarpeta")
    private Integer idCarpeta;

    @Column(name = "nombre")
    private String nombre;

    public IcListas() {}

    public Integer getIdCarpeta() {
        return idCarpeta;
    }

    public void setIdCarpeta(Integer idCarpeta) {
        this.idCarpeta = idCarpeta;
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
        IcListas icListas = (IcListas) o;
        return Objects.equals(idCarpeta, icListas.idCarpeta) && Objects.equals(nombre, icListas.nombre);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idCarpeta, nombre);
    }

    @Override
    public String toString() {
        return "IcListas{" +
                "idCarpeta=" + idCarpeta +
                ", nombre='" + nombre + '\'' +
                '}';
    }
}