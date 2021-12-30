
package juegodepreguntas.entidades;

/**
 *
 * @author Agustin Mariano Valda
 */
public class Juego {
    //Esta entidad no se persistira, será la encargada de ejecutar el juego
    private Jugador jugador;
    private Integer ronda;
    

    public Juego() {
    }

    public Juego(Jugador jugador, Integer ronda) {
        this.jugador = jugador;
        this.ronda = ronda;
     
    }

    public Jugador getJugador() {
        return jugador;
    }

    public void setJugador(Jugador jugador) {
        this.jugador = jugador;
    }

    public Integer getRonda() {
        return ronda;
    }

    public void setRonda(Integer ronda) {
        this.ronda = ronda;
    }

 
    
    
    
}
