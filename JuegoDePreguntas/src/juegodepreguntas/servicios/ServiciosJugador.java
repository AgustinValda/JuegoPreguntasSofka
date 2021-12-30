
package juegodepreguntas.servicios;

import java.util.List;
import java.util.Scanner;

import juegodepreguntas.entidades.Categoria;
import juegodepreguntas.entidades.Jugador;
import juegodepreguntas.persistencia.CategoriaDAO;
import juegodepreguntas.persistencia.JugadorDAO;

/**
 *
 * @author Agustin Mariano Valda
 */
public class ServiciosJugador {

    private final JugadorDAO daoJugador;
    private final CategoriaDAO daoCategoria;
    private final Scanner leer;
    public ServiciosJugador() {
        this.daoJugador = new JugadorDAO();
        this.daoCategoria=new CategoriaDAO();
        this.leer= new Scanner(System.in).useDelimiter("\n");
    }
    
    public Jugador crearJugador(){
        
        boolean conclusion=true;
        
        do{
        System.out.println("Ingrese su Nombre de Usuario, el mismo debe ser único.");
        String nombre=leer.next();
        
        
        List<Jugador> verificacion = daoJugador.buscarJugadorPorNombre(nombre);

        if (verificacion.isEmpty()) {
            Jugador jugador = new Jugador();
            jugador.setNombre(nombre);
            jugador.setPuntaje(0);
            jugador.setNivel(1);
            try {
                daoJugador.crearJugador(jugador);
            } catch (Exception ex) {
                System.out.println(ex.getMessage());
            }
           return jugador;
        }
        System.out.println("El Usuario que desea ingresar ya existe, intente nuevamente");
        
        }while(conclusion);
        
        return null;
    }

    public Jugador subirNivel(Jugador jugador) {
        
        
        Categoria categoria = daoCategoria.busquedaPorNivel(jugador.getNivel());
        jugador.setNivel(jugador.getNivel() + 1);
        jugador.setPuntaje(jugador.getPuntaje() + categoria.getPremio());
        try {
            daoJugador.modificarJugador(jugador);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return jugador;
    }
    
    public void mostrarGanador(String nombreGanador){
        
        List<Jugador>jugador=daoJugador.buscarJugadorPorNombre(nombreGanador);
        
        Jugador ganador=jugador.get(0);
        
        System.out.println("--- "+ganador.getNombre()+" ---");
        System.out.println("");
        System.out.println("Tu premio final es de "+ganador.getPuntaje()+" puntos.");
        
    }
    
    public void mostrarResultados(String nombre){
        List<Jugador>jugador=daoJugador.buscarJugadorPorNombre(nombre);
        
        Jugador resultado=jugador.get(0);
        
        System.out.println("--- "+resultado.getNombre()+" ---");
        System.out.println("");
        System.out.println("Tu puntaje conseguido es de "+resultado.getPuntaje()+" puntos.");
    }
}
