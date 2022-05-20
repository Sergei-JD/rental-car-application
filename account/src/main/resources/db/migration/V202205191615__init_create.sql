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
    phone_num         BIGINT      NOT NULL,
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
    card_number      CHAR(16)     NOT NULL,
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

COMMIT;
