-- -----------------------------------------------------
-- Table users
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS users
(
    user_id    BIGSERIAL PRIMARY KEY,
    first_name VARCHAR(256)        NOT NULL,
    last_name  VARCHAR(256)        NOT NULL,
    age        INTEGER             NOT NULL CHECK (users.age > 0),
    email      VARCHAR(256) UNIQUE NOT NULL,
    password   VARCHAR(256)        NOT NULL,
    gender     VARCHAR(64)
);

-- -----------------------------------------------------
-- Table role
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS role
(
    role_id SERIAL PRIMARY KEY,
    name    VARCHAR(64) NOT NULL
);

-- -----------------------------------------------------
-- Table user_role
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS user_role
(
    user_id BIGINT NOT NULL,
    role_id INT    NOT NULL,
    PRIMARY KEY (user_id, role_id)
);

-- -----------------------------------------------------
-- Table account
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS account
(
    account_id        BIGSERIAL PRIMARY KEY,
    user_id           BIGINT       NOT NULL,
    nick_name         VARCHAR(256) NOT NULL,
    password          VARCHAR(256) NOT NULL,
    phone_num         INTEGER      NOT NULL,
    driver_licence_id VARCHAR(32)  NOT NULL,
    credit_card_id    BIGINT       NOT NULL
);

-- -----------------------------------------------------
-- Table credit_card
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS credit_card
(
    credit_card_id   BIGSERIAL PRIMARY KEY,
    credit_card_type VARCHAR(128) NOT NULL,
    card_number      CHAR(12)     NOT NULL,
    date_of_issue    TIMESTAMP    NOT NULL,
    expiration_date  TIMESTAMP    NOT NULL,
    cvv_code         CHAR(3)      NOT NULL,
    name_card_owner  VARCHAR(256) NOT NULL,
    balance          NUMERIC
);

-- -----------------------------------------------------
-- Table driver_license
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS driver_license
(
    driver_license_id     BIGSERIAL PRIMARY KEY,
    driver_license_number VARCHAR(32) NOT NULL,
    category              VARCHAR(32) NOT NULL,
    date_of_issue         TIMESTAMP   NOT NULL,
    expiration_date       TIMESTAMP   NOT NULL
);

-- *****************************************************

-- -----------------------------------------------------
-- Table orders
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS orders
(
    order_id        BIGSERIAL PRIMARY KEY,
    account_id      BIGINT      NOT NULL,
    invoice_id      BIGINT      NOT NULL,
    credit_card_id  BIGINT      NOT NULL,
    parking_id      INTEGER     NOT NULL,
    start_date_rent TIMESTAMP   NOT NULL,
    end_date_rent   TIMESTAMP   NOT NULL CHECK (orders.end_date_rent >= orders.start_date_rent),
    order_status    VARCHAR(64) NOT NULL
);

-- -----------------------------------------------------
-- Table invoice
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS invoice
(
    invoice_id        BIGSERIAL PRIMARY KEY,
    account_id        BIGINT      NOT NULL,
    amount            NUMERIC CHECK (invoice.amount >= 0),
    rental_period     INTEGER CHECK (invoice.rental_period > 0),
    distance_traveled INTEGER CHECK (invoice.distance_traveled >= 0),
    payment_date      TIMESTAMP   NOT NULL,
    invoice_status    VARCHAR(64) NOT NULL
);

-- -----------------------------------------------------
-- Table parking
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS parking
(
    parking_id    SERIAL PRIMARY KEY,
    address       VARCHAR(256) NOT NULL,
    level         VARCHAR(3)   NOT NULL,
    parking_space VARCHAR(5)   NOT NULL
);

-- *****************************************************

-- -----------------------------------------------------
-- Table car
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS car
(
    car_id              BIGSERIAL PRIMARY KEY,
    registration_number VARCHAR(8)   NOT NULL,
    car_type            VARCHAR(32)  NOT NULL,
    year_of_manufacture CHAR(4)      NOT NULL,
    make                VARCHAR(128) NOT NULL,
    model               VARCHAR(128) NOT NULL,
    colour              VARCHAR(32)  NOT NULL,
    number_of_seats     INTEGER
);

-- -----------------------------------------------------
-- Table catalog
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS catalog
(
    catalog_id          SERIAL PRIMARY KEY,
    car_type            VARCHAR(32),
    year_of_manufacture CHAR(4)      NOT NULL,
    make                VARCHAR(128) NOT NULL,
    model               VARCHAR(128) NOT NULL,
    colour              VARCHAR(32)  NOT NULL,
    image               BYTEA        NOT NULL,
    price               DECIMAL      NOT NULL,
    car_status          VARCHAR(32)  NOT NULL,
    number_of_seats     VARCHAR(2)
);

COMMIT;

DROP TABLE users;
DROP TABLE role;
DROP TABLE user_role;
DROP TABLE account;
DROP TABLE credit_card;
DROP TABLE driver_license;
DROP TABLE orders;
DROP TABLE invoice;
DROP TABLE parking;
DROP TABLE car;
DROP TABLE catalog;
