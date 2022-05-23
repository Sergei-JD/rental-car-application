package rentalcarapp.car.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import rentalcarapp.car.entity.CarCatalog;
import rentalcarapp.car.entity.CarStatus;
import rentalcarapp.car.entity.CarType;

import java.math.BigDecimal;
import java.util.Optional;

public interface CarCatalogRepository extends JpaRepository<CarCatalog, Long> {

    Optional<CarCatalog> findByRegistrationNumber(String registrationNumber);

    Page<CarCatalog> findAllByCarType(CarType carType, Pageable pageable);

    Page<CarCatalog> findAllByMake(String make, Pageable pageable);

    Page<CarCatalog> findAllByModel(String model, Pageable pageable);

    Page<CarCatalog> findAllByPrice(BigDecimal price, Pageable pageable);

    Page<CarCatalog> findAllByCarStatus(CarStatus carStatus, Pageable pageable);
}
