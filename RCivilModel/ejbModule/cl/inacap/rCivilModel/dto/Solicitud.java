package cl.inacap.rCivilModel.dto;

public class Solicitud {

	private String rut;
	private String nombre;
	private String tsolicitud;
	private int retiro;

	public String getRut() {
		return rut;
	}

	public void setRut(String rut) {
		this.rut = rut;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getTsolicitud() {
		return tsolicitud;
	}

	public void setTsolicitud(String tsolicitud) {
		this.tsolicitud = tsolicitud;
	}

	public int getRetiro() {
		return retiro;
	}

	public void setRetiro(int retiro) {
		this.retiro = retiro;
	}

}
