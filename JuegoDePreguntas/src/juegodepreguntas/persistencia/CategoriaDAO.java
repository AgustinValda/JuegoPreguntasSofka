
package juegodepreguntas.persistencia;

import juegodepreguntas.entidades.Categoria;

/**
 *
 * @author Agustin Mariano Valda
 */
public class CategoriaDAO extends DAO {
    
    public Categoria busquedaPorNivel(Integer nivel){
        Categoria categoria=(Categoria) em.createQuery("SELECT c "
                + " FROM Categoria c "
                + " WHERE c.nivelDificultad LIKE :nivel")
                .setParameter("nivel", nivel).getSingleResult();
        return categoria;
    }
    
}
