DROP database IF EXISTS tpDbGonzalez;
CREATE database tpDbGonzalez;
use tpDbGonzalez;

CREATE TABLE `usuarios` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(255),
   `email` VARCHAR(255),
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `titulo` VARCHAR(100),
   `fecha_de_creacion` DATE,
   `fecha_de_ultima_modificacion` DATE,
   `descripcion` TEXT,
   `habilitacion_para_eliminar` TINYINT,
   `usuario_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas_categorias` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nota_id` INT NOT NULL,
   `categoria_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categorias` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `titulo` VARCHAR(255),
   PRIMARY KEY (`id`)
);


ALTER TABLE `notas` ADD CONSTRAINT `FK_cedce1a3-565c-4c84-83ef-722e0494f433` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios`(`id`)  ;

ALTER TABLE `notas_categorias` ADD CONSTRAINT `FK_e3830ef5-1077-439e-a746-458be68969fa` FOREIGN KEY (`nota_id`) REFERENCES `notas`(`id`)  ;

ALTER TABLE `notas_categorias` ADD CONSTRAINT `FK_557c56c4-106c-4675-aade-f1e4059cc5cc` FOREIGN KEY (`categoria_id`) REFERENCES `categorias`(`id`)  ;

INSERT INTO `usuarios` (`id`,`nombre`,`email`) VALUES (NULL,'Carina','carina@gmail.com');
INSERT INTO `usuarios` (`id`,`nombre`,`email`) VALUES (NULL,'Lucrecia','lucrecia@gmail.com');
INSERT INTO `usuarios` (`id`,`nombre`,`email`) VALUES (NULL,'Juan','juan@gmail.com');
INSERT INTO `usuarios` (`id`,`nombre`,`email`) VALUES (NULL,'Pedro','pedro@gmail.com');
INSERT INTO `usuarios` (`id`,`nombre`,`email`) VALUES (NULL,'Lucia','lucia@gmail.com');
INSERT INTO `usuarios` (`id`,`nombre`,`email`) VALUES (NULL,'Ivan','ivan@gmail.com');
INSERT INTO `usuarios` (`id`,`nombre`,`email`) VALUES (NULL,'Antonela','antonela@gmail.com');
INSERT INTO `usuarios` (`id`,`nombre`,`email`) VALUES (NULL,'Noelia','noelia@gmail.com');
INSERT INTO `usuarios` (`id`,`nombre`,`email`) VALUES (NULL,'Adrian','adrian@gmail.com');
INSERT INTO `usuarios` (`id`,`nombre`,`email`) VALUES (NULL,'Agustina','agustina@gmail.com');

