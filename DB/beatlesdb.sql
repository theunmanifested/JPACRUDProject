-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema beatlesdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `beatlesdb` ;

-- -----------------------------------------------------
-- Schema beatlesdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `beatlesdb` DEFAULT CHARACTER SET utf8 ;
USE `beatlesdb` ;

-- -----------------------------------------------------
-- Table `abbey_road`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `abbey_road` ;

CREATE TABLE IF NOT EXISTS `abbey_road` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `track_name` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS bealtesfan@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'bealtesfan'@'localhost' IDENTIFIED BY 'bealtesfan';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'bealtesfan'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `abbey_road`
-- -----------------------------------------------------
START TRANSACTION;
USE `beatlesdb`;
INSERT INTO `abbey_road` (`id`, `track_name`) VALUES (1, 'Come Together');

COMMIT;

