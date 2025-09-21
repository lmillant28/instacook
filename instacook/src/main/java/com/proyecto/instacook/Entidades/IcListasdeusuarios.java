package com.proyecto.instacook.Entidades;

import jakarta.persistence.*;

@Entity
@Table(name = "ic_listasdeusuarios")
public class IcListasdeusuarios {

    @EmbeddedId
    private IcListasdeusuariosId id;

    @ManyToOne
    @MapsId("nombreUsu")
    @JoinColumn(name = "nombreUsu")
    private IcUsuario nombreUsu;

    @ManyToOne
    @MapsId("idCarpeta")
    @JoinColumn(name = "idCarpeta")
    private IcListas carpeta;

    public IcListasdeusuarios() {}

    public IcListasdeusuariosId getId() {
        return id;
    }

    public void setId(IcListasdeusuariosId id) {
        this.id = id;
    }

    public IcUsuario getNombreUsu() {
        return nombreUsu;
    }

    public void setNombreUsu(IcUsuario nombreUsu) {
        this.nombreUsu = nombreUsu;
    }

    public IcListas getCarpeta() {
        return carpeta;
    }

    public void setCarpeta(IcListas carpeta) {
        this.carpeta = carpeta;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof IcListasdeusuarios that)) return false;
        return id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }

    @Override
    public String toString() {
        return "IcListasdeusuarios{" +
                "id=" + id +
                ", nombreUsu=" + nombreUsu +
                ", carpeta=" + carpeta +
                '}';
    }
}
