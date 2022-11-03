SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema atividade_blog
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema atividade_blog
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `atividade_blog` DEFAULT CHARACTER SET utf8 ;
USE `atividade_blog` ;

-- -----------------------------------------------------
-- Table `atividade_blog`.`user_perfil`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `atividade_blog`.`user_perfil` (
  `id_user_perfil` INT NOT NULL auto_increment,
  `nome_perfil` VARCHAR(45) NULL,
  PRIMARY KEY (`id_user_perfil`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `atividade_blog`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `atividade_blog`.`user` (
  `id_user` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(100) NULL,
  `email` VARCHAR(100) NULL,
  `senha` VARCHAR(50) NULL,
  `id_perfil` INT NOT NULL,
  PRIMARY KEY (`id_user`),
  INDEX `fk_user_user_perfil_idx` (`id_perfil` ASC) VISIBLE,
  CONSTRAINT `fk_user_user_perfil`
    FOREIGN KEY (`id_perfil`)
    REFERENCES `atividade_blog`.`user_perfil` (`id_user_perfil`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `atividade_blog`.`postagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `atividade_blog`.`postagens` (
  `id_postagem` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `postagem` LONGTEXT NULL,
  PRIMARY KEY (`id_postagem`),
  UNIQUE INDEX `titulo_UNIQUE` (`titulo` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `atividade_blog`.`comentarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `atividade_blog`.`comentarios` (
  `id_comentarios` INT NOT NULL AUTO_INCREMENT,
  `comentario` VARCHAR(500) NULL,
  `postagem_id` INT NOT NULL,
  `user_id` INT NOT NULL,
	`status` int NOT NULL ,  
  PRIMARY KEY (`id_comentarios`),
  INDEX `fk_comentarios_postagens1_idx` (`postagem_id` ASC) VISIBLE,
  INDEX `fk_comentarios_user1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_comentarios_postagens1`
    FOREIGN KEY (`postagem_id`)
    REFERENCES `atividade_blog`.`postagens` (`id_postagem`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comentarios_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `atividade_blog`.`user` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
