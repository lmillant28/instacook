package com.proyecto.instacook.Entidades;

import jakarta.persistence.*;

@Entity
@Table(name = "ic_recetasporlistas")
public class IcRecetasporlistas {

    @EmbeddedId
    private IcRecetasporlistasId id;

    @ManyToOne
    @MapsId("idCarpeta")
    @JoinColumn(name = "idCarpeta")
    private IcListas carpeta;

    @ManyToOne
    @MapsId("idReceta")
    @JoinColumn(name = "idReceta")
    private IcRecetas receta;

    public IcRecetasporlistas() {}

    public IcRecetasporlistasId getId() {
        return id;
    }

    public void setId(IcRecetasporlistasId id) {
        this.id = id;
    }

    public IcListas getCarpeta() {
        return carpeta;
    }

    public void setCarpeta(IcListas carpeta) {
        this.carpeta = carpeta;
    }

    public IcRecetas getReceta() {
        return receta;
    }

    public void setReceta(IcRecetas receta) {
        this.receta = receta;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof IcRecetasporlistas that)) return false;
        return id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }

    @Override
    public String toString() {
        return "IcRecetasporlistas{" +
                "id=" + id +
                ", carpeta=" + carpeta +
                ", receta=" + receta +
                '}';
    }
}
