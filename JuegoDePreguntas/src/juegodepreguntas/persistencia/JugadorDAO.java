
package juegodepreguntas.persistencia;

import java.util.List;
import juegodepreguntas.entidades.Jugador;

/**
 *
 * @author Agustin Mariano Valda
 */
public class JugadorDAO extends DAO{
    
    public void crearJugador(Jugador jugador) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(jugador);
            em.getTransaction().commit();
        } catch (Exception e) {
            throw new Exception("Error al persitir JUGADOR");
        }
    }
    
    public void modificarJugador(Jugador jugador) throws Exception{
        try{
            em.getTransaction().begin();
            em.merge(jugador);
            em.getTransaction().commit();
        }catch (Exception e){
            throw new Exception("Error al actualizar estado de JUGADOR");
        }
    }

    public void eliminar(Jugador jugador) throws Exception {
        try {
            em.getTransaction().begin();
            em.remove(jugador);
            em.getTransaction().commit();
        } catch (Exception e) {
            throw new Exception("Error al eliminar JUGADOR");
        }
    }
    
    //CONSULTA CON PARAMETROS
    
    public List<Jugador> buscarJugadorPorNombre(String nombre) {
        List<Jugador> jugador = em.createQuery("SELECT j FROM Jugador j "
                + " WHERE j.nombre LIKE :nombre").
                setParameter("nombre", nombre).getResultList();
        return jugador;
    }
    
    //CONSULTA SIN PARAMETROS
    
     public List<Jugador> listarJugadores() throws Exception {
        List<Jugador> jugadores = em.createQuery("SELECT d FROM Usuario d")
                .getResultList();
        return jugadores;
    }

}
