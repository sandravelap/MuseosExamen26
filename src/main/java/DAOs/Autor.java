package DAOs;

public class Autor {
    private Integer idAutor;
    private String nombre;
    private String apellidos;
    private String nacionalidad;
    private String fechaNacimiento;
    private String fechaFallecimiento;

    public Autor() {
    }

    public Integer getIdAutor() {
        return idAutor;
    }

    public void setIdAutor(Integer nuevoIdAutor) {
        idAutor = nuevoIdAutor;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nuevoNombre) {
        nombre = nuevoNombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String nuevosApellidos) {
        apellidos = nuevosApellidos;
    }

    public String getNacionalidad() {
        return nacionalidad;
    }

    public void setNacionalidad(String nuevaNacionalidad) {
        nacionalidad = nuevaNacionalidad;
    }

    public String getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(String nuevaFechaNacimiento) {
        fechaNacimiento = nuevaFechaNacimiento;
    }

    public String getFechaFallecimiento() {
        return fechaFallecimiento;
    }

    public void setFechaFallecimiento(String nuevaFechaFallecimiento) {
        fechaFallecimiento = nuevaFechaFallecimiento;
    }
}
