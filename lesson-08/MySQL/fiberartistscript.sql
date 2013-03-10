SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 ;
USE `test` ;

-- -----------------------------------------------------
-- Table `test`.`fiberartwork`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `test`.`fiberartwork` (
  `idfiberartwork` INT(11) NOT NULL AUTO_INCREMENT ,
  `fiberartworkid_fibergalleryid` INT(11) NOT NULL ,
  `fibertitle` VARCHAR(45) NOT NULL ,
  `size` VARCHAR(45) NULL DEFAULT NULL ,
  `price` VARCHAR(45) NULL DEFAULT NULL ,
  `materials` MEDIUMTEXT NULL DEFAULT NULL ,
  `description` LONGTEXT NULL DEFAULT NULL ,
  `image` BLOB NULL DEFAULT NULL ,
  PRIMARY KEY (`idfiberartwork`) ,
  INDEX `fk_fiberartwork_fibergallery_idx` (`fiberartworkid_fibergalleryid` ASC) )
ENGINE = MyISAM
AUTO_INCREMENT = 79
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `test`.`fibergallery`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `test`.`fibergallery` (
  `idfibergallery` INT(11) NOT NULL AUTO_INCREMENT ,
  `fiberartistid_fibergalleryid` INT(11) NOT NULL ,
  `galleryname` VARCHAR(45) NOT NULL ,
  `fiberartwork_idfiberartwork` INT(11) NOT NULL ,
  PRIMARY KEY (`idfibergallery`) ,
  INDEX `fk_artistid_idx` (`fiberartistid_fibergalleryid` ASC) ,
  INDEX `fk_fibergallery_fiberartwork1_idx` (`fiberartwork_idfiberartwork` ASC) )
ENGINE = MyISAM
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `test`.`fiberartist`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `test`.`fiberartist` (
  `idfiberartist` INT(11) NOT NULL AUTO_INCREMENT ,
  `fiberartistname` VARCHAR(45) NOT NULL ,
  `fibergallery_idfibergallery` INT(11) NOT NULL ,
  PRIMARY KEY (`idfiberartist`) ,
  INDEX `fk_fiberartist_fibergallery_idx` (`fibergallery_idfibergallery` ASC) )
ENGINE = MyISAM
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = latin1;

USE `test` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