INSERT INTO `notas` (`id`,`titulo`,`fecha_de_creacion`,`fecha_de_ultima_modificacion`,`descripcion`,`habilitacion_para_eliminar`,`usuario_id`) VALUES (NULL,'Estudiar','2021-05-23','2021-09-30','descripcion1','0','3');
INSERT INTO `notas` (`id`,`titulo`,`fecha_de_creacion`,`fecha_de_ultima_modificacion`,`descripcion`,`habilitacion_para_eliminar`,`usuario_id`) VALUES (NULL,'Comprar','2021-05-23','2021-09-30','descripcion2','0','4');
INSERT INTO `notas` (`id`,`titulo`,`fecha_de_creacion`,`fecha_de_ultima_modificacion`,`descripcion`,`habilitacion_para_eliminar`,`usuario_id`) VALUES (NULL,'No olivdar','2021-05-23','2021-09-30','descripcion3','0','2');
INSERT INTO `notas` (`id`,`titulo`,`fecha_de_creacion`,`fecha_de_ultima_modificacion`,`descripcion`,`habilitacion_para_eliminar`,`usuario_id`) VALUES (NULL,'Examen','2021-05-23','2021-09-30','descripcion4','0','7');
INSERT INTO `notas` (`id`,`titulo`,`fecha_de_creacion`,`fecha_de_ultima_modificacion`,`descripcion`,`habilitacion_para_eliminar`,`usuario_id`) VALUES (NULL,'Comer','2021-05-23','2021-09-30','descripcion5','0','1');
INSERT INTO `notas` (`id`,`titulo`,`fecha_de_creacion`,`fecha_de_ultima_modificacion`,`descripcion`,`habilitacion_para_eliminar`,`usuario_id`) VALUES (NULL,'Mirar teoria','2021-05-23','2021-09-30','descripcion6','0','8');
INSERT INTO `notas` (`id`,`titulo`,`fecha_de_creacion`,`fecha_de_ultima_modificacion`,`descripcion`,`habilitacion_para_eliminar`,`usuario_id`) VALUES (NULL,'Buscar libro','2021-05-23','2021-09-30','descripcion7','0','7');
INSERT INTO `notas` (`id`,`titulo`,`fecha_de_creacion`,`fecha_de_ultima_modificacion`,`descripcion`,`habilitacion_para_eliminar`,`usuario_id`) VALUES (NULL,'Recordar','2021-05-23','2021-09-30','descripcion8','0','9');
INSERT INTO `notas` (`id`,`titulo`,`fecha_de_creacion`,`fecha_de_ultima_modificacion`,`descripcion`,`habilitacion_para_eliminar`,`usuario_id`) VALUES (NULL,'Repasar','2021-05-23','2021-09-30','descripcion9','0','10');
INSERT INTO `notas` (`id`,`titulo`,`fecha_de_creacion`,`fecha_de_ultima_modificacion`,`descripcion`,`habilitacion_para_eliminar`,`usuario_id`) VALUES (NULL,'Rehacer','2021-05-23','2021-09-30','descripcion10','0','6');

INSERT INTO `notas_categorias` (`id`,`nota_id`,`categoria_id`) VALUES (NULL,'1','4');
INSERT INTO `notas_categorias` (`id`,`nota_id`,`categoria_id`) VALUES (NULL,'2','7');
INSERT INTO `notas_categorias` (`id`,`nota_id`,`categoria_id`) VALUES (NULL,'10','4');
INSERT INTO `notas_categorias` (`id`,`nota_id`,`categoria_id`) VALUES (NULL,'9','8');
INSERT INTO `notas_categorias` (`id`,`nota_id`,`categoria_id`) VALUES (NULL,'1','6');
INSERT INTO `notas_categorias` (`id`,`nota_id`,`categoria_id`) VALUES (NULL,'5','2');
INSERT INTO `notas_categorias` (`id`,`nota_id`,`categoria_id`) VALUES (NULL,'7','5');
INSERT INTO `notas_categorias` (`id`,`nota_id`,`categoria_id`) VALUES (NULL,'3','5');
INSERT INTO `notas_categorias` (`id`,`nota_id`,`categoria_id`) VALUES (NULL,'8','7');
INSERT INTO `notas_categorias` (`id`,`nota_id`,`categoria_id`) VALUES (NULL,'10','9');

INSERT INTO `categorias` (`id`,`titulo`) VALUES (NULL,'arte');
INSERT INTO `categorias` (`id`,`titulo`) VALUES (NULL,'idiomas');
INSERT INTO `categorias` (`id`,`titulo`) VALUES (NULL,'musica');
INSERT INTO `categorias` (`id`,`titulo`) VALUES (NULL,'literatura');
INSERT INTO `categorias` (`id`,`titulo`) VALUES (NULL,'historia');
INSERT INTO `categorias` (`id`,`titulo`) VALUES (NULL,'cultura');
INSERT INTO `categorias` (`id`,`titulo`) VALUES (NULL,'fisica');
INSERT INTO `categorias` (`id`,`titulo`) VALUES (NULL,'quimica');
INSERT INTO `categorias` (`id`,`titulo`) VALUES (NULL,'georgrafia');
INSERT INTO `categorias` (`id`,`titulo`) VALUES (NULL,'matematicas');