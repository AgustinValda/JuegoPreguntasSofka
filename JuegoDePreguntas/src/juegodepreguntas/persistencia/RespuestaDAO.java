
package juegodepreguntas.persistencia;

import java.util.List;
import juegodepreguntas.entidades.Respuesta;


/**
 *
 * @author Agustin Mariano Valda
 */
public class RespuestaDAO extends DAO {
    //Busqueda por Parametros

    public List<Respuesta> respuestasPorPregunta(Integer pregunta) {
        List<Respuesta> respuestas = em.createQuery("SELECT r FROM Respuesta r "
                + " WHERE r.pregunta.numPregunta LIKE :pregunta")
                .setParameter("pregunta", pregunta)
                .getResultList();
        return respuestas;
    }

}
