
package juegodepreguntas.servicios;

import java.util.List;
import java.util.Scanner;
import juegodepreguntas.entidades.Juego;
import juegodepreguntas.entidades.Jugador;
import juegodepreguntas.entidades.Pregunta;
import juegodepreguntas.entidades.Respuesta;
import juegodepreguntas.persistencia.CategoriaDAO;
import juegodepreguntas.persistencia.JugadorDAO;
import juegodepreguntas.persistencia.PreguntaDAO;
import juegodepreguntas.persistencia.RespuestaDAO;

/**
 *
 * @author Agustin Mariano Valda
 */
public class ServiciosJuego {

    private final RespuestaDAO daoRespuesta;
    private final PreguntaDAO daoPregunta;
    private final CategoriaDAO daoCategoria;
    private final JugadorDAO daoJugador;
    private final ServiciosJugador servicioJugador;
    private final Scanner leer;
    
    public ServiciosJuego() {
        this. daoRespuesta= new RespuestaDAO();
        this.daoPregunta= new PreguntaDAO();
        this.daoCategoria= new CategoriaDAO();
        this.daoJugador= new JugadorDAO();
        this.servicioJugador= new ServiciosJugador();
        this.leer= new Scanner(System.in).useDelimiter("\n");
    }
    
    public void comenzarJuego(){
        
        System.out.println("Bienvenido al Juego de Preguntas de DEPORTES");
        System.out.println("");

        System.out.println("¿Ya estás registrado? Presione S para SI o N par NO");
        String registro = leer.next();
        if (registro.equalsIgnoreCase("S")) {
            System.out.println("Ingrese su Nombre de Usuario");
            String nombre=leer.next();
            List<Jugador>jugadores=daoJugador.buscarJugadorPorNombre(nombre);
            if(jugadores.isEmpty()){
                System.out.println("No se ha encontrado el jugador");
                System.out.println("Registre su usuario");
                Jugador jugador= servicioJugador.crearJugador();
                Juego juego= new Juego(jugador,1);
                boolean ejecucion=ejecucionPreguntas(juego);
                if(ejecucion){
                    finalJuego(jugador);
                }else{
                   servicioJugador.mostrarResultados(jugador.getNombre());
                }
                //registramos y arrancamos
            }else{
                Jugador jugador = jugadores.get(0);
                
                if(jugador.getNivel()>5){
                    System.out.println(jugador.getNombre()+" Ya has jugado y has ganado");
                    servicioJugador.mostrarGanador(jugador.getNombre());
                }else{
                     Juego juego = new Juego(jugador, jugador.getNivel());
                boolean ejecucion=ejecucionPreguntas(juego);
                if(ejecucion){
                    finalJuego(jugador);
                }else{
                    servicioJugador.mostrarResultados(jugador.getNombre());
                }
                }
            }
        } else {
            Jugador jugador = servicioJugador.crearJugador();
            Juego juego = new Juego(jugador, 1);
            boolean ejecucion= ejecucionPreguntas(juego);
            if(ejecucion){
                finalJuego(jugador);
            }else{
                servicioJugador.mostrarResultados(jugador.getNombre());
            }
        }
    }
   
    public boolean ejecucionPreguntas(Juego juego) {
        Jugador jugador = juego.getJugador();
        
        do {
            
            List<Pregunta> preguntas = daoPregunta.preguntasPorCategoria(jugador.getNivel());

            int random = (int) (Math.random() * 5);//se genera un número al azar para seleccionar en la lista

            Pregunta pregunta = preguntas.get(random);
            System.out.println("");
            System.out.println("RONDA NÚMERO "+juego.getRonda());
            System.out.println("");
            System.out.println("--------------------");
            System.out.println("");
            System.out.println(pregunta.getContenidoPregunta());//se muestra por pantalla la pregunta

            List<Respuesta> respuestas = daoRespuesta.respuestasPorPregunta(pregunta.getNumPregunta());
            System.out.println("");
            System.out.println("Respuestas");
            for (Respuesta respuesta : respuestas) {
                System.out.println(respuesta.getRespuestaNumero() + "- " + respuesta.getContenidoRespuesta());
            }
            System.out.println("¿La opción correcta es la respuesta 1,2,3 o 4?");
            int opcion=leer.nextInt();
            if(respuestas.get(opcion-1).isCorrecta()){
                System.out.println("Respuesta correcta, pasa a la siguiente ronda");
                jugador = servicioJugador.subirNivel(jugador);
            }else{
                System.out.println("Respueste incorrecta, pierdes");
                System.out.println("Perdiste, pero no te desalientes, estos son tus resultados");
                return false;
            }
            System.out.println("");
            if (juego.getRonda() < 5) {
                System.out.println("¿Desea continuar jugando? Presione S para SI o N par NO");
                String continuar = leer.next();
                if (continuar.equalsIgnoreCase("n")) {
                    System.out.println("Has decidido finalizar el juego");
                    System.out.println("Estos son tus resultados parciales");
                    return false;
                } else {
                    juego.setRonda(juego.getRonda() + 1);
                }
            } else {
                juego.setRonda(juego.getRonda() + 1);
            }

        } while (juego.getRonda() <= 5);

        return true;
    }
    
    public void finalJuego (Jugador jugador){
        
        System.out.println("¡¡¡FELICITACIONES HAS GANADO EL PREMIO MAYOR!!!");
        System.out.println("");
        servicioJugador.mostrarGanador(jugador.getNombre());
    }
    
   
}
