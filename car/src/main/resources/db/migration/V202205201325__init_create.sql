-- -----------------------------------------------------
-- Table catalog
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS car_catalog
(
    car_catalog_id      SERIAL PRIMARY KEY,
    registration_number VARCHAR(8)   NOT NULL,
    car_type            VARCHAR(32),
    year_of_manufacture CHAR(4)      NOT NULL,
    make                VARCHAR(128) NOT NULL,
    model               VARCHAR(128) NOT NULL,
    colour              VARCHAR(32)  NOT NULL,
    number_of_seats     INTEGER CHECK (car_catalog.number_of_seats >= 1),
    image               BYTEA        NOT NULL,
    price               DECIMAL      NOT NULL,
    car_status          VARCHAR(32)  NOT NULL

);

COMMIT;
