-- -----------------------------------------------------
-- Schema demografia_cl
-- -----------------------------------------------------
-- Listado de regiones > provincias > comunas > localidades al 31/12/2019

CREATE SCHEMA IF NOT EXISTS `demografia_cl` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci ;
USE `demografia_cl` ;

-- -----------------------------------------------------
-- Table `region`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `region` (
  `id_region` INT NOT NULL AUTO_INCREMENT,
  `nombre_region` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id_region`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `provincia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `provincia` (
  `id_provincia` INT NOT NULL AUTO_INCREMENT,
  `id_region` INT NOT NULL,
  `nombre_provincia` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id_provincia`),
  INDEX `fk_provincia_region_idx` (`id_region` ASC),
  CONSTRAINT `fk_provincia_region`
    FOREIGN KEY (`id_region`)
    REFERENCES `region` (`id_region`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `comuna`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `comuna` (
  `id_comuna` INT NOT NULL AUTO_INCREMENT,
  `id_provincia` INT NOT NULL,
  `nombre_comuna` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_comuna`),
  INDEX `fk_comuna_provincia1_idx` (`id_provincia` ASC),
  CONSTRAINT `fk_comuna_provincia1`
    FOREIGN KEY (`id_provincia`)
    REFERENCES `provincia` (`id_provincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `localidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `localidad` (
  `id_localidad` BIGINT NOT NULL AUTO_INCREMENT,
  `id_comuna` INT NOT NULL,
  `nombre_localidad` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_localidad`),
  INDEX `fk_localidad_comuna1_idx` (`id_comuna` ASC),
  CONSTRAINT `fk_localidad_comuna1`
    FOREIGN KEY (`id_comuna`)
    REFERENCES `comuna` (`id_comuna`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

