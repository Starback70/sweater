package ru.izotov.sweater.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.izotov.sweater.domain.User;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);

    User findByActivationCode(String code);
}
