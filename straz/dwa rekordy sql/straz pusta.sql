-- MySQL Script generated by MySQL Workbench
-- Thu May 25 17:25:37 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`DaneKontaktowe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`DaneKontaktowe` (
  `idDaneKontaktowe` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NULL,
  `nrTelefonu` INT NULL,
  `miejscowosc` VARCHAR(45) NULL,
  `kraj` VARCHAR(45) NULL,
  `nrBudynku` VARCHAR(45) NULL,
  `kodPocztowy` VARCHAR(45) NULL,
  `ulica` VARCHAR(45) NULL,
  PRIMARY KEY (`idDaneKontaktowe`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Remiza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Remiza` (
  `idRemiza` INT NOT NULL AUTO_INCREMENT,
  `numer` INT NULL,
  `nazwa` VARCHAR(45) NULL,
  `DaneKontaktowe_idDaneKontaktowe` INT NOT NULL,
  PRIMARY KEY (`idRemiza`, `DaneKontaktowe_idDaneKontaktowe`),
  INDEX `fk_Remiza_DaneKontaktowe1_idx` (`DaneKontaktowe_idDaneKontaktowe` ASC),
  CONSTRAINT `fk_Remiza_DaneKontaktowe1`
    FOREIGN KEY (`DaneKontaktowe_idDaneKontaktowe`)
    REFERENCES `mydb`.`DaneKontaktowe` (`idDaneKontaktowe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Druch`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Druch` (
  `idDruch` INT NOT NULL AUTO_INCREMENT,
  `stopien` VARCHAR(45) NULL,
  `pesel` INT NULL,
  `dataUrodzenia` DATE NULL,
  `kwalifikacje` VARCHAR(45) NULL,
  `stan` VARCHAR(45) NULL,
  `nazwisko` VARCHAR(45) NULL,
  `imie` VARCHAR(45) NULL,
  `DaneKontaktowe_idDaneKontaktowe` INT NOT NULL,
  `Remiza_idRemiza` INT NOT NULL,
  PRIMARY KEY (`idDruch`, `DaneKontaktowe_idDaneKontaktowe`, `Remiza_idRemiza`),
  INDEX `fk_Druch_DaneKontaktowe1_idx` (`DaneKontaktowe_idDaneKontaktowe` ASC),
  INDEX `fk_Druch_Remiza1_idx` (`Remiza_idRemiza` ASC),
  CONSTRAINT `fk_Druch_DaneKontaktowe1`
    FOREIGN KEY (`DaneKontaktowe_idDaneKontaktowe`)
    REFERENCES `mydb`.`DaneKontaktowe` (`idDaneKontaktowe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Druch_Remiza1`
    FOREIGN KEY (`Remiza_idRemiza`)
    REFERENCES `mydb`.`Remiza` (`idRemiza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Wydarzenia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Wydarzenia` (
  `idWydarzenia` INT NOT NULL AUTO_INCREMENT,
  `miejsceWydarzenia` VARCHAR(45) NULL,
  `dataOdbycia` DATE NULL,
  `rodzajWydarzenia` VARCHAR(45) NULL,
  `godzinaWydarzenia` TIME NULL,
  PRIMARY KEY (`idWydarzenia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pojazdy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pojazdy` (
  `idPojazdy` INT NOT NULL AUTO_INCREMENT,
  `marka` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `numerRejestracyjny` VARCHAR(45) NULL,
  `dataOstatniegoPrzegladu` DATE NULL,
  `Remiza_idRemiza` INT NOT NULL,
  PRIMARY KEY (`idPojazdy`, `Remiza_idRemiza`),
  INDEX `fk_Pojazdy_Remiza1_idx` (`Remiza_idRemiza` ASC),
  CONSTRAINT `fk_Pojazdy_Remiza1`
    FOREIGN KEY (`Remiza_idRemiza`)
    REFERENCES `mydb`.`Remiza` (`idRemiza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Interwencja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Interwencja` (
  `idInterwencja` INT NOT NULL AUTO_INCREMENT,
  `rodzajInterwencji` VARCHAR(45) NULL,
  `dataInterwencji` DATE NULL,
  `liczbaDruchowZaangazowanych` INT NULL,
  `DaneKontaktowe_idDaneKontaktowe` INT NOT NULL,
  PRIMARY KEY (`idInterwencja`, `DaneKontaktowe_idDaneKontaktowe`),
  INDEX `fk_Interwencja_DaneKontaktowe1_idx` (`DaneKontaktowe_idDaneKontaktowe` ASC),
  CONSTRAINT `fk_Interwencja_DaneKontaktowe1`
    FOREIGN KEY (`DaneKontaktowe_idDaneKontaktowe`)
    REFERENCES `mydb`.`DaneKontaktowe` (`idDaneKontaktowe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`OsobaZglaszajaca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`OsobaZglaszajaca` (
  `idOsobaZglaszajaca` INT NOT NULL AUTO_INCREMENT,
  `imie` VARCHAR(45) NULL,
  `nazwisko` VARCHAR(45) NULL,
  `wiek` INT NULL,
  `DaneKontaktowe_idDaneKontaktowe` INT NOT NULL,
  PRIMARY KEY (`idOsobaZglaszajaca`, `DaneKontaktowe_idDaneKontaktowe`),
  INDEX `fk_OsobaZglaszajaca_DaneKontaktowe1_idx` (`DaneKontaktowe_idDaneKontaktowe` ASC),
  CONSTRAINT `fk_OsobaZglaszajaca_DaneKontaktowe1`
    FOREIGN KEY (`DaneKontaktowe_idDaneKontaktowe`)
    REFERENCES `mydb`.`DaneKontaktowe` (`idDaneKontaktowe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Druch_has_Interwencja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Druch_has_Interwencja` (
  `Druch_idDruch` INT NOT NULL,
  `Interwencja_idInterwencja` INT NOT NULL,
  PRIMARY KEY (`Druch_idDruch`, `Interwencja_idInterwencja`),
  INDEX `fk_Druch_has_Interwencja_Interwencja1_idx` (`Interwencja_idInterwencja` ASC),
  INDEX `fk_Druch_has_Interwencja_Druch_idx` (`Druch_idDruch` ASC),
  CONSTRAINT `fk_Druch_has_Interwencja_Druch`
    FOREIGN KEY (`Druch_idDruch`)
    REFERENCES `mydb`.`Druch` (`idDruch`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Druch_has_Interwencja_Interwencja1`
    FOREIGN KEY (`Interwencja_idInterwencja`)
    REFERENCES `mydb`.`Interwencja` (`idInterwencja`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Wydarzenia_has_Druch`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Wydarzenia_has_Druch` (
  `Wydarzenia_idWydarzenia` INT NOT NULL,
  `Druch_idDruch` INT NOT NULL,
  PRIMARY KEY (`Wydarzenia_idWydarzenia`, `Druch_idDruch`),
  INDEX `fk_Wydarzenia_has_Druch_Druch1_idx` (`Druch_idDruch` ASC),
  INDEX `fk_Wydarzenia_has_Druch_Wydarzenia1_idx` (`Wydarzenia_idWydarzenia` ASC),
  CONSTRAINT `fk_Wydarzenia_has_Druch_Wydarzenia1`
    FOREIGN KEY (`Wydarzenia_idWydarzenia`)
    REFERENCES `mydb`.`Wydarzenia` (`idWydarzenia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Wydarzenia_has_Druch_Druch1`
    FOREIGN KEY (`Druch_idDruch`)
    REFERENCES `mydb`.`Druch` (`idDruch`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`OsobaZglaszajaca_has_Interwencja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`OsobaZglaszajaca_has_Interwencja` (
  `OsobaZglaszajaca_idOsobaZglaszajaca` INT NOT NULL,
  `Interwencja_idInterwencja` INT NOT NULL,
  PRIMARY KEY (`OsobaZglaszajaca_idOsobaZglaszajaca`, `Interwencja_idInterwencja`),
  INDEX `fk_OsobaZglaszajaca_has_Interwencja_Interwencja1_idx` (`Interwencja_idInterwencja` ASC),
  INDEX `fk_OsobaZglaszajaca_has_Interwencja_OsobaZglaszajaca1_idx` (`OsobaZglaszajaca_idOsobaZglaszajaca` ASC),
  CONSTRAINT `fk_OsobaZglaszajaca_has_Interwencja_OsobaZglaszajaca1`
    FOREIGN KEY (`OsobaZglaszajaca_idOsobaZglaszajaca`)
    REFERENCES `mydb`.`OsobaZglaszajaca` (`idOsobaZglaszajaca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_OsobaZglaszajaca_has_Interwencja_Interwencja1`
    FOREIGN KEY (`Interwencja_idInterwencja`)
    REFERENCES `mydb`.`Interwencja` (`idInterwencja`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Remiza_has_Interwencja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Remiza_has_Interwencja` (
  `Remiza_idRemiza` INT NOT NULL,
  `Interwencja_idInterwencja` INT NOT NULL,
  PRIMARY KEY (`Remiza_idRemiza`, `Interwencja_idInterwencja`),
  INDEX `fk_Remiza_has_Interwencja_Interwencja1_idx` (`Interwencja_idInterwencja` ASC),
  INDEX `fk_Remiza_has_Interwencja_Remiza1_idx` (`Remiza_idRemiza` ASC),
  CONSTRAINT `fk_Remiza_has_Interwencja_Remiza1`
    FOREIGN KEY (`Remiza_idRemiza`)
    REFERENCES `mydb`.`Remiza` (`idRemiza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Remiza_has_Interwencja_Interwencja1`
    FOREIGN KEY (`Interwencja_idInterwencja`)
    REFERENCES `mydb`.`Interwencja` (`idInterwencja`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Wyposazenie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Wyposazenie` (
  `idWyposazenie` INT NOT NULL AUTO_INCREMENT,
  `nazwa` VARCHAR(45) NULL,
  `rodzajWyposazenia` VARCHAR(45) NULL,
  `kodInwentaryzacyjny` INT NULL,
  `Remiza_idRemiza` INT NOT NULL,
  PRIMARY KEY (`idWyposazenie`, `Remiza_idRemiza`),
  INDEX `fk_Wyposazenie_Remiza1_idx` (`Remiza_idRemiza` ASC),
  CONSTRAINT `fk_Wyposazenie_Remiza1`
    FOREIGN KEY (`Remiza_idRemiza`)
    REFERENCES `mydb`.`Remiza` (`idRemiza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
