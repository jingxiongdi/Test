create database myexam;
use myexam;
CREATE TABLE `myexam`.`userinfo` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  `sex` VARCHAR(10) NULL,
  `tel` VARCHAR(50) NULL,
  `email` VARCHAR(100) NULL,
  `score` INT NULL,
  `role` VARCHAR(1) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `myexam`.`subject` (
  `id` INT(11) NULL AUTO_INCREMENT,
  `main` VARCHAR(500) NULL,
  `A` VARCHAR(500) NULL,
  `B` VARCHAR(500) NULL,
  `C` VARCHAR(500) NULL,
  `D` VARCHAR(500) NULL,
  `answer` VARCHAR(100) NULL,
  PRIMARY KEY (`id`));