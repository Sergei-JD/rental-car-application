package rentalcarapp.order.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import rentalcarapp.order.entity.Invoice;
import rentalcarapp.order.entity.InvoiceStatus;

public interface InvoiceRepository extends JpaRepository<Invoice, Long> {

    Page<Invoice> findAllByInvoiceStatus(InvoiceStatus invoiceStatus, Pageable pageable);
}
