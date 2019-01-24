 -- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema AreaReten
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `AreaReten` ;

-- -----------------------------------------------------
-- Schema AreaReten
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `AreaReten` DEFAULT CHARACTER SET utf8 ;
USE `AreaReten` ;

-- -----------------------------------------------------
-- Table `AreaReten`.`AR-QuarentenaAlimento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-QuarentenaAlimento` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-QuarentenaAlimento` (
  `idAlimento` INT NULL,
  `Stock` INT NULL,
  `Nome` VARCHAR(20) NULL,
  `Source` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-QuarentenaFornecedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-QuarentenaFornecedor` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-QuarentenaFornecedor` (
  `idFornecedor` INT NULL,
  `Designacao` VARCHAR(45) NULL,
  `Contacto` INT NULL,
  `Email` VARCHAR(45) NULL,
  `Source` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-QuarentenaCompra`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-QuarentenaCompra` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-QuarentenaCompra` (
  `idTF-Compra` INT NULL,
  `Quantidade` INT NULL,
  `Valor` DOUBLE NULL,
  `PrecoUnidade` DOUBLE NULL,
  `Source` INT NULL,
  `Alimento_idAlimento` INT NULL,
  `Fornecedor_idFornecedor` INT NULL,
  `Date`  DATE NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-LimpezaRefeicao-2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-LimpezaRefeicao-2` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-LimpezaRefeicao-2` (
  `idRefeicao` INT NULL,
  `Quantidade` INT NULL,
  `Alimento_idAlimento` INT NULL,
  `Source` INT NULL,
  `Date` DATE NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-LimpezaCompra-2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-LimpezaCompra-2` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-LimpezaCompra-2` (
  `idTF-Compra` INT NULL,
  `Quantidade` INT NULL,
  `Valor` DOUBLE NULL,
  `PrecoUnidade` DOUBLE NULL,
  `Source` INT NULL,
  `Alimento_idAlimento` INT NULL,
  `Fornecedor_idFornecedor` INT NULL,
  `Date` DATE NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-LimpezaFornecedor-2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-LimpezaFornecedor-2` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-LimpezaFornecedor-2` (
  `idFornecedor` INT NULL,
  `Designacao` VARCHAR(45) NULL,
  `Contacto` INT NULL,
  `Email` VARCHAR(45) NULL,
  `Source` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-LimpezaAlimento-2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-LimpezaAlimento-2` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-LimpezaAlimento-2` (
  `idAlimento` INT NULL,
  `Stock` INT NULL,
  `Nome` VARCHAR(20) NULL,
  `Source` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-LimpezaRefeicao-3`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-LimpezaRefeicao-3` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-LimpezaRefeicao-3` (
  `idRefeicao` INT NULL,
  `Quantidade` INT NULL,
  `Alimento_idAlimento` INT NULL,
  `Source` INT NULL,
  `Date` DATE NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-LimpezaCompra-3`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-LimpezaCompra-3` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-LimpezaCompra-3` (
  `idTF-Compra` INT NULL,
  `Quantidade` INT NULL,
  `Valor` DOUBLE NULL,
  `PrecoUnidade` DOUBLE NULL,
  `Source` INT NULL,
  `Alimento_idAlimento` INT NULL,
  `Fornecedor_idFornecedor` INT NULL,
  `Date` DATE NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-LimpezaFornecedor-3`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-LimpezaFornecedor-3` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-LimpezaFornecedor-3` (
  `idFornecedor` INT NULL,
  `Designacao` VARCHAR(45) NULL,
  `Contacto` INT NULL,
  `Email` VARCHAR(45) NULL,
  `Source` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-LimpezaAlimento-3`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-LimpezaAlimento-3` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-LimpezaAlimento-3` (
  `idAlimento` INT NULL,
  `Stock` INT NULL,
  `Nome` VARCHAR(20) NULL,
  `Source` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-QuarentenaRefeicao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-QuarentenaRefeicao` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-QuarentenaRefeicao` (
  `idRefeicao` INT NULL,
  `Quantidade` INT NULL,
  `Alimento_idAlimento` INT NULL,
  `Source` INT NULL,
  `Date` DATE NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-ConciliacaoRefeicao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-ConciliacaoRefeicao` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-ConciliacaoRefeicao` (
  `idRefeicao` INT NULL,
  `Quantidade` INT NULL,
  `Alimento_idAlimento` INT NULL,
  `Alimento_idAlimento-Clonado` INT NULL,
  `Source` INT NULL,
  `Date` DATE NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-ConciliacaoCompra`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-ConciliacaoCompra` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-ConciliacaoCompra` (
  `idTF-Compra` INT NULL,
  `Quantidade` INT NULL,
  `Valor` DOUBLE NULL,
  `PrecoUnidade` DOUBLE NULL,
  `Alimento_idAlimento` INT NULL,
  `Fornecedor_idFornecedor` INT NULL,
  `Alimento_idAlimento-Clonado` INT NULL,
  `Fornecedor_idFornecedor-Clonado` INT NULL,
  `Source` INT NULL,
  `Date` DATE NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-ConciliacaoFornecedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-ConciliacaoFornecedor` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-ConciliacaoFornecedor` (
  `idFornecedor` INT NULL,
  `Designacao` VARCHAR(45) NULL,
  `Contacto` INT NULL,
  `Email` VARCHAR(45) NULL,
  `Source` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-ConciliacaoAlimento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-ConciliacaoAlimento` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-ConciliacaoAlimento` (
  `idAlimento` INT NULL,
  `Stock` INT NULL,
  `Nome` VARCHAR(20) NULL,
  `Origem` INT NULL,
  `Source` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-LimpezaRefeicao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-LimpezaRefeicao` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-LimpezaRefeicao` (
  `idRefeicao` INT NULL,
  `Quantidade` INT NULL,
  `Alimento_idAlimento` INT NULL,
  `Source` INT NULL,
  `Date` DATE NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-LimpezaAlimento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-LimpezaAlimento` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-LimpezaAlimento` (
  `idAlimento` INT NULL,
  `Stock` INT NULL,
  `Nome` VARCHAR(20) NULL,
  `Source` INT NULL)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `AreaReten`.`AR-LimpezaCompra`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-LimpezaCompra` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-LimpezaCompra` (
  `idTF-Compra` INT NULL,
  `Quantidade` INT NULL,
  `Valor` DOUBLE NULL,
  `PrecoUnidade` DOUBLE NULL,
  `Source` INT NULL,
  `Alimento_idAlimento` INT NULL,
  `Fornecedor_idFornecedor` INT NULL,
  `Date` DATE NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-LimpezaFornecedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-LimpezaFornecedor` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-LimpezaFornecedor` (
  `idFornecedor` INT NULL,
  `Designacao` VARCHAR(45) NULL,
  `Contacto` INT NULL,
  `Email` VARCHAR(45) NULL,
  `Source` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-LimpezaAlimento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-LimpezaAlimento` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-LimpezaAlimento` (
  `idAlimento` INT NULL,
  `Stock` INT NULL,
  `Nome` VARCHAR(20) NULL,
  `Source` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-ExtracaoAlimento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-ExtracaoAlimento` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-ExtracaoAlimento` (
  `idAlimento` INT NULL,
  `Stock` INT NULL,
  `Nome` VARCHAR(20) NULL,
  `Source` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-ExtracaoCompra`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-ExtracaoCompra` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-ExtracaoCompra` (
  `idTF-Compra` INT NULL,
  `Quantidade` INT NULL,
  `Valor` DOUBLE NULL,
  `PrecoUnidade` DOUBLE NULL,
  `Source` INT NULL,
  `Alimento_idAlimento` INT NULL,
  `Fornecedor_idFornecedor` INT NULL,
  `Date` DATE NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-ExtracaoFornecedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-ExtracaoFornecedor` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-ExtracaoFornecedor` (
  `idFornecedor` INT NULL,
  `Designacao` VARCHAR(45) NULL,
  `Contacto` INT NULL,
  `Email` VARCHAR(45) NULL,
  `Source` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-ExtracaoRefeicao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-ExtracaoRefeicao` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-ExtracaoRefeicao` (
  `idRefeicao` INT NULL,
  `Quantidade` INT NULL,
  `Alimento_idAlimento` INT NULL,
  `Source` INT NULL,
  `Date` DATE NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-ExtracaoRefeicao-2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-ExtracaoRefeicao-2` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-ExtracaoRefeicao-2` (
  `idRefeicao` INT NULL,
  `Quantidade` INT NULL,
  `Alimento_idAlimento` INT NULL,
  `Source` INT NULL,
  `Date` VARCHAR(45) NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-ExtracaoCompra-2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-ExtracaoCompra-2` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-ExtracaoCompra-2` (
  `idTF-Compra` INT NULL,
  `Quantidade` INT NULL,
  `Valor` DOUBLE NULL,
  `PrecoUnidade` DOUBLE NULL,
  `Source` INT NULL,
  `Alimento_idAlimento` INT NULL,
  `Fornecedor_idFornecedor` INT NULL,
  `Date` VARCHAR(45) NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-ExtracaoFornecedor-2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-ExtracaoFornecedor-2` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-ExtracaoFornecedor-2` (
  `idFornecedor` INT NULL,
  `Designacao` VARCHAR(45) NULL,
  `Contacto` INT NULL,
  `Email` VARCHAR(45) NULL,
  `Source` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-ExtracaoAlimento-2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-ExtracaoAlimento-2` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-ExtracaoAlimento-2` (
  `idAlimento` INT NULL,
  `Stock` INT NULL,
  `Nome` VARCHAR(20) NULL,
  `Source` INT NULL)
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `AreaReten`.`AR-ExtracaoRefeicao-3`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-ExtracaoRefeicao-3` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-ExtracaoRefeicao-3` (
  `idRefeicao` INT NULL,
  `Quantidade` INT NULL,
  `Alimento_idAlimento` INT NULL,
  `Source` INT NULL,
  `Date` DATE NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-ExtracaoCompra-3`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-ExtracaoCompra-3` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-ExtracaoCompra-3` (
  `idTF-Compra` INT NULL,
  `Quantidade` INT NULL,
  `Valor` DOUBLE NULL,
  `PrecoUnidade` DOUBLE NULL,
  `Source` INT NULL,
  `Alimento_idAlimento` INT NULL,
  `Fornecedor_idFornecedor` INT NULL,
  `Date` DATE NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-ExtracaoFornecedor-3`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-ExtracaoFornecedor-3` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-ExtracaoFornecedor-3` (
  `idFornecedor` INT NULL,
  `Designacao` VARCHAR(45) NULL,
  `Contacto` INT NULL,
  `Email` VARCHAR(45) NULL,
  `Source` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AreaReten`.`AR-ExtracaoAlimento-3`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `AreaReten`.`AR-ExtracaoAlimento-3` ;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-ExtracaoAlimento-3` (
  `idAlimento` INT NULL,
  `Stock` INT NULL,
  `Nome` VARCHAR(20) NULL,
  `Source` INT NULL)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-CorrespondenciaAlimento` (
  `idAlimento` INT NULL,
  `new_idAlimento` INT NULL,
  `Source` CHAR(1) NULL)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AR-CorrespondenciaFornecedor` (
  `idFornecedor` INT NULL,
  `new_idFornecedor` INT NULL,
  `Source` CHAR(1) NULL)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `AreaReten`.`AreaLookup-LimpezaRefeição` (
  `idAlimento` INT NULL,
  `new_idAlimento` INT NULL,
  `Stock` INT NULL,
  `Source` INT NULL)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `AreaReten`.`AreaLookup-LimpezaCompra` (
  `idFornecedor` INT NULL,
  `new_idFornecedor` INT NULL,
  `Source` INT NULL)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
