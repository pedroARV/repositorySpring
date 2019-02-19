package com.example.Bootstrap.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;


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
@GeneratedValue(strategy=GenerationType.IDENTITY)

@Column(name = "id_alumnos")
private int idAlumno;

@Column(name = "apellidop_alumnos")
private String apellidop;

public String getApellidop() {
	return apellidop;
}

public void setApellidop(String apellidop) {
	this.apellidop = apellidop;
}

public String getApellidom() {
	return apellidom;
}

public void setApellidom(String apellidom) {
	this.apellidom = apellidom;
}

public static long getSerialversionuid() {
	return serialVersionUID;
}

@Column(name = "apellidom_alumno")
private String apellidom;

@Column(name = "edad_alumnos")
private int edad;

@Column(name = "nombre_alumnos")
private String nombre;

//bi-directional many-to-one association to TProfesor 
@ManyToOne
@JoinColumn(name="t_profesores_id_profesores")
private TProfesor TProfesor;

public TAlumno() {
}

public int getIdAlumno() {
return this.idAlumno;
}

public void setIdAlumno(int idAlumno) {
this.idAlumno = idAlumno;
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