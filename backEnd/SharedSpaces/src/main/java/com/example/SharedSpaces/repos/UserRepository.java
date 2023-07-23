package com.example.SharedSpaces.repos;

import com.example.SharedSpaces.models.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

// This interface provides CRUD operations for the User entity.
@Repository
public interface UserRepository extends CrudRepository<User, Long> {

    // Finds a User entity by email.
    Optional<User> findByEmail(String email);
}