-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ZooDB
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ZooDB` ;

-- -----------------------------------------------------
-- Schema ZooDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ZooDB` DEFAULT CHARACTER SET utf8 ;
USE `ZooDB` ;

-- -----------------------------------------------------
-- Table `ZooDB`.`Endereco`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooDB`.`Endereco` ;

CREATE TABLE IF NOT EXISTS `ZooDB`.`Endereco` (
  `idEndereco` INT NOT NULL,
  `Rua` VARCHAR(100) NOT NULL,
  `Concelho` VARCHAR(45) NOT NULL,
  `CodigoPostal` VARCHAR(16) NOT NULL,
  `Distrito` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEndereco`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooDB`.`Funcionario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooDB`.`Funcionario` ;

CREATE TABLE IF NOT EXISTS `ZooDB`.`Funcionario` (
  `idFuncionario` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Salario` DOUBLE(6,2) NULL,
  `Endereco_idEndereco` INT NOT NULL,
  `Contacto` INT NOT NULL,
  PRIMARY KEY (`idFuncionario`),
  INDEX `fk_Funcionario_Endereço1_idx` (`Endereco_idEndereco` ASC),
  CONSTRAINT `fk_Funcionario_Endereço1`
    FOREIGN KEY (`Endereco_idEndereco`)
    REFERENCES `ZooDB`.`Endereco` (`idEndereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooDB`.`Alimento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooDB`.`Alimento` ;

CREATE TABLE IF NOT EXISTS `ZooDB`.`Alimento` (
  `idAlimento` INT NOT NULL,
  `Nome` VARCHAR(20) NOT NULL,
  `Stock` INT NOT NULL,
  PRIMARY KEY (`idAlimento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooDB`.`Espaco`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooDB`.`Espaco` ;

CREATE TABLE IF NOT EXISTS `ZooDB`.`Espaco` (
  `idEspaco` INT NOT NULL,
  `Tipo` VARCHAR(20) NOT NULL,
  `Tamanho` CHAR(1) NOT NULL,
  `Quantidade` INT NOT NULL,
  PRIMARY KEY (`idEspaco`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooDB`.`Animal`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooDB`.`Animal` ;

CREATE TABLE IF NOT EXISTS `ZooDB`.`Animal` (
  `idAnimal` INT NOT NULL,
  `Nome` VARCHAR(15) NULL,
  `Especie` VARCHAR(50) NOT NULL,
  `Genero` VARCHAR(2) NOT NULL,
  `Espaco_idEspaco` INT NOT NULL,
  PRIMARY KEY (`idAnimal`),
  INDEX `fk_Animal_Espaco1_idx` (`Espaco_idEspaco` ASC),
  CONSTRAINT `fk_Animal_Espaco1`
    FOREIGN KEY (`Espaco_idEspaco`)
    REFERENCES `ZooDB`.`Espaco` (`idEspaco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooDB`.`Refeicao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooDB`.`Refeicao` ;

CREATE TABLE IF NOT EXISTS `ZooDB`.`Refeicao` (
  `idRefeicao` INT NOT NULL AUTO_INCREMENT,
  `Quantidade` INT NOT NULL,
  `Data` DATETIME NOT NULL,
  `Funcionario_idFuncionario` INT NOT NULL,
  `Animal_idAnimal` INT NOT NULL,
  `Alimento_idAlimento` INT NOT NULL,
  PRIMARY KEY (`idRefeicao`),
  INDEX `fk_Refeição_Funcionario1_idx` (`Funcionario_idFuncionario` ASC),
  INDEX `fk_Refeição_Animal1_idx` (`Animal_idAnimal` ASC),
  INDEX `fk_Refeição_Alimento1_idx` (`Alimento_idAlimento` ASC),
  CONSTRAINT `fk_Refeição_Funcionario1`
    FOREIGN KEY (`Funcionario_idFuncionario`)
    REFERENCES `ZooDB`.`Funcionario` (`idFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Refeição_Animal1`
    FOREIGN KEY (`Animal_idAnimal`)
    REFERENCES `ZooDB`.`Animal` (`idAnimal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Refeição_Alimento1`
    FOREIGN KEY (`Alimento_idAlimento`)
    REFERENCES `ZooDB`.`Alimento` (`idAlimento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooDB`.`Fornecedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooDB`.`Fornecedor` ;

CREATE TABLE IF NOT EXISTS `ZooDB`.`Fornecedor` (
  `idFornecedor` INT NOT NULL AUTO_INCREMENT,
  `Designacao` VARCHAR(45) NOT NULL,
  `Endereco_idEndereco` INT NOT NULL,
  `Contacto` INT NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idFornecedor`),
  INDEX `fk_Fornecedor_Endereço1_idx` (`Endereco_idEndereco` ASC),
  CONSTRAINT `fk_Fornecedor_Endereço1`
    FOREIGN KEY (`Endereco_idEndereco`)
    REFERENCES `ZooDB`.`Endereco` (`idEndereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ZooDB`.`AlimentoDeFornecedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ZooDB`.`AlimentoDeFornecedor` ;

CREATE TABLE IF NOT EXISTS `ZooDB`.`AlimentoDeFornecedor` (
  `idAlimentoDeFornecedor` INT NOT NULL,
  `Fornecedor_idFornecedor` INT NOT NULL,
  `Alimento_idAlimento` INT NOT NULL,
  `Quantidade` INT NOT NULL,
  `Data` DATE NOT NULL,
  `Valor` INT NOT NULL,
  PRIMARY KEY (`idAlimentoDeFornecedor`,`Fornecedor_idFornecedor`, `Alimento_idAlimento`),
  INDEX `fk_Fornecedor_has_Alimento_Alimento1_idx` (`Alimento_idAlimento` ASC),
  INDEX `fk_Fornecedor_has_Alimento_Fornecedor1_idx` (`Fornecedor_idFornecedor` ASC),
  CONSTRAINT `fk_Fornecedor_has_Alimento_Fornecedor1`
    FOREIGN KEY (`Fornecedor_idFornecedor`)
    REFERENCES `ZooDB`.`Fornecedor` (`idFornecedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fornecedor_has_Alimento_Alimento1`
    FOREIGN KEY (`Alimento_idAlimento`)
    REFERENCES `ZooDB`.`Alimento` (`idAlimento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
