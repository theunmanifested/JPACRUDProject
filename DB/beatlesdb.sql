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
-- Table `song`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `song` ;

CREATE TABLE IF NOT EXISTS `song` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Also track number',
  `track_name` VARCHAR(100) NULL,
  `written_by` VARCHAR(100) NULL,
  `length` VARCHAR(100) NULL,
  `album` VARCHAR(100) NULL,
  `has_ringo` VARCHAR(100) NULL COMMENT 'This is a boolean, where 0 = false, and 1 = true;',
  `date_recorded` VARCHAR(100) NULL,
  `main_singer` VARCHAR(100) NULL,
  `album_version` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS beatlesfan@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'beatlesfan'@'localhost' IDENTIFIED BY 'beatlesfan';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'beatlesfan'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `song`
-- -----------------------------------------------------
START TRANSACTION;
USE `beatlesdb`;
INSERT INTO `song` (`id`, `track_name`, `written_by`, `length`, `album`, `has_ringo`, `date_recorded`, `main_singer`, `album_version`) VALUES (1, 'Come Together', 'John, Paul', '4:19', 'Abbey Road', 'no', '30 July 1969', 'John', NULL);
INSERT INTO `song` (`id`, `track_name`, `written_by`, `length`, `album`, `has_ringo`, `date_recorded`, `main_singer`, `album_version`) VALUES (2, 'Something', 'George', '3:02', 'Abbey Road', 'no', '6 August 1969', 'George', NULL);
INSERT INTO `song` (`id`, `track_name`, `written_by`, `length`, `album`, `has_ringo`, `date_recorded`, `main_singer`, `album_version`) VALUES (3, 'Maxwell\'s Silver Hammer', 'John, Paul', '3:27', 'Abbey Road', 'no', '6 August 1969', 'Paul', NULL);
INSERT INTO `song` (`id`, `track_name`, `written_by`, `length`, `album`, `has_ringo`, `date_recorded`, `main_singer`, `album_version`) VALUES (4, 'Oh! Darling', 'John, Paul', '3:27', 'Abbey Road', 'no', '11 August 1969', 'Paul', NULL);
INSERT INTO `song` (`id`, `track_name`, `written_by`, `length`, `album`, `has_ringo`, `date_recorded`, `main_singer`, `album_version`) VALUES (5, 'Octopus\'s Garden', 'Ringo', '2:51', 'Abbey Road', 'yes', '18 July 1969', 'Ringo', NULL);
INSERT INTO `song` (`id`, `track_name`, `written_by`, `length`, `album`, `has_ringo`, `date_recorded`, `main_singer`, `album_version`) VALUES (6, 'I Want You (She\'s So Heavy)', 'John, Paul', '7:47', 'Abbey Road', 'no', '26 September 1969', 'John', NULL);
INSERT INTO `song` (`id`, `track_name`, `written_by`, `length`, `album`, `has_ringo`, `date_recorded`, `main_singer`, `album_version`) VALUES (7, 'Here Comes the Sun', 'George', '3:05', 'Abbey Road', 'no', '19 August 1969', 'George', NULL);
INSERT INTO `song` (`id`, `track_name`, `written_by`, `length`, `album`, `has_ringo`, `date_recorded`, `main_singer`, `album_version`) VALUES (8, 'Because', 'John, Paul', '2:45', 'Abbey Road', 'no', '5 August 1969', 'John', NULL);
INSERT INTO `song` (`id`, `track_name`, `written_by`, `length`, `album`, `has_ringo`, `date_recorded`, `main_singer`, `album_version`) VALUES (9, 'You Never Give Me Your Money', 'John, Paul', '4:03', 'Abbey Road', 'no', '5 August 1969', 'Paul', NULL);
INSERT INTO `song` (`id`, `track_name`, `written_by`, `length`, `album`, `has_ringo`, `date_recorded`, `main_singer`, `album_version`) VALUES (10, 'Sun King', 'John, Paul', '2:26', 'Abbey Road', 'no', '29 July 1969', 'John', NULL);
INSERT INTO `song` (`id`, `track_name`, `written_by`, `length`, `album`, `has_ringo`, `date_recorded`, `main_singer`, `album_version`) VALUES (11, 'Mean Mr. Mustard', 'John, Paul', '1:06', 'Abbey Road', 'no', '29 July 1969', 'John', NULL);
INSERT INTO `song` (`id`, `track_name`, `written_by`, `length`, `album`, `has_ringo`, `date_recorded`, `main_singer`, `album_version`) VALUES (12, 'Polythene Pam', 'John, Paul', '1:13', 'Abbey Road', 'no', '30 July 1969', 'John', NULL);
INSERT INTO `song` (`id`, `track_name`, `written_by`, `length`, `album`, `has_ringo`, `date_recorded`, `main_singer`, `album_version`) VALUES (13, 'She Came In Through the Bathroom Window', 'Jonh, Paul', '1:58', 'Abbey Road', 'no', '30 July 1969', 'Paul', NULL);
INSERT INTO `song` (`id`, `track_name`, `written_by`, `length`, `album`, `has_ringo`, `date_recorded`, `main_singer`, `album_version`) VALUES (14, 'Golden Slumbers', 'John, Paul', '1:31', 'Abbey Road', 'no', '15 August 1969', 'Paul', NULL);
INSERT INTO `song` (`id`, `track_name`, `written_by`, `length`, `album`, `has_ringo`, `date_recorded`, `main_singer`, `album_version`) VALUES (15, 'Carry That Weight', 'John, Paul', '1:36', 'Abbey Road', 'yes', '15 August 1969', 'Paul', NULL);
INSERT INTO `song` (`id`, `track_name`, `written_by`, `length`, `album`, `has_ringo`, `date_recorded`, `main_singer`, `album_version`) VALUES (16, 'The End', 'John, Paul', '2:05', 'Abbey Road', 'no', '18 August 1969', 'Paul', NULL);
INSERT INTO `song` (`id`, `track_name`, `written_by`, `length`, `album`, `has_ringo`, `date_recorded`, `main_singer`, `album_version`) VALUES (17, 'Her Majesty', 'John, Paul', '0:23', 'Abbey Road', 'no', '2 July 1969', 'Paul', NULL);

COMMIT;

