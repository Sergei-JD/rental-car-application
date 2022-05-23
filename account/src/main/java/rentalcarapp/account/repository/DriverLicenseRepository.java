package rentalcarapp.account.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import rentalcarapp.account.entity.DriverLicense;

public interface DriverLicenseRepository extends JpaRepository<DriverLicense, Long> {
}
