-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.3.11-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para sier_desenv
CREATE DATABASE IF NOT EXISTS `sier_desenv` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sier_desenv`;

-- Copiando estrutura para tabela sier_desenv.aluno
CREATE TABLE IF NOT EXISTS `aluno` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `turma` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `usuario_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsgpw6tb2kerkceshx1b10rhkg` (`usuario_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela sier_desenv.aluno: 40 rows
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` (`id`, `created_at`, `turma`, `updated_at`, `usuario_id`) VALUES
	(1, '2019-06-17 12:53:50', '2018', NULL, 3),
	(2, '2019-06-17 12:53:51', '2018', NULL, 4),
	(3, '2019-06-17 12:53:51', '2018', NULL, 5),
	(4, '2019-06-17 12:53:51', '2018', NULL, 6),
	(5, '2019-06-17 12:53:51', '2018', NULL, 7),
	(6, '2019-06-17 12:53:51', '2018', NULL, 8),
	(7, '2019-06-17 12:53:51', '2018', NULL, 9),
	(8, '2019-06-17 12:53:51', '2018', NULL, 10),
	(9, '2019-06-17 12:53:51', '2018', NULL, 11),
	(10, '2019-06-17 12:53:51', '2018', NULL, 12),
	(11, '2019-06-17 12:53:51', '2018', NULL, 13),
	(12, '2019-06-17 12:53:51', '2018', NULL, 14),
	(13, '2019-06-17 12:53:51', '2018', NULL, 15),
	(14, '2019-06-17 12:53:51', '2018', NULL, 16),
	(15, '2019-06-17 12:53:51', '2018', NULL, 17),
	(16, '2019-06-17 12:53:51', '2018', NULL, 18),
	(17, '2019-06-17 12:53:51', '2018', NULL, 19),
	(18, '2019-06-17 12:53:51', '2018', NULL, 20),
	(19, '2019-06-17 12:53:51', '2018', NULL, 21),
	(20, '2019-06-17 12:53:51', '2018', NULL, 22),
	(21, '2019-06-17 12:55:43', '2018', NULL, 3),
	(22, '2019-06-17 12:55:43', '2018', NULL, 4),
	(23, '2019-06-17 12:55:43', '2018', NULL, 5),
	(24, '2019-06-17 12:55:43', '2018', NULL, 6),
	(25, '2019-06-17 12:55:43', '2018', NULL, 7),
	(26, '2019-06-17 12:55:43', '2018', NULL, 8),
	(27, '2019-06-17 12:55:43', '2018', NULL, 9),
	(28, '2019-06-17 12:55:43', '2018', NULL, 10),
	(29, '2019-06-17 12:55:43', '2018', NULL, 11),
	(30, '2019-06-17 12:55:43', '2018', NULL, 12),
	(31, '2019-06-17 12:55:43', '2018', NULL, 13),
	(32, '2019-06-17 12:55:43', '2018', NULL, 14),
	(33, '2019-06-17 12:55:43', '2018', NULL, 15),
	(34, '2019-06-17 12:55:43', '2018', NULL, 16),
	(35, '2019-06-17 12:55:43', '2018', NULL, 17),
	(36, '2019-06-17 12:55:43', '2018', NULL, 18),
	(37, '2019-06-17 12:55:43', '2018', NULL, 19),
	(38, '2019-06-17 12:55:43', '2018', NULL, 20),
	(39, '2019-06-17 12:55:43', '2018', NULL, 21),
	(40, '2019-06-17 12:55:43', '2018', NULL, 22);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;

-- Copiando estrutura para tabela sier_desenv.cargo
CREATE TABLE IF NOT EXISTS `cargo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela sier_desenv.cargo: 3 rows
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` (`id`, `created_at`, `nome`, `updated_at`) VALUES
	(1, NULL, 'ADMINISTRADOR', NULL),
	(2, NULL, 'PROFESSOR', NULL),
	(3, NULL, 'ALUNO', NULL);
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;

-- Copiando estrutura para tabela sier_desenv.edificio
CREATE TABLE IF NOT EXISTS `edificio` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fonte_coleta` varchar(255) DEFAULT NULL,
  `informacoes` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `data_construcao` date DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `nome_conhecido` varchar(255) NOT NULL,
  `numero_andares` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `atualizado_por_id` bigint(20) DEFAULT NULL,
  `cadastrado_por_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKllc10q03y65pvtgvhtgfnyj9i` (`atualizado_por_id`),
  KEY `FKjaq3ve4bg570b6me1ygx7ca6a` (`cadastrado_por_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela sier_desenv.edificio: 43 rows
/*!40000 ALTER TABLE `edificio` DISABLE KEYS */;
INSERT INTO `edificio` (`id`, `fonte_coleta`, `informacoes`, `created_at`, `data_construcao`, `bairro`, `cep`, `cidade`, `estado`, `numero`, `rua`, `nome`, `nome_conhecido`, `numero_andares`, `updated_at`, `atualizado_por_id`, `cadastrado_por_id`) VALUES
	(1, 'INTERNET', '', '2019-10-04 01:44:42', NULL, 'Gleba Fazenda Palhano', '86055630', 'Londrina', 'PR', '1260', 'Rua Ernâni Lacerda de Athayde', 'Residencial San Pablo III A ', 'San Pablo', 3, NULL, NULL, 19),
	(2, 'INTERNET', '', '2019-10-04 01:44:44', NULL, 'Gleba Fazenda Palhano', '86055630', 'Londrina', 'PR', '1200', 'Rua Ernâni Lacerda de Athayde', 'Vivere Palhano', 'Vivere', 18, NULL, NULL, 6),
	(3, 'INTERNET', '', '2019-10-04 01:44:45', NULL, 'Colina Verde', '86050620', 'Londrina', 'PR', '110', 'Rua Flor-da-manhã', 'Condomínio Água Verde', '', 3, NULL, NULL, 21),
	(4, 'INTERNET', '4 apartamentos por andar c/ opções de 2 e 3 vagas de garagem Apto. c/ 2 vagas área total: 197 m²área útil 110m²Apto. c/ 3 vagas área total: 211 m²área útil 110m²', '2019-10-04 01:44:46', NULL, 'Gleba Fazenda Palhano', '86050464', 'Londrina', 'PR', '458', 'Rua Eurico Hummig', 'MAISON GIVERNY', 'GIVERNY', 22, NULL, NULL, 9),
	(5, 'INTERNET', 'Construtora A. Yoshii Engenharia 3 dormitórios (1 suíte) 2 vagas de garagem 80m²de área privativa 142m²de área total', '2019-10-04 01:44:47', NULL, 'Gleba Fazenda Palhano', '86050464', 'Londrina', 'PR', '404', 'Rua Eurico Hummig', 'Condomínio Talent Residence', 'Talent Residence', 19, NULL, NULL, 1),
	(6, 'INTERNET', '4 apartamentos por andar Aptos c/ 2 vagas de garagem área total: 285,71 m²área útil 183 m²Aptos c/ 3 vagas de garagem área total: 299,60 m²área útil 183 m²', '2019-10-04 01:44:48', NULL, 'Gleba Fazenda Palhano', '86050464', 'Londrina', 'PR', '405', 'Rua Eurico Hummig', 'MAISON LEGACY', 'LEGACY', 25, NULL, NULL, 9),
	(7, 'INTERNET', '1 (uma) torre Construtora A.YOSHII ENGENHARIA E CONSTRUÇÃO LTDA 4 aptos. por andar Aptos c/ 2 vagas de garagem área total: 264 m²área útil 173 m²Aptos c/ 3 vagas de garagem área total: 278 m²área útil 173 m²', '2019-10-04 01:44:49', NULL, 'Gleba Fazenda Palhano', '86050464', 'Londrina', 'PR', '350', 'Rua Eurico Hummig', 'MAISON LAZULI', 'LAZULI', 26, NULL, NULL, 4),
	(8, 'INTERNET', '04 aptos. por andar Aptos c/ 3 vagas de garagem área total: 342,56 m²área útil 214,76 m²Aptos c/ 4 vagas de garagem área total: 357,86 m²área útil 214,76 m²', '2019-10-04 01:44:49', NULL, 'Gleba Fazenda Palhano', '86050464', 'Londrina', 'PR', '355', 'Rua Eurico Hummig', 'LANDMARK RESIDENCE', 'LANDMARK', 25, NULL, NULL, 13),
	(9, 'INTERNET', 'Google', '2019-10-04 01:44:50', NULL, 'Gleba Fazenda Palhano', '86050520', 'Londrina', 'PR', '300', 'Rua Jerusalém', 'Jardins Eco Resort ', 'Eco Resort', 19, NULL, NULL, 18),
	(10, 'INTERNET', 'Site Plaenge', '2019-10-04 01:44:14', NULL, 'Gleba Fazenda Palhano', '86050464', 'Londrina', 'PR', '255', 'Rua Eurico Hummig', 'Edifício Florais Eco Resort', 'Florais', 19, NULL, NULL, 18),
	(11, 'INTERNET', 'Site Plaenge', '2019-10-04 01:44:15', NULL, 'Gleba Fazenda Palhano', '86050490', 'Londrina', 'PR', '855', 'Rua João Huss', 'Edifício Alameda Eco Resort', '', 25, NULL, NULL, 18),
	(12, 'INTERNET', '', '2019-10-04 01:44:16', NULL, 'Gleba Fazenda Palhano', '86050492', 'Londrina', 'PR', '220', 'Alameda PéVermelho', 'Edifício Parc Rocher', 'Parc Rocher', 22, NULL, NULL, 18),
	(13, 'INTERNET', '', '2019-10-04 01:44:51', NULL, 'Gleba Fazenda Palhano', '86050464', 'Londrina', 'PR', '577', 'Rua Eurico Hummig', 'Authentique Residencial', 'Authentique', 24, NULL, NULL, 19),
	(14, 'INTERNET', 'O prédio contém 25 andares, onde 22 são dedicados aos apartamentos. São 8 apartamentos por andar.', '2019-10-04 01:44:51', NULL, 'Gleba Fazenda Palhano', '86050480', 'Londrina', 'PR', '1200', 'Rua Ivan Sérgio Athayde Vicente', 'Condomínio Liberty Towers', 'Liberty Torres', 25, NULL, NULL, 17),
	(15, 'INTERNET', '', '2019-10-04 01:44:52', NULL, 'Gleba Fazenda Palhano', '86050492', 'Londrina', 'PR', '766', 'Alameda PéVermelho', 'L Harmonie Condominio', 'L Harmonie', 24, NULL, NULL, 16),
	(16, 'INTERNET', 'Edifício tem duas torres. Torre A e Torre B.', '2019-10-04 01:44:52', NULL, 'Gleba Fazenda Palhano', '86055630', 'Londrina', 'PR', '1200', 'Rua Ernâni Lacerda de Athayde', 'Edifício Vivere Palhano', 'Vivere ', 19, NULL, NULL, 17),
	(17, 'INTERNET', '*Endereço aparece diferente no momento em que o CEP écadastrado. Endereço real: R. Ernâni Lacerda de Athayde, 930 - Gleba Fazenda Palhano, Londrina - PR.', '2019-10-04 01:44:53', NULL, 'Conjunto Habitacional Jamile Dequech', '86044766', 'Londrina', 'PR', '930', 'Rodovia JoséGarcia de Campos', 'Edifício Le Blanc', 'Le Blanc', 24, NULL, NULL, 17),
	(18, 'INTERNET', '', '2019-10-04 01:44:53', NULL, 'Gleba Fazenda Palhano', '86055630', 'Londrina', 'PR', '45', 'Rua Ernâni Lacerda de Athayde', 'Condomínio Edifício Mogno', 'Mogno', 21, NULL, NULL, 17),
	(19, 'PORTARIA', 'Construtora: Plaenge', '2019-10-04 01:44:54', NULL, 'Gleba Fazenda Palhano', '86055620', 'Londrina', 'PR', '150', 'Rua Ulrico Zuínglio', 'Edifício Arquiteto Júlio Ribeiro', 'Arquiteto Júlio Ribeiro', 22, NULL, NULL, 5),
	(20, 'PORTARIA', 'Construtora: Ageplan Engenharia', '2019-10-04 01:44:54', NULL, 'Santa Rosa', '86050070', 'Londrina', 'PR', '1001', 'Rua Caracas', 'Edifício Villa Solare', 'Villa Solare', 17, NULL, NULL, 1),
	(21, 'PORTARIA', 'Construtora: Plaenge', '2019-10-04 01:44:55', NULL, 'Gleba Fazenda Palhano', '86055620', 'Londrina', 'PR', '100', 'Rua Ulrico Zuínglio', 'Edifício Anita Malfatti', 'Anita Malfatti', 17, NULL, NULL, 1),
	(22, 'PORTARIA', 'Edifício construído pela Vectra Construtora, localiza-se a uma quadra da Av. Ayrton Senna, próximo ao Aurora Shopping e também àAv. Madre Leônia Milito.', '2019-10-04 01:44:55', NULL, 'Gleba Fazenda Palhano', '86050464', 'Londrina', 'PR', '300', 'Rua Eurico Hummig', 'Premiatto Residence', 'Premiatto', 22, NULL, NULL, 8),
	(23, 'PORTARIA', 'Construtura: Vectra.', '2019-10-04 01:44:56', NULL, 'Gleba Fazenda Palhano', '86050464', 'Londrina', 'PR', '280', 'Rua Eurico Hummig', 'Max Living', 'Max Living', 21, NULL, NULL, 8),
	(24, 'PORTARIA', 'Quadra Construtora', '2019-10-04 01:44:56', NULL, 'Gleba Fazenda Palhano', '86050470', 'Londrina', 'PR', '400', 'Rua Maria Lúcia da Paz', 'Residencial Terra Brasil', 'Terra Brasil', 18, NULL, NULL, 10),
	(25, 'PORTARIA', 'Construtora Great Incorporação e Empreen LTDA', '2019-10-04 01:44:57', NULL, 'Gleba Fazenda Palhano', '86050470', 'Londrina', 'PR', '450', 'Rua Maria Lúcia da Paz', 'Edifício Vision Residence', 'Vision', 18, NULL, NULL, 10),
	(26, 'INTERNET', '', '2019-10-04 01:44:57', NULL, 'Santa Rosa', '86050070', 'Londrina', 'PR', '1255', 'Rua Caracas', 'NYC Palhano', 'NYC Palhano', 25, NULL, NULL, 3),
	(27, 'PORTARIA', 'Edifício em construção. Construtora: Galmo Construtora', '2019-10-04 01:44:58', NULL, 'Gleba Fazenda Palhano', '86050470', 'Londrina', 'PR', '350', 'Rua Maria Lúcia da Paz', 'Edifício Torre Ville', 'Torre Ville', 20, NULL, NULL, 20),
	(28, 'PORTARIA', 'Data de entrega: março 2013. Construtora: Vectra', '2019-10-04 01:44:58', NULL, 'Gleba Fazenda Palhano', '86055620', 'Londrina', 'PR', '320', 'Rua Ulrico Zuínglio', 'Evolution Home Alto da Palhano', 'Evolution', 21, NULL, NULL, 20),
	(29, 'INTERNET', '', '2019-10-04 01:44:59', NULL, 'Gleba Fazenda Palhano', '86055630', 'Londrina', 'PR', '450', 'Rua Ernâni Lacerda de Athayde', 'Condomínio Torre Valência', 'Torre Valência', 24, NULL, NULL, 3),
	(30, 'INTERNET', '', '2019-10-04 01:44:59', NULL, 'Gleba Fazenda Palhano', '86055630', 'Londrina', 'PR', '188', 'Rua Ernâni Lacerda de Athayde', 'Condomínio Residencial Costa Esmeralda', 'Costa Esmeralda', 10, NULL, NULL, 3),
	(31, 'INTERNET', 'O edifício tem três torres', '2019-10-04 01:45:00', NULL, 'Gleba Fazenda Palhano', '86055620', 'Londrina', 'PR', '500', 'Rua Ulrico Zuínglio', 'Edifício Garden Palhano', 'Garden Palhano', 21, NULL, NULL, 11),
	(32, 'INTERNET', '', '2019-10-04 01:45:00', NULL, 'Gleba Fazenda Palhano', '86055630', 'Londrina', 'PR', '400', 'Rua Ernâni Lacerda de Athayde', 'Edifício Torre Almeria', 'Torre Almeria', 25, NULL, NULL, 11),
	(33, 'INTERNET', 'O condomínio tem duas torres', '2019-10-04 01:45:01', NULL, 'Gleba Fazenda Palhano', '86055630', 'Londrina', 'PR', '200', 'Rua Ernâni Lacerda de Athayde', 'Condomínio Residencial Enseadas', 'Residencial Enseadas', 11, NULL, NULL, 11),
	(34, 'INTERNET', '2 Apto. por andar; lote com 3.586,40 m²; área total construída de 19.737,96 m²; as vagas variam de 03 a 04. ', '2019-10-04 01:45:02', NULL, 'Gleba Fazenda Palhano', '86050490', 'Londrina', 'PR', '485', 'Rua João Huss', 'Edificio Torre Val Verde', 'Edificio Torre Val Verde', 30, NULL, NULL, 15),
	(35, 'INTERNET', 'Construtora PLAENGE EMPREENDIMENTOS LTDA; área total de 23,869,97 m²; 02 vagas de garagem. Obs: A data de entrega encontrada foi no ano de 2002. ', '2019-10-04 01:45:03', NULL, 'Gleba Fazenda Palhano', '86050490', 'Londrina', 'PR', '200', 'Rua João Huss', 'Edifício Lac Royal', 'Edifício Lac Royal', 24, NULL, NULL, 15),
	(36, 'INTERNET', 'Área Priv. entre 58m²e 81m²; 3 Dormitórios e 1 suíte; estáem construção, portanto ainda não édisponibilizado a quantidade de andares; 1 ou 2 vagas; ', '2019-10-04 01:45:05', NULL, 'Gleba Fazenda Palhano', '86050490', 'Londrina', 'PR', '1000', 'Rua João Huss', 'Cencept Palhano/Vanguard Home', 'Concept Palhano', 1, NULL, NULL, 15),
	(37, 'INTERNET', '04 aptos por andar; 02 vagas de garagem, opção para 03; área total de 205,00m²', '2019-10-04 01:45:06', NULL, 'Gleba Fazenda Palhano', '86050490', 'Londrina', 'PR', '881', 'Rua João Huss', 'Vert Residence ', 'Vert Residence ', 25, NULL, NULL, 15),
	(38, 'INTERNET', 'A Torre 1 Jasmim foi entregue em Outubro 2017 e a Torre 2 JatobáAbril 2017; área total 30,351,15m²; com 02 quartos, 01 suíte; possui academia, brinquedoteca; churrasqueira; espaço Gourmet, Hall de entrada, pscina coberta e aquecida, playground e etc.', '2019-10-04 01:45:07', NULL, 'Gleba Fazenda Palhano', '86050490', 'Londrina', 'PR', '855', 'Rua João Huss', 'Edifício Alameda Eco Resort & Residence', ' Alameda Eco Resort & Residence', 24, NULL, NULL, 15),
	(39, 'INTERNET', 'Construtora YOSHI ENGENHARIA E CONSTRUÇÕES LTDA; área total de 12.537,59m²; 04 aptos por andar com 01 vaga dupla de garagem.', '2019-10-04 01:45:08', NULL, 'Gleba Fazenda Palhano', '86050490', 'Londrina', 'PR', '455', 'Rua João Huss', 'Edifício Maison Murano ', 'Maison Murano', 20, NULL, NULL, 15),
	(40, 'INTERNET', 'Construtora: PLAENGE EMPREENDIMENTOS LTDA., 04 aptos; vagas de garagens simples e duplas; área total de 231,47m².', '2019-10-04 01:45:09', NULL, 'Gleba Fazenda Palhano', '86050490', 'Londrina', 'PR', '380', 'Rua João Huss', 'Edifício Joan Miró', 'Joan Miró', 24, NULL, NULL, 15),
	(41, 'INTERNET', 'Construtora: A. Yoshii; 02 vagas de garagem; 2 piscinas; espaço fitness; varanda com churrasqueira; espaço gourmet; 04 aptos por andar. ', '2019-10-04 01:45:10', NULL, 'Gleba Fazenda Palhano', '86050490', 'Londrina', 'PR', '405', 'Rua João Huss', 'Residencial Manaca', 'Edifício Manaca', 21, NULL, NULL, 15),
	(42, 'INTERNET', '', '2019-10-04 01:45:11', NULL, 'Gleba Fazenda Palhano', '86050490', 'Londrina', 'PR', '115', 'Rua João Huss', '', 'Condomínio Residencial Bosque Wilmar H Berbert', 1, NULL, NULL, 14),
	(43, 'INTERNET', '', '2019-10-04 01:45:22', NULL, 'Gleba Fazenda Palhano', '86050490', 'Londrina', 'PR', '177', 'Rua João Huss', '', 'Condomínio Residencial Pérola Negra', 1, NULL, NULL, 14);
/*!40000 ALTER TABLE `edificio` ENABLE KEYS */;

-- Copiando estrutura para tabela sier_desenv.noticia
CREATE TABLE IF NOT EXISTS `noticia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `data_publicacao` datetime NOT NULL,
  `descicao` varchar(255) DEFAULT NULL,
  `nome` varchar(60) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK51s0hrvyltinu4gignfdoen34` (`usuario_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela sier_desenv.noticia: 0 rows
/*!40000 ALTER TABLE `noticia` DISABLE KEYS */;
/*!40000 ALTER TABLE `noticia` ENABLE KEYS */;

-- Copiando estrutura para tabela sier_desenv.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ativo` bit(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `apelido` varchar(255) NOT NULL,
  `cargo_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5171l57faosmj8myawaucatdw` (`email`),
  KEY `FKnnbsgmv6we6ee7x59r9m693c3` (`cargo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela sier_desenv.usuario: 27 rows
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `ativo`, `created_at`, `email`, `last_login`, `nome`, `senha`, `updated_at`, `apelido`, `cargo_id`) VALUES
	(1, b'1', '2018-01-01 00:00:00', 'renato.henrique_98@hotmail.com', '2018-08-21 11:43:07', 'Renato Henrique Horacio dos Santos', '$2a$10$fNntSM.zr5PDvKsoVgvENuJDbMJuBsM3lZpYXPd/RO3E/JKqKu0Ai', '2019-06-17 12:20:09', 'Renato', 1),
	(2, b'1', '2018-01-01 00:00:00', 'brigida.administrador@saier.com', '2018-07-26 17:44:33', 'Brigida Cervantes', '$2a$10$bAl.hJ0s.Aj3reNzBvuYY.YvmXPixO.izSYv8cgUFnLPxCkGmafwO', '2019-06-17 12:43:31', 'Brigida', 2),
	(3, b'1', '2018-01-01 00:00:00', 'ana.silva@saier.com', '2018-08-02 07:21:18', 'Ana K Hobold Ferreira da Silva', '$2a$10$AItIN2UQLQMqHTR/K/kab.3vt0X8AzHHo639LuwbPDi0EvhpzzftS', '2019-06-17 12:43:31', 'Ana Silva', 3),
	(4, b'1', '2018-01-01 00:00:00', 'ana.teixeira@saier.com', '2018-07-31 10:29:18', 'Ana Paula dos Santos Teixeira', '$2a$10$YthoycnyU0O3/uJDELFo6.oz/VpCtknZ9O5eom3baYcpawhC4dl9W', '2019-06-17 12:43:31', 'Ana Paula', 3),
	(5, b'1', '2017-12-31 23:59:59', 'bianca.martins@saier.com', '2018-08-01 12:02:00', 'Bianca Rodrigues Martins', '$2a$10$7cL1Yt6lc7HhxlJX/BEZKuZSqmP9vbgYeJa2TAkeBx6mgzmWOXggy', '2019-06-17 12:43:31', 'Bianca Rodrigues', 3),
	(6, b'1', '2018-01-01 00:00:00', 'catia.goedert@saier.com', '2018-07-31 09:33:05', 'Catia Bertuol da Silva Goedert', '$2a$10$w04xpMsP9I15bJJ.W5PPJ.whJILde1VJc4uNyB8gS.HALrrQVw0Ii', '2019-06-17 12:43:31', 'Catia Bertuol', 3),
	(7, b'1', '2018-01-01 00:00:00', 'debora.ferreira@saier.com', NULL, 'Debora de Souza Ferreira', '$2a$10$gxwyl2pf6JVpFqA4O66MLOep88MTD5VQtDagMOHtVp8TQVISO6yOu', '2019-06-17 12:43:31', 'Debora de Souza', 3),
	(8, b'1', '2018-01-01 00:00:00', 'elisio.junior@saier.com', '2018-08-01 12:38:18', 'Elisio Custodio Brentan Junior', '$2a$10$JBXOAO/I634wWSt.Cv41y.YPkcKmNkvz30dJhQbLA8PXv9D1evqf.', '2019-06-17 12:43:31', 'Elisio Custodio', 3),
	(9, b'1', '2018-01-01 00:00:00', 'estela.cotta@saier.com', '2018-07-31 10:19:18', 'Estela  Maria Szytko Cotta', '$2a$10$/YZz1poetZ2BBc.qFym19./2iP3ulB9rt9X/S9h6zCqz/07XtrXkS', '2019-06-17 12:43:31', 'Estela Maria', 3),
	(10, b'1', '2018-01-01 00:00:00', 'felipe.pereira@saier.com', '2018-08-02 07:35:33', 'Felipe C de Almeida Pereira', '$2a$10$ZoSKMPcruxKHBC5bqDL39O6bBQmbhLJS3CS6B9A4/yAlF6rAEmT3W', '2019-06-17 12:43:31', 'Felipe Almeida', 3),
	(11, b'1', '2018-01-01 00:00:00', 'giovanna.pereira@saier.com', '2018-08-02 08:34:11', 'Giovanna Silva Pereira ', '$2a$10$VVyqa3nGK4yaeb0nUIUwYextEgr1YAV9a1SDJHjrprXZzUoWmaWC6', '2019-06-17 12:43:31', 'Giovana Silva', 3),
	(12, b'1', '2018-01-01 00:00:00', 'higor.silva@saier.com', NULL, 'Higor Ismael Iglesias da Silva', '$2a$10$ZVWerW8NDkG57mW2SbyNI.7RfUsSjyxQQ1cpblL7CT3Bi9GCGRMqG', '2019-06-17 12:43:31', 'Higor Ismael', 3),
	(13, b'1', '2018-01-01 00:00:00', 'janaina.fereira@saier.com', '2018-07-31 10:37:43', 'Janaina Carla Ferreira', '$2a$10$NmTbxebGR.Mh.be4XkvjxOVCqRloXj02aqiUxIcBCxMONFfdYpEMG', '2019-06-17 12:43:31', 'Janaina Carla', 3),
	(14, b'1', '2018-01-01 00:00:00', 'luis.junior@saier.com', '2018-08-02 10:36:41', 'Luis Carlos da Silva Junior', '$2a$10$AAdHKZyvImpBbTxY96ILxO4p6mgUslhWEfr0r/COZNCs6PeHd6i4y', '2019-06-17 12:43:31', 'Luis Carlos', 3),
	(15, b'1', '2018-01-01 00:00:00', 'marcia.batistao@saier.com', '2018-08-02 09:35:41', 'Marcia Batistao', '$2a$10$6S5vPcTDDBZXaIG7IJmce./upFh09YrlW4Wx4iKNegflaGMOncsIK', '2019-06-17 12:43:31', 'Marcia Batistao', 3),
	(16, b'1', '2018-01-01 00:00:00', 'maria.komatsu@saier.com', '2018-08-01 11:02:23', 'Maria de Lurdes C Basso Komatsu', '$2a$10$/EfjDOCS6gUxNivxVUIbtOtNlGLdIxwgpu2iylVWDQkODx.1uuxBq', '2019-06-17 12:43:31', 'Maria de Lurdes', 3),
	(17, b'1', '2018-01-01 00:00:00', 'rafaela.belliboni@saier.com', '2018-08-01 11:43:50', 'Rafaela Luz Belliboni', '$2a$10$Z7WoRwdiyY2patESHmmm9.DMbQQm3ZL0MObQXYVRMKtULCcItl4.S', '2019-06-17 12:43:31', 'Rafaela Luz', 3),
	(18, b'1', '2018-01-01 00:00:00', 'silvia.silva@saier.com', '2018-08-01 08:58:45', 'Silvia Regina da Silva', '$2a$10$FTowv5MfkZ0xPpk2G5L4xeWGuu0xR0XKXXrZ9oGz6afUHDwma0bLi', '2019-06-17 12:43:31', 'Silvia Regina', 3),
	(19, b'1', '2018-01-01 00:00:00', 'sueli.sagatelli@saier.com', '2018-08-01 10:36:11', 'Sueli de Melo Sagatelli ', '$2a$10$TA0Qx8UJtQVnz6rPlDIR2uGrOex7JUG/O/XuYyD6./G/0.tEufsm2', '2019-06-17 12:43:31', 'Sueli de Melo', 3),
	(20, b'1', '2018-01-01 00:00:00', 'taiza.oliveira@saier.com', '2018-08-02 07:46:32', 'Taiza Maria Lozano de Oliveira', '$2a$10$qwjd/J0J1fistw6R/LoVU.BB2iYybAoiFIlcSKUeUFYf7gqH2.mZW', '2019-06-17 12:43:31', 'Taiza Maria', 3),
	(21, b'1', '2018-01-01 00:00:00', 'thais.santos@saier.com', '2018-07-31 09:40:54', 'Thais Pricila dos Santos', '$2a$10$1XxlEvprTHqkNcbkt9W6devPxNThjSjWnYL5CSWUN3mwfMIbUr8Za', '2019-06-17 12:43:31', 'Thais Pricila', 3),
	(22, b'1', '2018-01-01 00:00:00', 'thaysa.andrade@saier.com', '2018-07-31 10:31:44', 'Thaysa A Garbosa Vieira de Andrade', '$2a$10$UYn4Fcs7dd3saaTeZPrev.eMGwRD.9ZvoaecgaV0VmPxQkfEl9hky', '2019-06-17 12:43:31', 'Thaysa Garbosa', 3),
	(23, b'1', '2019-07-14 00:20:33', 'fulano', '2019-07-14 00:20:40', 'fulano', '$2a$10$fNntSM.zr5PDvKsoVgvENuJDbMJuBsM3lZpYXPd/RO3E/JKqKu0Ai', '2019-07-14 00:20:56', 'fulano', NULL),
	(24, b'1', '2019-07-15 20:27:05', 'fulano@email.com', NULL, 'Fulano', '$2a$10$w28jrWmy2Q2zWTus9oP8uezHUeGxSCaXuQCsggT7A4Whv3KlyrcpW', NULL, 'Fulaninho', 3),
	(25, b'1', '2019-07-15 20:37:30', 'fulano2@email.com', NULL, 'Fulano', '$2a$10$lG/EqPof14b7eb2RMYQJN.3yDqWAqpLhnjUll6r/a1IOag0LVTFHC', NULL, 'Fulaninho', 3),
	(26, b'1', '2019-07-15 20:38:22', 'fulano3@email.com', NULL, 'Fulano', '$2a$10$CE4gjSibeiyeeQqdI3pqHuGNOSRUiFet5N7ueUr5yrREVXS0AzziC', NULL, 'Fulaninho', 3),
	(27, b'1', '2019-07-15 02:39:21', 'fulano@gmail.com', NULL, 'Jublawderçom', '$2a$10$PPeP9dmH2cGzDq9dsJjrn.U0ZkSR0i7rcv.Z91o7CFLWlWBlGUFYe', '2019-07-21 17:10:17', 'KAKAKA', 3);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
