package com.proyecto.instacook.Entidades;

import jakarta.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class IcRecetasporlistasId implements Serializable {

    private Integer idCarpeta;
    private Integer idReceta;

    public IcRecetasporlistasId() {}

    public IcRecetasporlistasId(Integer idCarpeta, Integer idReceta) {
        this.idCarpeta = idCarpeta;
        this.idReceta = idReceta;
    }

    public Integer getIdCarpeta() {
        return idCarpeta;
    }

    public void setIdCarpeta(Integer idCarpeta) {
        this.idCarpeta = idCarpeta;
    }

    public Integer getIdReceta() {
        return idReceta;
    }

    public void setIdReceta(Integer idReceta) {
        this.idReceta = idReceta;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof IcRecetasporlistasId that)) return false;
        return Objects.equals(idCarpeta, that.idCarpeta) &&
                Objects.equals(idReceta, that.idReceta);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idCarpeta, idReceta);
    }
}

