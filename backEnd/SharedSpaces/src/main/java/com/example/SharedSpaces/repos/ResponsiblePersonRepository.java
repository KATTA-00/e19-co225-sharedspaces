package com.example.SharedSpaces.repos;

import com.example.SharedSpaces.models.ResponsiblePerson;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

// This interface provides CRUD operations for the ResponsiblePerson entity.
@Repository
public interface ResponsiblePersonRepository extends CrudRepository<ResponsiblePerson, Long> {

    // Finds a ResponsiblePerson entity by email.
    Optional<ResponsiblePerson> findByEmail(String email);

}