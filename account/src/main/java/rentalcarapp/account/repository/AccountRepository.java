package rentalcarapp.account.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import rentalcarapp.account.entity.Account;

public interface AccountRepository extends JpaRepository<Account, Long> {
}
