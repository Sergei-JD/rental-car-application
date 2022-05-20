-- -----------------------------------------------------
-- Insert table user
-- -----------------------------------------------------
INSERT INTO users (user_id, first_name, last_name, age, email, password, gender)
            VALUES (1, 'Ivan', 'Ivanov', 46, 'ivan@email.com', '1111', 'MALE');
INSERT INTO users (user_id, first_name, last_name, age, email, password, gender)
            VALUES (2, 'Petr', 'Petrov', 32, 'petr@email.com', '2222', 'MALE');
INSERT INTO users (user_id, first_name, last_name, age, email, password, gender)
            VALUES (3, 'Sergey', 'Sergeev', 28, 'sergey@email.com', '3333', 'MALE');
INSERT INTO users (user_id, first_name, last_name, age, email, password, gender)
            VALUES (4, 'Sveta', 'Svetikova', 51, 'sveta@email.com', '4444', 'FEMALE');
INSERT INTO users (user_id, first_name, last_name, age, email, password, gender)
            VALUES (5, 'Maria', 'Marieva', 22, 'maria@email.com', '5555', 'FEMALE');
INSERT INTO users (user_id, first_name, last_name, age, email, password, gender)
            VALUES (6, 'Valentina', 'Valentinova', 47, 'valentina@email.com', '6666', 'FEMALE');

-- -----------------------------------------------------
-- Insert table driver_license
-- -----------------------------------------------------
INSERT INTO driver_license (driver_license_id, driver_license_number, category, date_of_issue, expiration_date)
            VALUES (1, '646324213243', 'B', '2015-05-19', '2025-05-19');
INSERT INTO driver_license (driver_license_id, driver_license_number, category, date_of_issue, expiration_date)
            VALUES (2, '678474325424', 'B, C', '2016-06-21', '2026-06-21');
INSERT INTO driver_license (driver_license_id, driver_license_number, category, date_of_issue, expiration_date)
            VALUES (3, '586787452341', 'C', '2018-11-10', '2028-11-10');
INSERT INTO driver_license (driver_license_id, driver_license_number, category, date_of_issue, expiration_date)
            VALUES (4, '678934523454', 'D, E', '2020-01-09', '2030-01-09');
INSERT INTO driver_license (driver_license_id, driver_license_number, category, date_of_issue, expiration_date)
            VALUES (5, '364523454241', 'A, B, D', '2014-04-30', '2024-04-30');
INSERT INTO driver_license (driver_license_id, driver_license_number, category, date_of_issue, expiration_date)
            VALUES (6, '365652343527', 'B', '2019-12-29', '2029-12-29');

-- -----------------------------------------------------
-- Insert table credit_card
-- -----------------------------------------------------
INSERT INTO credit_card (credit_card_id, credit_card_type, card_number, date_of_issue, expiration_date, cvv_code, name_card_owner, balance)
            VALUES (1, 'AMERICAN_EXPRESS', '6753234223424623', '2015-05-19', '2025-05-19', '438', 'Ivan Ivanov', 7608);
INSERT INTO credit_card (credit_card_id, credit_card_type, card_number, date_of_issue, expiration_date, cvv_code, name_card_owner, balance)
            VALUES (2, 'VISA', '6396771750148265', '2020-03-08', '2030-03-08', '503', 'Petr Petrov', 653);
INSERT INTO credit_card (credit_card_id, credit_card_type, card_number, date_of_issue, expiration_date, cvv_code, name_card_owner, balance)
            VALUES (3, 'MASTERCARD', '4312637834536454', '2016-11-24', '2026-11-24', '987', 'Sergey Sergeev', 110367);
INSERT INTO credit_card (credit_card_id, credit_card_type, card_number, date_of_issue, expiration_date, cvv_code, name_card_owner, balance)
            VALUES (4, 'AMERICAN_EXPRESS', '9485618649047917', '2017-11-09', '2027-11-09', '44', 'Sveta Svetikova Ivanov', 20124);
INSERT INTO credit_card (credit_card_id, credit_card_type, card_number, date_of_issue, expiration_date, cvv_code, name_card_owner, balance)
            VALUES (5, 'VISA', '0898024323423879', '2021-12-08', '2031-12-08', '362', 'Maria Marieva', 1430);
INSERT INTO credit_card (credit_card_id, credit_card_type, card_number, date_of_issue, expiration_date, cvv_code, name_card_owner, balance)
            VALUES (6, 'MASTERCARD', '9183179102970189', '2018-10-14', '2028-10-14', '342', 'Valentina Valentinova', 54367);

-- -----------------------------------------------------
-- Insert table account
-- -----------------------------------------------------
INSERT INTO account (account_id, user_id, nick_name, password, phone_num, driver_licence_id, credit_card_id)
            VALUES (1, 1, 'IvanavI', '1111', 456532342345, '1', 1);
INSERT INTO account (account_id, user_id, nick_name, password, phone_num, driver_licence_id, credit_card_id)
            VALUES (2, 2, 'PetrteP', '2222', 674563235423, '2', 2);
INSERT INTO account (account_id, user_id, nick_name, password, phone_num, driver_licence_id, credit_card_id)
            VALUES (3, 3, 'SergeyegreS', '3333', 623423454575, '3', 3);
INSERT INTO account (account_id, user_id, nick_name, password, phone_num, driver_licence_id, credit_card_id)
            VALUES (4, 4, 'SvetatevS', '4444', 674563235423, '4', 4);
INSERT INTO account (account_id, user_id, nick_name, password, phone_num, driver_licence_id, credit_card_id)
            VALUES (5, 5, 'VariairaV', '5555', 234563567364, '5', 5);
INSERT INTO account (account_id, user_id, nick_name, password, phone_num, driver_licence_id, credit_card_id)
            VALUES (6, 6, 'ValentinanitnelaV', '6666', 674563235423, '6', 6);

COMMIT;