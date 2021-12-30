
package juegodepreguntas.persistencia;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

/**
 *
 * @author Agustin Mariano Valda
 */
public class DAO {
     protected EntityManager em = Persistence.createEntityManagerFactory("JuegoDePreguntasPU").createEntityManager();
}
