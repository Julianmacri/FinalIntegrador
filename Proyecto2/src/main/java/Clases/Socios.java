package Clases;



public class Socios 
{
	private int id_socio;
	private String nombre;
	private String apellido;
	private int dni;
	private String mail;
	private String estado;

	public Socios(int id,String nombre,String apellido,int dni,String mail,String estado)
	{
		this.setId_socio(id);   
		this.setNombre(nombre);  
		this.setApellido(apellido);
		this.setDni(dni);
		this.setMail(mail);		
		this.setEstado(estado);
	}
	
	
	
	
	public int getId_socio() 
	{
		return id_socio;
	}
	public void setId_socio(int id_socio) 
	{
		this.id_socio = id_socio;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public int getDni() {
		return dni;
	}
	public void setDni(int dni) {
		this.dni = dni;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}


}
