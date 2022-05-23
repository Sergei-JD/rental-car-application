package rentalcarapp.order.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import rentalcarapp.order.entity.ParkingSpace;

public interface ParkingSpaceRepository extends JpaRepository<ParkingSpace, Long> {
}
