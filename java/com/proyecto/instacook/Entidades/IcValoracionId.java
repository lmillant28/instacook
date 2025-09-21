package com.proyecto.instacook.Entidades;

import jakarta.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class IcValoracionId implements Serializable {

    private String nombreUsu;
    private Integer idReceta;

    public IcValoracionId() {}

    public IcValoracionId(String nombreUsu, Integer idReceta) {
        this.nombreUsu = nombreUsu;
        this.idReceta = idReceta;
    }

    public String getNombreUsu() {
        return nombreUsu;
    }

    public void setNombreUsu(String nombreUsu) {
        this.nombreUsu = nombreUsu;
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
        if (!(o instanceof IcValoracionId that)) return false;
        return Objects.equals(nombreUsu, that.nombreUsu) &&
                Objects.equals(idReceta, that.idReceta);
    }

    @Override
    public int hashCode() {
        return Objects.hash(nombreUsu, idReceta);
    }
}

