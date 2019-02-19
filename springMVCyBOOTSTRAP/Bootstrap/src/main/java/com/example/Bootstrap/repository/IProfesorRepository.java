package com.example.Bootstrap.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.Bootstrap.entity.TProfesor;

@Repository
public interface IProfesorRepository extends JpaRepository<TProfesor, Integer>{

}
