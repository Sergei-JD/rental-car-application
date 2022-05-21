package rentalcarapp.order.entity;

import rentalcarapp.account.entity.Account;
import rentalcarapp.account.entity.CreditCard;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor(access = AccessLevel.PRIVATE)
@EqualsAndHashCode(callSuper = false, of =
        {"orderId", "accountId", "invoiceId", "creditCardId", "parkingSpaceId", "orderStatus"})
@Table(name = "orders", schema = "PUBLIC")
public class Order extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_id", nullable = false)
    private Long orderId;

    @ManyToOne
    @Column(name = "account_id", nullable = false)
    private Account accountId;

    @ManyToOne
    @Column(name = "invoice_id", nullable = false)
    private Invoice invoiceId;

    @OneToOne
    @Column(name = "credit_card_id", nullable = false)
    private CreditCard creditCardId;

    @ManyToOne
    @Column(name = "parking_space_id", nullable = false)
    private ParkingSpace parkingSpaceId;

    @Enumerated(EnumType.STRING)
    @Column(name = "order_status", nullable = false)
    private OrderStatus orderStatus;
}
