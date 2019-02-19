package trs.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import trs.example.entity.TProfesor;

@Repository
public interface IProfesorRepository extends JpaRepository<TProfesor, Integer>{

}
