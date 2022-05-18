-- -----------------------------------------------------
-- Table users
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS users
(
    user_id    BIGSERIAL PRIMARY KEY,
    first_name VARCHAR(128)        NOT NULL,
    last_name  VARCHAR(128)        NOT NULL,
    age        NUMERIC(3)          NOT NULL,
    email      VARCHAR(256) UNIQUE NOT NULL,
    password   VARCHAR(256)        NOT NULL,
    gender     VARCHAR(64),
    phone_num  NUMERIC(12)         NOT NULL
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
    user_id INT NOT NULL,
    role_id INT NOT NULL,
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
    driver_licence_id NUMERIC(32)  NOT NULL,
    credit_card_id    BIGINT       NOT NULL
);

-- -----------------------------------------------------
-- Table credit_card
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS credit_card
(
    credit_card_id  BIGSERIAL PRIMARY KEY,
    type            VARCHAR(128) NOT NULL,
    card_number     NUMERIC(64)  NOT NULL,
    date_of_issue   TIMESTAMP    NOT NULL,
    expiration_date TIMESTAMP    NOT NULL,
    cv_code         NUMERIC(3)   NOT NULL,
    name_card_owner VARCHAR(256) NOT NULL
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
    credit_card_id  NUMERIC(12) NOT NULL,
    parking_id      INT         NOT NULL,
    start_date_rent TIMESTAMP   NOT NULL,
    end_date_rent   TIMESTAMP   NOT NULL,
    status          VARCHAR(64) NOT NULL
);

-- -----------------------------------------------------
-- Table invoice
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS invoice
(
    invoice_id        BIGSERIAL PRIMARY KEY,
    payment_id        BIGINT      NOT NULL,
    amount            MONEY       NOT NULL,
    rental_period     NUMERIC(3)  NOT NULL,
    distance_traveled NUMERIC(5)  NOT NULL,
    payment_date      TIMESTAMP   NOT NULL,
    invoice_status    VARCHAR(64) NOT NULL
);

-- -----------------------------------------------------
-- Table payment
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS payment
(
    payment_id     BIGSERIAL PRIMARY KEY,
    user_id        BIGINT NOT NULL,
    account_id     BIGINT NOT NULL,
    credit_card_id BIGINT NOT NULL
);

-- -----------------------------------------------------
-- Table parking
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS parking
(
    parking_id    SERIAL PRIMARY KEY,
    address       VARCHAR(256) NOT NULL,
    level         NUMERIC(2)   NOT NULL,
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
    type_car            VARCHAR(32),
    year_of_manufacture NUMERIC(4)   NOT NULL,
    make                VARCHAR(128) NOT NULL,
    model               VARCHAR(128) NOT NULL,
    colour              VARCHAR(32)  NOT NULL,
    number_of_seats     NUMERIC(2)
);

-- -----------------------------------------------------
-- Table catalog
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS catalog
(
    catalog_id          SERIAL PRIMARY KEY,
    type_car            VARCHAR(32),
    year_of_manufacture NUMERIC(4)   NOT NULL,
    make                VARCHAR(128) NOT NULL,
    model               VARCHAR(128) NOT NULL,
    colour              VARCHAR(32)  NOT NULL,
    image               BYTEA        NOT NULL,
    price               MONEY        NOT NULL,
    status_car          VARCHAR(32)  NOT NULL
);

COMMIT;
