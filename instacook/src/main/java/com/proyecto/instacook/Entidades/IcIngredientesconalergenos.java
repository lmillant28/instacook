package com.proyecto.instacook.Entidades;

import jakarta.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "ic_ingredientesconalergenos")
public class IcIngredientesconalergenos {

    @EmbeddedId
    private IcIngredientesconalergenosId id;

    @ManyToOne
    @MapsId("idIngrediente")
    @JoinColumn(name = "idIngrediente")
    private IcIngredientes ingrediente;

    @ManyToOne
    @MapsId("idAlergeno")
    @JoinColumn(name = "idAlergeno")
    private IcAlergenos alergeno;

    public IcIngredientesconalergenos() {}

    public IcIngredientesconalergenosId getId() {
        return id;
    }

    public void setId(IcIngredientesconalergenosId id) {
        this.id = id;
    }

    public IcIngredientes getIngrediente() {
        return ingrediente;
    }

    public void setIngrediente(IcIngredientes ingrediente) {
        this.ingrediente = ingrediente;
    }

    public IcAlergenos getAlergeno() {
        return alergeno;
    }

    public void setAlergeno(IcAlergenos alergeno) {
        this.alergeno = alergeno;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof IcIngredientesconalergenos that)) return false;
        return Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public String toString() {
        return "IcIngredientesconalergenos{" +
                "id=" + id +
                ", ingrediente=" + ingrediente +
                ", alergeno=" + alergeno +
                '}';
    }
}
