package model;

public class Persona {
    private int codigoPersona;
    private String DPI;
    private String nombrePersona;

    public Persona() {
    }

    public Persona(int codigoPersona, String DPI, String nombrePersona) {
        this.codigoPersona = codigoPersona;
        this.DPI = DPI;
        this.nombrePersona = nombrePersona;
    }

    public int getCodigoPersona() {
        return codigoPersona;
    }

    public void setCodigoPersona(int codigoPersona) {
        this.codigoPersona = codigoPersona;
    }

    public String getDPI() {
        return DPI;
    }

    public void setDPI(String DPI) {
        this.DPI = DPI;
    }

    public String getNombrePersona() {
        return nombrePersona;
    }

    public void setNombrePersona(String nombrePersona) {
        this.nombrePersona = nombrePersona;
    }
    
    
    
    
}
