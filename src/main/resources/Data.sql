DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS cards;

CREATE TABLE `customer` (
`customer_id` int AUTO_INCREMENT PRIMARY KEY,
`name` varchar(100) NOT NULL,
`mobile_number` varchar(13) NOT NULL,
`email_id` varchar(100) NOT NULL,
`created_date` date DEFAULT NULL
);

CREATE TABLE `cards` (
`customer_id` int NOT NULL,
`card_id` int AUTO_INCREMENT PRIMARY KEY,
`card_number` int NOT NULL,
`card_type` varchar(100) NOT NULL,
`expiry_date` date DEFAULT NULL
);

INSERT INTO `customer` (`customer_id`,`name`, `mobile_number`, `email_id`, `created_date`)
VALUES (1,'SkillLync','9876543210','test@skilllync.com',CURDATE());

INSERT INTO `customer` (`customer_id`,`name`, `mobile_number`, `email_id`, `created_date`)
VALUES (2,'SkillLync 2','9876543220','test2@skilllync.com',CURDATE());


INSERT INTO `customer` (`customer_id`,`name`, `mobile_number`, `email_id`, `created_date`)
VALUES (3,'SkillLync 3','9876543230','test3@skilllync.com',CURDATE());


INSERT INTO `cards` (`customer_id`,`card_number`, `card_type`, `expiry_date`)
VALUES (1, 2224, 'Debit',CURDATE());

INSERT INTO `cards` (`customer_id`,`card_number`, `card_type`, `expiry_date`)
VALUES (2, 2345, 'Credit', CURDATE());

INSERT INTO `cards` (`customer_id`,`card_number`, `card_type`, `expiry_date`)
VALUES (1, 76577, 'Credit', CURDATE());