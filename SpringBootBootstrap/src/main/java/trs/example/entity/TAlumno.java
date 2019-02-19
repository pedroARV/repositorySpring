package trs.example.entity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the t_alumno database table.
 * 
 */
@Entity
@Table(name="t_alumno")
@NamedQuery(name="TAlumno.findAll", query="SELECT t FROM TAlumno t")
public class TAlumno implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idAlumno;

	private String apellidos;

	private int edad;

	private String nombre;

	//bi-directional many-to-one association to TProfesor
	@ManyToOne
	@JoinColumn(name="t_profesor_idProfesor")
	private TProfesor TProfesor;

	public TAlumno() {
	}

	public int getIdAlumno() {
		return this.idAlumno;
	}

	public void setIdAlumno(int idAlumno) {
		this.idAlumno = idAlumno;
	}

	public String getApellidos() {
		return this.apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public int getEdad() {
		return this.edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public TProfesor getTProfesor() {
		return this.TProfesor;
	}

	public void setTProfesor(TProfesor TProfesor) {
		this.TProfesor = TProfesor;
	}

}