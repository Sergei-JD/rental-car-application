package rentalcarapp.order.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import rentalcarapp.account.entity.Account;
import rentalcarapp.order.entity.Order;
import rentalcarapp.order.entity.OrderStatus;

import java.util.Optional;

public interface OrderRepository extends JpaRepository<Order, Long> {

    Optional<Order> findByAccountId(Account accountId);

    Page<Order> findAllByOrderStatus(OrderStatus orderStatus, Pageable pageable);
}
