package DAOs;

public class Museo {
    private Integer idMuseo;
    private String nombre;
    private String ciudad;
    private String pais;
    private String direccion;
    private Integer anioFundacion;

    public Museo() {
    }

    public Integer getIdMuseo() {
        return idMuseo;
    }

    public void setIdMuseo(Integer nuevoIdMuseo) {
        idMuseo = nuevoIdMuseo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nuevoNombre) {
        nombre = nuevoNombre;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String nuevaCiudad) {
        ciudad = nuevaCiudad;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String nuevoPais) {
        pais = nuevoPais;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String nuevaDireccion) {
        direccion = nuevaDireccion;
    }

    public Integer getAnioFundacion() {
        return anioFundacion;
    }

    public void setAnioFundacion(Integer nuevoAnioFundacion) {
        anioFundacion = nuevoAnioFundacion;
    }
}
