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
  `identifPersona` INT(20) NOT NULL COMMENT 'Éste el identificador único del cliente.',
  `nombPersona` VARCHAR(45) NOT NULL COMMENT 'Nombre o nombres del cliente.',
  `apellPersona` VARCHAR(45) NOT NULL COMMENT 'Apellido o apellidos del cliente.',
  `emailPersona` VARCHAR(45) NOT NULL COMMENT 'Dirección de correo electrónica del cliente.',
  `tipoIdentifPerson` VARCHAR(45) NOT NULL COMMENT 'Tipo de documento de identificación del cliente.',
  `fechaNacimPers` DATE NOT NULL COMMENT 'Fecha de nacimiento del cliente.',
  `usuarioPersona` VARCHAR(45) NOT NULL,
  `passwordPersona` VARCHAR(45) NOT NULL,
  `rolPersona` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`identifPersona`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`baniarMascota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`baniarMascota` (
  `idBanio` INT(20) NOT NULL COMMENT 'Éste es el identificador único del servicio de baño.',
  `horaInicBanio` DATETIME NOT NULL COMMENT 'Hora en que inicia el proceso de bañar la mascota.',
  `horaFinBanio` DATETIME NOT NULL COMMENT 'Hora en que finaliza el proceso de bañar la mascota.',
  `descripBanio` VARCHAR(45) NOT NULL COMMENT 'Ésta entidad representa el proceso baño con sus principales atributos.',
  PRIMARY KEY (`idBanio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`desparacitacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`desparacitacion` (
  `CodDesparas` INT(20) NOT NULL COMMENT 'Éste el el identificador único del servicio de desparasitación.',
  `tipoDesparac` VARCHAR(45) NOT NULL COMMENT 'El el agente desparasitante, por lo general un producto farmacológico.',
  PRIMARY KEY (`CodDesparas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`domicilio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`domicilio` (
  `idDomicilio` INT(20) NOT NULL,
  `direccDomic` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idDomicilio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`factura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`factura` (
  `codFactura` INT(20) NOT NULL COMMENT 'Éste es el identificador único de la factura.',
  `descripComprFact` VARCHAR(45) NOT NULL COMMENT 'Nombre de todos los productos y servicios adquiridos y pagados en la factura.',
  `cantidPrdFactu` INT(20) NOT NULL COMMENT 'Ésta entidad representa la generación de factura, con sus principales características.',
  `valorUnitFactu` DOUBLE NOT NULL,
  `varlorTotalFactu` DOUBLE NOT NULL,
  `Domicilio_idDomicilio` INT(20) NOT NULL,
  PRIMARY KEY (`codFactura`),
  CONSTRAINT `fk_factura_Domicilio1`
    FOREIGN KEY (`Domicilio_idDomicilio`)
    REFERENCES `GroomingDog`.`domicilio` (`idDomicilio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`rutaPaseo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`rutaPaseo` (
  `idRuta` INT(20) NOT NULL COMMENT 'Éste es el identificador único del servicio de ruta.',
  `kilometrosRuta` INT(20) NOT NULL COMMENT 'Distancia que recorrerá la mascota.',
  `nombTrayecto` VARCHAR(45) NOT NULL COMMENT 'Nombre del sitio, modalidad o trayecto de la ruta.',
  `descripRutaPaseo` VARCHAR(45) NOT NULL COMMENT 'Ésta entidad representa el trayecto por donde se paseará a la mascota, con sus principales características.',
  `observsRuta` VARCHAR(45) NULL COMMENT 'Observaciones de características o condiciones particulares concernientes a la ruta.',
  PRIMARY KEY (`idRuta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`paseoMascota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`paseoMascota` (
  `idPaseo` INT(20) NOT NULL COMMENT 'Es el identificador único del servicio de paseo.',
  `direcRecibida` VARCHAR(45) NOT NULL COMMENT 'Dirección donde se recibirá la mascota para llevarla a paseo.',
  `direcEntrega` VARCHAR(45) NOT NULL COMMENT 'Dirección donde se entregará la mascota luego de culminado el paseo.',
  `DescripPaseo` VARCHAR(95) NOT NULL COMMENT 'Ésta entidad representa el proceso de sacar a pasear la mascota por alguna ruta o sitio en particular, con sus principales características.',
  `rutaPaseo_idRuta` INT(20) NOT NULL,
  PRIMARY KEY (`idPaseo`),
  CONSTRAINT `fk_paseoMascota_rutaPaseo1`
    FOREIGN KEY (`rutaPaseo_idRuta`)
    REFERENCES `GroomingDog`.`rutaPaseo` (`idRuta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`localYGuarderia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`localYGuarderia` (
  `idGuarderia` INT(20) NOT NULL COMMENT 'Éste es el identificador único del servicio de guardería.',
  `dirGuarde` VARCHAR(45) NOT NULL COMMENT 'Dirección de domicilio del propietario de la mascota.',
  `horaInicGuar` DATETIME(6) NOT NULL COMMENT 'Fecha y hora en que se inicia el servio de guardería.',
  `horaFinGuar` DATETIME(6) NOT NULL COMMENT 'Fecha y hora en que finaliza el servio de guardería.',
  `dirAlternaGuard` VARCHAR(45) NOT NULL COMMENT 'Dirección alternativa del propietario de la mascota.',
  `tamanoMascota` VARCHAR(45) NOT NULL COMMENT 'Es el tamaño de la mascota clasificado en una de tres categorías, que puede ser grande, mediana o pequeña.',
  `DescripGuard` VARCHAR(45) NOT NULL COMMENT 'Ésta entidad representa el servicios de guardería, con sus principales características.',
  PRIMARY KEY (`idGuarderia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`estiloCortePelaje`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`estiloCortePelaje` (
  `idCorte` INT(20) NOT NULL COMMENT 'Es el identificador único del servicio de corte de pelo de la mascota.',
  `nombLookCorte` VARCHAR(45) NOT NULL COMMENT 'Los looks de cortes de pelo tienen una referencia identificadora.',
  `DescripCorte` VARCHAR(45) NOT NULL COMMENT 'Ésta entidad representa el proceso de hacerle un corte del pelaje a la mascota, con sus principales características.',
  PRIMARY KEY (`idCorte`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`reserva`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`reserva` (
  `idReserva` INT(20) NOT NULL COMMENT 'Éste es el identificador único de la reserva.',
  `fechaTramiteReser` DATETIME NOT NULL COMMENT 'Fecha y hora en que se tramitó la reserva.',
  `horaInicioReserva` DATETIME(6) NOT NULL COMMENT 'Fecha y hora de inicio de los servicios reservados.',
  `finReserva` DATETIME NOT NULL COMMENT 'Fecha y hora de fin de los servicios reservados.',
  `descripReser` VARCHAR(45) NOT NULL COMMENT 'Ésta entidad representa el proceso de hacer una reserva de servicio en la tienda, con sus principales características.',
  `valorReser` DOUBLE NOT NULL,
  `cancelarReserva` VARCHAR(45) NOT NULL,
  `baniarMascota_idBanio` INT(20) NOT NULL,
  `desparacitacion_CodDesparas` INT(20) NOT NULL,
  `factura_codFactura` INT(20) NOT NULL,
  `persona_identifPersona` INT(20) NOT NULL,
  `paseoMascota_idPaseo` INT(20) NOT NULL,
  `localYGuarderia_idGuarderia` INT(20) NOT NULL,
  `estiloCortePelaje_idCorte` INT(20) NOT NULL,
  PRIMARY KEY (`idReserva`),
  CONSTRAINT `fk_reserva_baniarMascota1`
    FOREIGN KEY (`baniarMascota_idBanio`)
    REFERENCES `GroomingDog`.`baniarMascota` (`idBanio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_reserva_desparacitacion1`
    FOREIGN KEY (`desparacitacion_CodDesparas`)
    REFERENCES `GroomingDog`.`desparacitacion` (`CodDesparas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_reserva_factura1`
    FOREIGN KEY (`factura_codFactura`)
    REFERENCES `GroomingDog`.`factura` (`codFactura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_reserva_persona1`
    FOREIGN KEY (`persona_identifPersona`)
    REFERENCES `GroomingDog`.`persona` (`identifPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_reserva_paseoMascota1`
    FOREIGN KEY (`paseoMascota_idPaseo`)
    REFERENCES `GroomingDog`.`paseoMascota` (`idPaseo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_reserva_localYGuarderia1`
    FOREIGN KEY (`localYGuarderia_idGuarderia`)
    REFERENCES `GroomingDog`.`localYGuarderia` (`idGuarderia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_reserva_estiloCortePelaje1`
    FOREIGN KEY (`estiloCortePelaje_idCorte`)
    REFERENCES `GroomingDog`.`estiloCortePelaje` (`idCorte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`articuloPaseo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`articuloPaseo` (
  `idArticulo` INT(20) NOT NULL COMMENT 'Éste es el identificador único del artículo.',
  `nombArticulo` VARCHAR(45) NOT NULL COMMENT 'Nombre o denominación del artículo que usará la mascota.',
  `descripArticulos` VARCHAR(45) NOT NULL COMMENT 'Ésta entidad representa el o los artículos que la mascota puede usar, por solicitud de su dueño, con sus principales características.',
  `ObserArtic` VARCHAR(45) NULL COMMENT 'Observaciones de características o condiciones particulares concernientes al artículo.',
  PRIMARY KEY (`idArticulo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`productoParaGuarderia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`productoParaGuarderia` (
  `idProducto` INT(20) NOT NULL COMMENT 'Es el identificador único del producto, dentro de la base de datos.',
  `nombProduc` VARCHAR(45) NOT NULL COMMENT 'Nombre del producto a utilizar.',
  `descripProducto` VARCHAR(45) NOT NULL COMMENT 'Ésta entidad representa los productos que se le puede suministrar a las mascotas mientras estén recibiendo alguno(s) del (los) servicio(s), con sus principales características.',
  PRIMARY KEY (`idProducto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`mascota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`mascota` (
  `idMascota` INT(20) NOT NULL COMMENT 'Éste es el identificador único de la mascota.',
  `nombMascota` VARCHAR(45) NOT NULL COMMENT 'Nombre como entiende llamado la mascota.',
  `razaMascota` VARCHAR(45) NOT NULL COMMENT 'Raza de la mascota.',
  `colorMascota` VARCHAR(45) NOT NULL COMMENT 'Color del pelaje de la mascota.',
  `pesoMascota` INT(20) NOT NULL COMMENT 'Peso de la mascota.',
  `esterilizMasco` VARCHAR(45) NOT NULL COMMENT 'Si está o no esterilizada la mascota.',
  `fechaNaciMasc` DATE NOT NULL COMMENT 'Fecha de nacimiento de la mascota.',
  `historialMasco` VARCHAR(45) NOT NULL COMMENT 'Historial de servicios que ha recibido la mascota.',
  `observMascota` VARCHAR(45) NULL COMMENT 'Ésta entidad representa a la mascota, con sus principales características.',
  `reserva_idReserva` INT(20) NOT NULL,
  PRIMARY KEY (`idMascota`),
  CONSTRAINT `fk_mascota_reserva1`
    FOREIGN KEY (`reserva_idReserva`)
    REFERENCES `GroomingDog`.`reserva` (`idReserva`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`carnetVacunas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`carnetVacunas` (
  `idCarnet` INT(20) NOT NULL COMMENT 'Éste es el identificador único del carné de vacunas',
  `nombVacuna` VARCHAR(45) NOT NULL COMMENT 'Si tiene o no actualizada la vacuna antirrábica.',
  `fechaVacuna` DATETIME NOT NULL,
  `descripCarnVacuna` VARCHAR(45) NULL COMMENT 'Ésta entidad representa al carnet de vacunación de la mascota, con sus principales características.',
  `mascota_idMascota` INT(20) NOT NULL,
  PRIMARY KEY (`idCarnet`),
  CONSTRAINT `fk_carnetVacunas_mascota1`
    FOREIGN KEY (`mascota_idMascota`)
    REFERENCES `GroomingDog`.`mascota` (`idMascota`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`desparacitante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`desparacitante` (
  `idDesparacitante` INT(20) NOT NULL,
  `nombDesparc` VARCHAR(45) NOT NULL,
  `concentracDepar` VARCHAR(45) NOT NULL,
  `desparacitacion_CodDesparas` INT(20) NOT NULL,
  PRIMARY KEY (`idDesparacitante`),
  CONSTRAINT `fk_desparacitante_desparacitacion1`
    FOREIGN KEY (`desparacitacion_CodDesparas`)
    REFERENCES `GroomingDog`.`desparacitacion` (`CodDesparas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`telefono`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`telefono` (
  `numTelef` INT(10) NOT NULL,
  `tipoTelef` VARCHAR(15) NOT NULL,
  `Domicilio_idDomicilio` INT(20) NOT NULL,
  PRIMARY KEY (`numTelef`),
  CONSTRAINT `fk_telefono_Domicilio1`
    FOREIGN KEY (`Domicilio_idDomicilio`)
    REFERENCES `GroomingDog`.`domicilio` (`idDomicilio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`articuloPaseo_has_factura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`articuloPaseo_has_factura` (
  `articuloPaseo_idArticulo` INT(20) NOT NULL,
  `factura_codFactura` INT(20) NOT NULL,
  PRIMARY KEY (`articuloPaseo_idArticulo`, `factura_codFactura`),
  CONSTRAINT `fk_articuloPaseo_has_factura_articuloPaseo1`
    FOREIGN KEY (`articuloPaseo_idArticulo`)
    REFERENCES `GroomingDog`.`articuloPaseo` (`idArticulo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_articuloPaseo_has_factura_factura1`
    FOREIGN KEY (`factura_codFactura`)
    REFERENCES `GroomingDog`.`factura` (`codFactura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `GroomingDog`.`productoParaGuarderia_has_factura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `GroomingDog`.`productoParaGuarderia_has_factura` (
  `productoParaGuarderia_idProducto` INT(20) NOT NULL,
  `factura_codFactura` INT(20) NOT NULL,
  PRIMARY KEY (`productoParaGuarderia_idProducto`, `factura_codFactura`),
  CONSTRAINT `fk_productoParaGuarderia_has_factura_productoParaGuarderia1`
    FOREIGN KEY (`productoParaGuarderia_idProducto`)
    REFERENCES `GroomingDog`.`productoParaGuarderia` (`idProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_productoParaGuarderia_has_factura_factura1`
    FOREIGN KEY (`factura_codFactura`)
    REFERENCES `GroomingDog`.`factura` (`codFactura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
