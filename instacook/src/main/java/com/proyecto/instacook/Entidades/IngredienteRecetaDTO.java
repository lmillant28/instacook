package com.proyecto.instacook.Entidades;

public class IngredienteRecetaDTO {
    private Integer idIngrediente;
    private String cantidad;
    private String medida;

    public Integer getIdIngrediente() {
        return idIngrediente;
    }

    public void setIdIngrediente(Integer idIngrediente) {
        this.idIngrediente = idIngrediente;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public String getMedida() {
        return medida;
    }

    public void setMedida(String medida) {
        this.medida = medida;
    }

    public IngredienteRecetaDTO(Integer idIngrediente) {
        this.idIngrediente = idIngrediente;
    }

    public IngredienteRecetaDTO(Integer idIngrediente, String cantidad, String medida) {
        this.idIngrediente = idIngrediente;
        this.cantidad = cantidad;
        this.medida = medida;
    }

    public IngredienteRecetaDTO() {
    }
}
