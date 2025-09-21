package com.proyecto.instacook.Entidades;

import jakarta.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class IcIngredientesporrecetaId implements Serializable {

    private Integer idReceta;
    private Integer idIngrediente;

    public IcIngredientesporrecetaId() {}

    public IcIngredientesporrecetaId(Integer idReceta, Integer idIngrediente) {
        this.idReceta = idReceta;
        this.idIngrediente = idIngrediente;
    }

    public Integer getIdReceta() {
        return idReceta;
    }

    public void setIdReceta(Integer idReceta) {
        this.idReceta = idReceta;
    }

    public Integer getIdIngrediente() {
        return idIngrediente;
    }

    public void setIdIngrediente(Integer idIngrediente) {
        this.idIngrediente = idIngrediente;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof IcIngredientesporrecetaId that)) return false;
        return Objects.equals(idReceta, that.idReceta) &&
                Objects.equals(idIngrediente, that.idIngrediente);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idReceta, idIngrediente);
    }
}

