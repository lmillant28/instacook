package com.proyecto.instacook.Entidades;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "ic_usuario")
public class IcUsuario {

    @Id
    @Column(name = "nombreUsu")
    private String nombreUsu;

    @Column(name = "nombre")
    private String nombre;

    @Column(name = "correo")
    private String correo;

    @Column(name = "password")
    private String password;

    @Column(name = "imagen")
    private String imagen;

    @JsonIgnore
    @OneToMany(mappedBy = "nombreUsu", cascade = CascadeType.REMOVE, orphanRemoval = true)
    private List<IcRecetas> recetas;

    public IcUsuario() {}

    public String getNombreUsu() {
        return nombreUsu;
    }

    public void setNombreUsu(String nombreUsu) {
        this.nombreUsu = nombreUsu;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }



    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public List<IcRecetas> getRecetas() {
        return recetas;
    }

    public void setRecetas(List<IcRecetas> recetas) {
        this.recetas = recetas;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        IcUsuario icUsuario = (IcUsuario) o;
        return Objects.equals(nombreUsu, icUsuario.nombreUsu) && Objects.equals(nombre, icUsuario.nombre) && Objects.equals(correo, icUsuario.correo) && Objects.equals(password, icUsuario.password) && Objects.equals(imagen, icUsuario.imagen) && Objects.equals(recetas, icUsuario.recetas);
    }

    @Override
    public int hashCode() {
        return Objects.hash(nombreUsu, nombre, correo, password, imagen, recetas);
    }

    @Override
    public String toString() {
        return "IcUsuario{" +
                "nombreUsu='" + nombreUsu + '\'' +
                ", nombre='" + nombre + '\'' +
                ", correo='" + correo + '\'' +
                ", password='" + password + '\'' +
                ", imagen='" + imagen + '\'' +
                ", recetas=" + recetas +
                '}';
    }
}
