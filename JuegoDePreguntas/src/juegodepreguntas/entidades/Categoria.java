
package juegodepreguntas.entidades;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author Agustin Mariano Valda
 */
@Entity
public class Categoria {
    @Id
    private Integer nivelDificultad;
    private Integer premio;
    
    public Categoria() {
    }

    public Categoria(Integer nivelDificultad, Integer premio) {
        this.nivelDificultad = nivelDificultad;
        this.premio=premio;
    }

    public Integer getNivelDificultad() {
        return nivelDificultad;
    }

    public void setNivelDificultad(Integer nivelDificultad) {
        this.nivelDificultad = nivelDificultad;
    }

    public Integer getPremio() {
        return premio;
    }

    public void setPremio(Integer premio) {
        this.premio = premio;
    }
    
    
    
}
