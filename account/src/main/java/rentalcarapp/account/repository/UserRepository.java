package rentalcarapp.account.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import rentalcarapp.account.entity.Role;
import rentalcarapp.account.entity.User;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {

    Optional<User> findUserByEmail(String email);

    Page<User> findAllByRole(Role role, Pageable pageable);

}
