package com.proyecto.instacook.Entidades;

import jakarta.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class IcRecetasporcategoriaId implements Serializable {

    private Integer idReceta;
    private Integer idCategoria;

    public IcRecetasporcategoriaId() {}

    public IcRecetasporcategoriaId(Integer idReceta, Integer idCategoria) {
        this.idReceta = idReceta;
        this.idCategoria = idCategoria;
    }

    public Integer getIdReceta() {
        return idReceta;
    }

    public void setIdReceta(Integer idReceta) {
        this.idReceta = idReceta;
    }

    public Integer getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(Integer idCategoria) {
        this.idCategoria = idCategoria;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof IcRecetasporcategoriaId that)) return false;
        return Objects.equals(idReceta, that.idReceta) &&
                Objects.equals(idCategoria, that.idCategoria);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idReceta, idCategoria);
    }
}

