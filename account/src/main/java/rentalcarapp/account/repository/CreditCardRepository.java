package rentalcarapp.account.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import rentalcarapp.account.entity.CreditCard;

public interface CreditCardRepository extends JpaRepository<CreditCard, Long> {
}
