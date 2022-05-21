package rentalcarapp.order.entity;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor(access = AccessLevel.PRIVATE)
@EqualsAndHashCode(callSuper = false, of = {"parkingSpaceId", "address", "level", "numberSpace"})
@Table(name = "parking_space", schema = "PUBLIC")
public class ParkingSpace extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "parking_space_id", nullable = false)
    private Long parkingSpaceId;

    @Column(name = "address", nullable = false)
    private String address;

    @Column(name = "level", nullable = false)
    private String level;

    @Column(name = "number_space", nullable = false)
    private String numberSpace;
}
