package com.proyecto.instacook.Entidades;

import jakarta.persistence.*;

@Entity
@Table(name = "ic_valoracion")
public class IcValoracion {

    @EmbeddedId
    private IcValoracionId id;

    @ManyToOne
    @MapsId("nombreUsu")
    @JoinColumn(name = "nombreUsu")
    private IcUsuario nombreUsu;

    @ManyToOne
    @MapsId("idReceta")
    @JoinColumn(name = "idReceta")
    private IcRecetas receta;

    @Column(name = "valoracion")
    private Integer valoracion;

    @Column(name = "comentario")
    private String comentario;

    public IcValoracion() {}

    public IcValoracionId getId() {
        return id;
    }

    public void setId(IcValoracionId id) {
        this.id = id;
    }

    public IcUsuario getNombreUsu() {
        return nombreUsu;
    }

    public void setNombreUsu(IcUsuario nombreUsu) {
        this.nombreUsu = nombreUsu;
    }

    public IcRecetas getReceta() {
        return receta;
    }

    public void setReceta(IcRecetas receta) {
        this.receta = receta;
    }

    public Integer getValoracion() {
        return valoracion;
    }

    public void setValoracion(Integer valoracion) {
        this.valoracion = valoracion;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof IcValoracion that)) return false;
        return id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }

    @Override
    public String toString() {
        return "IcValoracion{" +
                "id=" + id +
                ", nombreUsu=" + nombreUsu +
                ", receta=" + receta +
                ", valoracion=" + valoracion +
                ", comentario='" + comentario + '\'' +
                '}';
    }
}
