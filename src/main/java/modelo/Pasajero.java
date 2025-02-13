
package modelo;

public class Pasajero {
    private String nombre;
    private String nroboleto;
    private String coddatos;
    private double pago;
    private String tipo;
    private int asiento;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNroboleto() {
        return nroboleto;
    }

    public void setNroboleto(String nroboleto) {
        this.nroboleto = nroboleto;
    }

    public double getPago() {
        return pago;
    }

    public void setPago(double pago) {
        this.pago = pago;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getCoddatos() {
        return coddatos;
    }

    public void setCoddatos(String coddatos) {
        this.coddatos = coddatos;
    }

    public int getAsiento() {
        return asiento;
    }

    public void setAsiento(int asiento) {
        this.asiento = asiento;
    }
    
}
