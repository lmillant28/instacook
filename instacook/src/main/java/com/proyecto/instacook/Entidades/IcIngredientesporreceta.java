package com.proyecto.instacook.Entidades;

import jakarta.persistence.*;

@Entity
@Table(name = "ic_ingredientesporreceta")
public class IcIngredientesporreceta {

    @EmbeddedId
    private IcIngredientesporrecetaId id;

    @ManyToOne
    @MapsId("idReceta")
    @JoinColumn(name = "idReceta")
    private IcRecetas receta;

    @ManyToOne
    @MapsId("idIngrediente")
    @JoinColumn(name = "idIngrediente")
    private IcIngredientes ingrediente;

    @Column(name = "cantidad")
    private String cantidad;

    @Column(name = "medida")
    private String medida;

    public IcIngredientesporreceta() {}

    public IcIngredientesporreceta(IcIngredientes ingrediente, String cantidad, String medida) {
        this.ingrediente = ingrediente;
        this.cantidad = cantidad;
        this.medida = medida;
    }

    public IcIngredientesporrecetaId getId() {
        return id;
    }

    public void setId(IcIngredientesporrecetaId id) {
        this.id = id;
    }

    public IcRecetas getReceta() {
        return receta;
    }

    public void setReceta(IcRecetas receta) {
        this.receta = receta;
    }

    public IcIngredientes getIngrediente() {
        return ingrediente;
    }

    public void setIngrediente(IcIngredientes ingrediente) {
        this.ingrediente = ingrediente;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public String getMedida() {
        return medida;
    }

    public void setMedida(String medida) {
        this.medida = medida;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof IcIngredientesporreceta that)) return false;
        return id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }

    @Override
    public String toString() {
        return "IcIngredientesporreceta{" +
                "id=" + id +
                ", receta=" + receta +
                ", ingrediente=" + ingrediente +
                ", cantidad='" + cantidad + '\'' +
                ", medida='" + medida + '\'' +
                '}';
    }
}
