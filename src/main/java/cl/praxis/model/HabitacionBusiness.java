package cl.praxis.model;

import java.util.ArrayList;
import java.util.List;

public class HabitacionBusiness {

    private List<Habitacion> habitaciones;

    public HabitacionBusiness() {
        habitaciones = new ArrayList<>();
        inicializarHabitaciones();
    }

    private void inicializarHabitaciones() {
        habitaciones.add(new Habitacion(1, "Habitación Simple", "Descripción de la habitación simple", "https://images.mirai.com/INFOROOMS/56757573/1LGApJPp31geOtzmXf86/1LGApJPp31geOtzmXf86_large.jpg", 50000, 1, 20));
        habitaciones.add(new Habitacion(2, "Habitación Doble", "Descripción de la habitación doble", "https://www.hotelvictoriamerida.com/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/1/_/1.jpg", 75000, 2, 35));
        habitaciones.add(new Habitacion(3, "Habitación Triple", "Descripción de la habitación triple", "https://images.mirai.com/INFOROOMS/23452739/PhAUZjt6wKQwaniolMkf/PhAUZjt6wKQwaniolMkf_large.jpg", 175000, 2, 35));
        habitaciones.add(new Habitacion(4, "Habitación Cuádruple", "Descripción de la habitación cuádruple", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRyftZqnH_ClK9-UXbcrD-8FOgnegRu40e6w&s", 275000, 2, 35));
        habitaciones.add(new Habitacion(5, "Habitación Quintuple", "Descripción de la habitación quintuple", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiiSruUd5WsKWix40bPquXQzLMe42SNKX6jQ&s", 375000, 2, 35));
        habitaciones.add(new Habitacion(6, "Habitación Sextuple", "Descripción de la habitación sextuple", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD3B7XxmR-fz6T-O0M2qQfJomsC1s3H23_4w&s", 475000, 2, 35));
        habitaciones.add(new Habitacion(7, "Habitación Séptuple", "Descripción de la habitación séptuple", "https://q-xx.bstatic.com/xdata/images/hotel/max300/320064715.jpg?k=1ca3e203ba31b6bd2173f35e73e458bc7803e3d391deb306279b2642b5a0b57a&o=", 575000, 2, 35));
        habitaciones.add(new Habitacion(8, "Habitación Octávuple", "Descripción de la habitación octávuple", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiiSruUd5WsKWix40bPquXQzLMe42SNKX6jQ&s", 675000, 2, 35));
    }

    public List<Habitacion> getHabitaciones() {
        return habitaciones;
    }
    
    public Habitacion getHabitacionById(int id) {
        for (Habitacion habitacion : habitaciones) {
            if (habitacion.getId() == id) {
                return habitacion;
            }
        }
        return null; 
    }
    
    public int calculaValorCompra(int valorHabitacion, int dias) {
        return valorHabitacion * dias;
    }

}
