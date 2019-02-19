package trs.example.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the t_profesor database table.
 * 
 */
@Entity
@Table(name="t_profesor")
@NamedQuery(name="TProfesor.findAll", query="SELECT t FROM TProfesor t")
public class TProfesor implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idProfesor;

	private String nombre;

	//bi-directional many-to-one association to TAlumno
	@OneToMany(mappedBy="TProfesor")
	private List<TAlumno> TAlumnos;

	public TProfesor() {
	}

	public int getIdProfesor() {
		return this.idProfesor;
	}

	public void setIdProfesor(int idProfesor) {
		this.idProfesor = idProfesor;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public List<TAlumno> getTAlumnos() {
		return this.TAlumnos;
	}

	public void setTAlumnos(List<TAlumno> TAlumnos) {
		this.TAlumnos = TAlumnos;
	}

	public TAlumno addTAlumno(TAlumno TAlumno) {
		getTAlumnos().add(TAlumno);
		TAlumno.setTProfesor(this);

		return TAlumno;
	}

	public TAlumno removeTAlumno(TAlumno TAlumno) {
		getTAlumnos().remove(TAlumno);
		TAlumno.setTProfesor(null);

		return TAlumno;
	}

}