package com.proyecto.instacook.Entidades;

import jakarta.persistence.*;

@Entity
@Table(name = "ic_recetasporcategoria")
public class IcRecetasporcategoria {

    @EmbeddedId
    private IcRecetasporcategoriaId id;

    @ManyToOne
    @MapsId("idReceta")
    @JoinColumn(name = "idReceta")
    private IcRecetas receta;

    @ManyToOne
    @MapsId("idCategoria")
    @JoinColumn(name = "idCategoria")
    private IcCategorias categoria;

    public IcRecetasporcategoria() {}

    public IcRecetasporcategoriaId getId() {
        return id;
    }

    public void setId(IcRecetasporcategoriaId id) {
        this.id = id;
    }

    public IcRecetas getReceta() {
        return receta;
    }

    public void setReceta(IcRecetas receta) {
        this.receta = receta;
    }

    public IcCategorias getCategoria() {
        return categoria;
    }

    public void setCategoria(IcCategorias categoria) {
        this.categoria = categoria;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof IcRecetasporcategoria that)) return false;
        return id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }

    @Override
    public String toString() {
        return "IcRecetasporcategoria{" +
                "id=" + id +
                ", receta=" + receta +
                ", categoria=" + categoria +
                '}';
    }
}
