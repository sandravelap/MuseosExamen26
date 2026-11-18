package DAOs;

public class Obra {
    private Integer idObra;
    private String titulo;
    private Integer anioCreacion;
    private String tecnica;
    private Integer idAutor;
    private Integer idMuseo;

    public Obra() {
    }

    public Integer getIdObra() {
        return idObra;
    }

    public void setIdObra(Integer nuevoIdObra) {
        idObra = nuevoIdObra;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String nuevoTitulo) {
        titulo = nuevoTitulo;
    }

    public Integer getAnioCreacion() {
        return anioCreacion;
    }

    public void setAnioCreacion(Integer nuevoAnioCreacion) {
        anioCreacion = nuevoAnioCreacion;
    }

    public String getTecnica() {
        return tecnica;
    }

    public void setTecnica(String nuevaTecnica) {
        tecnica = nuevaTecnica;
    }

    public Integer getIdAutor() {
        return idAutor;
    }

    public void setIdAutor(Integer nuevoIdAutor) {
        idAutor = nuevoIdAutor;
    }

    public Integer getIdMuseo() {
        return idMuseo;
    }

    public void setIdMuseo(Integer nuevoIdMuseo) {
        idMuseo = nuevoIdMuseo;
    }
}
