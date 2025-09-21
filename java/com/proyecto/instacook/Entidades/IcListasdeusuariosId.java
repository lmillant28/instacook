package com.proyecto.instacook.Entidades;

import jakarta.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class IcListasdeusuariosId implements Serializable {

    private String nombreUsu;
    private Integer idCarpeta;

    public IcListasdeusuariosId() {}

    public IcListasdeusuariosId(String nombreUsu, Integer idCarpeta) {
        this.nombreUsu = nombreUsu;
        this.idCarpeta = idCarpeta;
    }

    public String getNombreUsu() {
        return nombreUsu;
    }

    public void setNombreUsu(String nombreUsu) {
        this.nombreUsu = nombreUsu;
    }

    public Integer getIdCarpeta() {
        return idCarpeta;
    }

    public void setIdCarpeta(Integer idCarpeta) {
        this.idCarpeta = idCarpeta;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof IcListasdeusuariosId that)) return false;
        return Objects.equals(nombreUsu, that.nombreUsu) &&
                Objects.equals(idCarpeta, that.idCarpeta);
    }

    @Override
    public int hashCode() {
        return Objects.hash(nombreUsu, idCarpeta);
    }
}

