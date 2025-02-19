
package modelo;

public class DatosD {
    private String coddatos;
    private String codd;
    private String fecha;
    private String hora;
    private String bus;
    private double costo;
    private String nombre;


    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getBus() {
        return bus;
    }

    public void setBus(String bus) {
        this.bus = bus;
    }

    public String getCodd() {
        return codd;
    }

    public void setCodd(String codd) {
        this.codd = codd;
    }

    public String getCoddatos() {
        return coddatos;
    }

    public void setCoddatos(String coddatos) {
        this.coddatos = coddatos;
    }

    public double getCosto() {
        return costo;
    }

    public void setCosto(double costo) {
        this.costo = costo;
    }
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
