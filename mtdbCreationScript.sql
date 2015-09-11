-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema mtdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mtdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mtdb` DEFAULT CHARACTER SET latin1 ;
USE `mtdb` ;

-- -----------------------------------------------------
-- Table `mtdb`.`order_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mtdb`.`order_type` (
  `order_type_id` INT(11) NOT NULL COMMENT '',
  `order_type` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`order_type_id`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `mtdb`.`side`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mtdb`.`side` (
  `side_id` INT(11) NOT NULL COMMENT '',
  `side_name` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`side_id`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `mtdb`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mtdb`.`users` (
  `userid` INT(11) NOT NULL COMMENT '',
  `username` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `password` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `fname` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `lname` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `role` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`userid`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `mtdb`.`block`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mtdb`.`block` (
  `block_id` INT(11) NOT NULL COMMENT '',
  `symbol` VARCHAR(45) NOT NULL COMMENT '',
  `status` VARCHAR(30) NOT NULL COMMENT '',
  `open_quantity` INT(11) NOT NULL COMMENT '',
  `total_quantity` INT(11) NOT NULL COMMENT '',
  `exec_quantity` INT(11) NOT NULL COMMENT '',
  `limit_price` DECIMAL(19,2) NULL DEFAULT NULL COMMENT '',
  `stop_price` DECIMAL(19,2) NULL DEFAULT NULL COMMENT '',
  `trader_id` INT(11) NOT NULL COMMENT '',
  `side_order_id` INT(11) NOT NULL COMMENT '',
  `order_type_id` INT(11) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`block_id`)  COMMENT '',
  INDEX `trader_id` (`trader_id` ASC)  COMMENT '',
  INDEX `side_order_id` (`side_order_id` ASC)  COMMENT '',
  INDEX `order_type_id` (`order_type_id` ASC)  COMMENT '',
  CONSTRAINT `order_type_id`
    FOREIGN KEY (`order_type_id`)
    REFERENCES `mtdb`.`order_type` (`order_type_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `side_order_id`
    FOREIGN KEY (`side_order_id`)
    REFERENCES `mtdb`.`side` (`side_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `trader_id`
    FOREIGN KEY (`trader_id`)
    REFERENCES `mtdb`.`users` (`userid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `mtdb`.`portfolio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mtdb`.`portfolio` (
  `id` INT(11) NOT NULL COMMENT '',
  `pm_id` INT(11) NULL DEFAULT NULL COMMENT '',
  `name` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `userfk` (`pm_id` ASC)  COMMENT '',
  CONSTRAINT `userfk`
    FOREIGN KEY (`pm_id`)
    REFERENCES `mtdb`.`users` (`userid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `mtdb`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mtdb`.`orders` (
  `id` INT(11) NOT NULL COMMENT '',
  `port_id` INT(11) NULL DEFAULT NULL COMMENT '',
  `block_order_id` INT(11) NULL DEFAULT NULL COMMENT '',
  `symbol` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `quantity` INT(11) NULL DEFAULT NULL COMMENT '',
  `side` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `type` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `price` DECIMAL(19,2) NULL DEFAULT NULL COMMENT '',
  `trader` INT(11) NULL DEFAULT NULL COMMENT '',
  `notes` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `status` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `timeStamp` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  INDEX `portidfk` (`port_id` ASC)  COMMENT '',
  INDEX `block_id` (`block_order_id` ASC)  COMMENT '',
  INDEX `trader` (`trader` ASC)  COMMENT '',
  INDEX `port_id` (`port_id` ASC)  COMMENT '',
  INDEX `block_order_id` (`block_order_id` ASC)  COMMENT '',
  CONSTRAINT `block_order_id`
    FOREIGN KEY (`block_order_id`)
    REFERENCES `mtdb`.`block` (`block_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `port_id`
    FOREIGN KEY (`port_id`)
    REFERENCES `mtdb`.`portfolio` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `trader`
    FOREIGN KEY (`trader`)
    REFERENCES `mtdb`.`users` (`userid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
