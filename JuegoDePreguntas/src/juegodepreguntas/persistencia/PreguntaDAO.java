
package juegodepreguntas.persistencia;

import java.util.List;
import juegodepreguntas.entidades.Pregunta;



/**
 *
 * @author Agustin Mariano Valda
 */
public class PreguntaDAO extends DAO {
    
    //Busqueda por Parametros
    
    public List<Pregunta> preguntasPorCategoria(Integer nivel){
        List<Pregunta> preguntas=em.createQuery("SELECT p FROM Pregunta p "
                + " WHERE p.categoria.nivelDificultad LIKE :nivel")
                .setParameter("nivel", nivel)
                .getResultList();
        return preguntas;
    }
    
}
