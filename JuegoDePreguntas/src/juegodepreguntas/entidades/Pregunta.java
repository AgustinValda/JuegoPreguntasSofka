
 
package juegodepreguntas.entidades;


import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 *
 * @author Agustin Mariano Valda
 */

@Entity
public class Pregunta {
    @Id
    private Integer numPregunta;
    private String contenidoPregunta;
    @ManyToOne
    private Categoria categoria;//Foreign Key

    public Pregunta() {
    }

    public Pregunta(Integer numPregunta, String contenidoPregunta, Categoria categoria) {
        this.numPregunta = numPregunta;
        this.contenidoPregunta = contenidoPregunta;
        this.categoria = categoria;
    }

    public Integer getNumPregunta() {
        return numPregunta;
    }

    public void setNumPregunta(Integer numPregunta) {
        this.numPregunta = numPregunta;
    }

    public String getContenidoPregunta() {
        return contenidoPregunta;
    }

    public void setContenidoPregunta(String contenidoPregunta) {
        this.contenidoPregunta = contenidoPregunta;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setNivelDificultad(Categoria categoria) {
        this.categoria = categoria;
    }

    
}
