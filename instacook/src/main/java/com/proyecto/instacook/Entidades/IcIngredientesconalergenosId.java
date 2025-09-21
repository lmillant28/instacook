package com.proyecto.instacook.Entidades;

import jakarta.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class IcIngredientesconalergenosId implements Serializable {

    private Integer idIngrediente;
    private Integer idAlergeno;

    public IcIngredientesconalergenosId() {}

    public IcIngredientesconalergenosId(Integer idIngrediente, Integer idAlergeno) {
        this.idIngrediente = idIngrediente;
        this.idAlergeno = idAlergeno;
    }

    public Integer getIdIngrediente() {
        return idIngrediente;
    }

    public void setIdIngrediente(Integer idIngrediente) {
        this.idIngrediente = idIngrediente;
    }

    public Integer getIdAlergeno() {
        return idAlergeno;
    }

    public void setIdAlergeno(Integer idAlergeno) {
        this.idAlergeno = idAlergeno;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof IcIngredientesconalergenosId that)) return false;
        return Objects.equals(idIngrediente, that.idIngrediente) &&
                Objects.equals(idAlergeno, that.idAlergeno);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idIngrediente, idAlergeno);
    }
}

