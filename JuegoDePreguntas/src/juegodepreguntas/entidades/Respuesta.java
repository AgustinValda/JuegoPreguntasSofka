
package juegodepreguntas.entidades;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 *
 * @author Agustin Mariano Valda
 */
@Entity
public class Respuesta {
    @Id
    private Integer id;
    private Integer respuestaNumero;
    private String contenidoRespuesta;
    private boolean correcta;//Si la respuesta es la correcta figurara en la base TRUE
    @ManyToOne
    private Pregunta pregunta;//pregunta a la que pertenece la respuesta. Foreign Key

    public Respuesta() {
    }

    public Respuesta(Integer id, Integer respuestaNumero, String contenidoRespuesta, boolean correcta, Pregunta pregunta) {
        this.id = id;
        this.respuestaNumero = respuestaNumero;
        this.contenidoRespuesta = contenidoRespuesta;
        this.correcta = correcta;
        this.pregunta = pregunta;
    }

    public boolean isCorrecta() {
        return correcta;
    }

    public void setCorrecta(boolean correcta) {
        this.correcta = correcta;
    }

    public Pregunta getPregunta() {
        return pregunta;
    }

    public void setPregunta(Pregunta pregunta) {
        this.pregunta = pregunta;
    }

    

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getRespuestaNumero() {
        return respuestaNumero;
    }

    public void setRespuestaNumero(Integer respuestaNumero) {
        this.respuestaNumero = respuestaNumero;
    }

    public String getContenidoRespuesta() {
        return contenidoRespuesta;
    }

    public void setContenidoRespuesta(String contenidoRespuesta) {
        this.contenidoRespuesta = contenidoRespuesta;
    }
    
    
}
