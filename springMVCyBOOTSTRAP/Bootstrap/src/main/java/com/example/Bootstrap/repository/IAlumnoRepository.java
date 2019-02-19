package com.example.Bootstrap.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.Bootstrap.entity.TAlumno;

@Repository
public interface IAlumnoRepository extends JpaRepository<TAlumno, Integer>{

}
