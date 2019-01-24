-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema dimensional
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dimensional
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dimensional` DEFAULT CHARACTER SET utf8 ;
USE `dimensional` ;

-- -----------------------------------------------------
-- Table `dimensional`.`Dim-Calendario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dimensional`.`Dim-Calendario` (
  `idCalendario` INT NOT NULL DEFAULT 0,
  `Data` DATE NOT NULL,
  `Dia` INT NOT NULL DEFAULT -1,
  `Semana` INT NOT NULL DEFAULT -1,
  `Mes` VARCHAR(15) NOT NULL DEFAULT '-1',
  `Semestre` INT NOT NULL DEFAULT -1,
  `Ano` INT NOT NULL DEFAULT -1,
  PRIMARY KEY (`idCalendario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dimensional`.`Alimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dimensional`.`Alimento` (
  `idAlimento` INT NOT NULL,
  `Stock` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `idAnterior` INT NOT NULL,
  `Source` INT NOT NULL,
  PRIMARY KEY (`idAlimento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dimensional`.`Fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dimensional`.`Fornecedor` (
  `idFornecedor` INT NOT NULL,
  `Designacao` VARCHAR(45) NOT NULL,
  `Contacto` INT NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `idAnterior` INT NOT NULL,
  `Source` INT NOT NULL,
  PRIMARY KEY (`idFornecedor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dimensional`.`TF-Compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dimensional`.`TF-Compra` (
  `idTF-Compra` INT NOT NULL,
  `Quantidade` INT NOT NULL,
  `Valor` DOUBLE NOT NULL,
  `Calendario_idCalendario` INT NOT NULL,
  `Alimento_idAlimento` INT NOT NULL,
  `Fornecedor_idFornecedor` INT NOT NULL,
  `PrecoUnidade` DOUBLE NOT NULL,
  `IdAntigo` INT NOT NULL,
  `Source` INT NOT NULL,
  PRIMARY KEY (`idTF-Compra`),
  INDEX `fk_TF-Compra_Calendario_idx` (`Calendario_idCalendario` ASC),
  INDEX `fk_TF-Compra_Alimento1_idx` (`Alimento_idAlimento` ASC),
  INDEX `fk_TF-Compra_Fornecedor1_idx` (`Fornecedor_idFornecedor` ASC),
  CONSTRAINT `fk_TF-Compra_Calendario`
    FOREIGN KEY (`Calendario_idCalendario`)
    REFERENCES `dimensional`.`Dim-Calendario` (`idCalendario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TF-Compra_Alimento1`
    FOREIGN KEY (`Alimento_idAlimento`)
    REFERENCES `dimensional`.`Alimento` (`idAlimento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TF-Compra_Fornecedor1`
    FOREIGN KEY (`Fornecedor_idFornecedor`)
    REFERENCES `dimensional`.`Fornecedor` (`idFornecedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dimensional`.`Refeicao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dimensional`.`Refeicao` (
  `idRefeicao` INT NOT NULL,
  `Quantidade` INT NOT NULL,
  `Horario` Date NOT NULL,
  `idAnterior` INT NOT NULL,
  `Source` INT NOT NULL,
  `Alimento_idAlimento` INT NOT NULL,
  PRIMARY KEY (`idRefeicao`),
  INDEX `fk_Refeicao_Alimento1_idx` (`Alimento_idAlimento` ASC),
  CONSTRAINT `fk_Refeicao_Alimento1`
    FOREIGN KEY (`Alimento_idAlimento`)
    REFERENCES `dimensional`.`Alimento` (`idAlimento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dimensional`.`HistoricoAlimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dimensional`.`HistoricoAlimento` (
  `idHistoricoAlimento` INT NOT NULL,
  `Stock` INT NOT NULL,
  `Alimento_idAlimento` INT NOT NULL,
  PRIMARY KEY (`idHistoricoAlimento`, `Alimento_idAlimento`),
  INDEX `fk_HistoricoAlimento_Alimento1_idx` (`Alimento_idAlimento` ASC),
  CONSTRAINT `fk_HistoricoAlimento_Alimento1`
    FOREIGN KEY (`Alimento_idAlimento`)
    REFERENCES `dimensional`.`Alimento` (`idAlimento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
