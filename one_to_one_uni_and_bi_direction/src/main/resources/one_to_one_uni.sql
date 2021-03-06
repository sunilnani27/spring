DROP SCHEMA IF EXISTS `one_one_uni_dir`;

CREATE SCHEMA `one_one_uni_dir`;

USE `one_one_uni_dir`;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address`(`id` INT(11) NOT NULL AUTO_INCREMENT, 
`city` VARCHAR(20) DEFAULT NULL, 
`state` VARCHAR(20) DEFAULT NULL, PRIMARY KEY (`id`)) 
ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET = latin1;

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person`(`id` INT(11) NOT NULL AUTO_INCREMENT, 
`first_name` VARCHAR(25) DEFAULT NULL, 
`last_name` VARCHAR(25)DEFAULT NULL, 
`address_id` INT(11) DEFAULT NULL,PRIMARY KEY(`id`),
KEY `FK_ADDRESS_idx` (`address_id`), CONSTRAINT `FK_ADDRESS` 
FOREIGN KEY(`address_id`) REFERENCES `address`(`id`)
ON DELETE NO ACTION ON UPDATE NO ACTION) 
ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

SET FOREIGN_KEY_CHECKS=1;