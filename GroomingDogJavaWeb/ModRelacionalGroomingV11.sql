-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema GroomingDog
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema GroomingDog
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `GroomingDog` DEFAULT CHARACTER SET utf8 ;
USE `GroomingDog` ;

-- -----------------------------------------------------
-- Table `GroomingDog`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`persona` (
  `identifPersona` INT(32) NOT NULL COMMENT 'Éste el identificador único del cliente.',
  `nombPersona` VARCHAR(45) NOT NULL COMMENT 'Nombre o nombres del cliente.',
  `apellPersona` VARCHAR(45) NOT NULL COMMENT 'Apellido o apellidos del cliente.',
  `emailPersona` VARCHAR(45) NOT NULL COMMENT 'Dirección de correo electrónica del cliente.',
  `tipoIdentifPerson` VARCHAR(45) NOT NULL COMMENT 'Tipo de documento de identificación del cliente.',
  `fechaNacimPers` DATE NOT NULL COMMENT 'Fecha de nacimiento del cliente.',
  `domicilioPersona` VARCHAR(45) NOT NULL,
  `telefonoPersona` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`identifPersona`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`reserva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`reserva` (
  `idReserva` INT(32) NOT NULL AUTO_INCREMENT COMMENT 'Éste es el identificador único de la reserva.',
  `fechaTramiteReser` DATETIME NOT NULL COMMENT 'Fecha y hora en que se tramitó la reserva.',
  `horaInicioReserva` DATETIME NOT NULL COMMENT 'Fecha y hora de inicio de los servicios reservados.',
  `finReserva` DATETIME NOT NULL COMMENT 'Fecha y hora de fin de los servicios reservados.',
  `direccRecogidaRes` VARCHAR(45) NOT NULL,
  `direccEntregaRes` VARCHAR(45) NOT NULL,
  `descripReser` VARCHAR(45) NOT NULL COMMENT 'Ésta entidad representa el proceso de hacer una reserva de servicio en la tienda, con sus principales características.',
  `baniarMascotaReser` VARCHAR(45) NOT NULL,
  `peridoGuarderiaRes` VARCHAR(45) NOT NULL,
  `lookCortePeloReser` VARCHAR(45) NULL,
  `ObservReserva` VARCHAR(45) NULL,
  `valorReser` DOUBLE NOT NULL,
  PRIMARY KEY (`idReserva`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`rutaPaseo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`rutaPaseo` (
  `idRuta` INT(32) NOT NULL AUTO_INCREMENT COMMENT 'Éste es el identificador único del servicio de ruta.',
  `kilometrosRuta` INT(20) NOT NULL COMMENT 'Distancia que recorrerá la mascota.',
  `nombTrayecto` VARCHAR(45) NOT NULL COMMENT 'Nombre del sitio, modalidad o trayecto de la ruta.',
  `descripRutaPaseo` VARCHAR(45) NOT NULL COMMENT 'Ésta entidad representa el trayecto por donde se paseará a la mascota, con sus principales características.',
  `observsRuta` VARCHAR(45) NULL COMMENT 'Observaciones de características o condiciones particulares concernientes a la ruta.',
  `reserva_idReserva` INT(32) NOT NULL,
  PRIMARY KEY (`idRuta`),
  CONSTRAINT `fk_rutaPaseo_reserva1`
    FOREIGN KEY (`reserva_idReserva`)
    REFERENCES `GroomingDog`.`reserva` (`idReserva`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`factura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`factura` (
  `codFactura` INT(32) NOT NULL AUTO_INCREMENT COMMENT 'Éste es el identificador único de la factura.',
  `descripComprFact` VARCHAR(45) NOT NULL COMMENT 'Nombre de todos los productos y servicios adquiridos y pagados en la factura.',
  `cantidPrdFactu` INT(20) NOT NULL COMMENT 'Ésta entidad representa la generación de factura, con sus principales características.',
  `valorUnitFactu` DOUBLE NOT NULL,
  `varlorTotalFactu` DOUBLE NOT NULL,
  `persona_identifPersona` INT(32) NOT NULL,
  `reserva_idReserva` INT(32) NOT NULL,
  PRIMARY KEY (`codFactura`),
  CONSTRAINT `fk_factura_persona1`
    FOREIGN KEY (`persona_identifPersona`)
    REFERENCES `GroomingDog`.`persona` (`identifPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_factura_reserva1`
    FOREIGN KEY (`reserva_idReserva`)
    REFERENCES `GroomingDog`.`reserva` (`idReserva`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`mascota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`mascota` (
  `idMascota` INT(32) NOT NULL AUTO_INCREMENT COMMENT 'Éste es el identificador único de la mascota.',
  `nombMascota` VARCHAR(45) NOT NULL COMMENT 'Nombre como entiende llamado la mascota.',
  `razaMascota` VARCHAR(45) NOT NULL COMMENT 'Raza de la mascota.',
  `colorMascota` VARCHAR(45) NOT NULL COMMENT 'Color del pelaje de la mascota.',
  `pesoMascota` INT(20) NOT NULL COMMENT 'Peso de la mascota.',
  `esterilizMasco` TINYINT NOT NULL COMMENT 'Si está o no esterilizada la mascota.',
  `fechaNaciMasc` DATE NOT NULL COMMENT 'Fecha de nacimiento de la mascota.',
  `historialMasco` VARCHAR(45) NOT NULL COMMENT 'Historial de servicios que ha recibido la mascota.',
  `observMascota` VARCHAR(45) NULL COMMENT 'Ésta entidad representa a la mascota, con sus principales características.',
  `persona_identifPersona` INT(32) NOT NULL,
  PRIMARY KEY (`idMascota`),
  CONSTRAINT `fk_mascota_persona1`
    FOREIGN KEY (`persona_identifPersona`)
    REFERENCES `GroomingDog`.`persona` (`identifPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`desparasitante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`desparasitante` (
  `idDesparacitante` INT(32) NOT NULL AUTO_INCREMENT,
  `nombDespars` VARCHAR(45) NOT NULL,
  `concentracDepar` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idDesparacitante`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`desparasitacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`desparasitacion` (
  `CodDesparas` INT(32) NOT NULL AUTO_INCREMENT COMMENT 'Éste el el identificador único del servicio de desparasitación.',
  `tipoDesparac` VARCHAR(45) NOT NULL COMMENT 'El el agente desparasitante, por lo general un producto farmacológico.',
  `desparasitante_idDesparacitante` INT(32) NOT NULL,
  `reserva_idReserva` INT(32) NOT NULL,
  PRIMARY KEY (`CodDesparas`),
  CONSTRAINT `fk_desparasitacion_desparasitante`
    FOREIGN KEY (`desparasitante_idDesparacitante`)
    REFERENCES `GroomingDog`.`desparasitante` (`idDesparacitante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_desparasitacion_reserva1`
    FOREIGN KEY (`reserva_idReserva`)
    REFERENCES `GroomingDog`.`reserva` (`idReserva`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`carnetVacunas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`carnetVacunas` (
  `idCarnet` INT(32) NOT NULL AUTO_INCREMENT COMMENT 'Éste es el identificador único del carné de vacunas',
  `fechaVac8semCachorr` DATETIME NOT NULL,
  `fechaVac10semPolivalente` DATETIME NOT NULL,
  `fechaVac14semPolivalente` DATETIME NOT NULL,
  `fechaVac18semTraqueoBronq` DATETIME NOT NULL,
  `fechaVac24semAntirr` DATETIME NOT NULL,
  `fechaVacAnual` DATETIME NULL,
  `ObservacionesVacunas` VARCHAR(45) NULL,
  `mascota_idMascota` INT(32) NOT NULL,
  PRIMARY KEY (`idCarnet`),
  CONSTRAINT `fk_carnetVacunas_mascota1`
    FOREIGN KEY (`mascota_idMascota`)
    REFERENCES `GroomingDog`.`mascota` (`idMascota`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`rolPersona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`rolPersona` (
  `idrolPersona` INT(32) NOT NULL AUTO_INCREMENT,
  `nombreRolPersona` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idrolPersona`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`usuario` (
  `idUsuario` INT(32) NOT NULL AUTO_INCREMENT,
  `estadoUsuario` VARCHAR(45) NOT NULL,
  `nickUsuario` VARCHAR(45) NOT NULL,
  `passwordUsuario` VARCHAR(45) NOT NULL,
  `rolPersona_idrolPersona` INT(32) NOT NULL,
  `persona_identifPersona` INT(32) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  CONSTRAINT `fk_usuario_rolPersona1`
    FOREIGN KEY (`rolPersona_idrolPersona`)
    REFERENCES `GroomingDog`.`rolPersona` (`idrolPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_persona1`
    FOREIGN KEY (`persona_identifPersona`)
    REFERENCES `GroomingDog`.`persona` (`identifPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
