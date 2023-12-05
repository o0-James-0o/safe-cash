-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: safeCash
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `cod_admin` int NOT NULL,
  `nivel_acesso` int DEFAULT NULL,
  `permissao_especial` bit(1) DEFAULT NULL,
  PRIMARY KEY (`cod_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,5,_binary '');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_seq`
--

DROP TABLE IF EXISTS `admin_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_seq`
--

LOCK TABLES `admin_seq` WRITE;
/*!40000 ALTER TABLE `admin_seq` DISABLE KEYS */;
INSERT INTO `admin_seq` VALUES (1);
/*!40000 ALTER TABLE `admin_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caixa`
--

DROP TABLE IF EXISTS `caixa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caixa` (
  `cod_caixa` int NOT NULL,
  `cod_empresa` int DEFAULT NULL,
  `saldo` double DEFAULT NULL,
  PRIMARY KEY (`cod_caixa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caixa`
--

LOCK TABLES `caixa` WRITE;
/*!40000 ALTER TABLE `caixa` DISABLE KEYS */;
INSERT INTO `caixa` VALUES (1,1,300000);
/*!40000 ALTER TABLE `caixa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caixa_seq`
--

DROP TABLE IF EXISTS `caixa_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caixa_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caixa_seq`
--

LOCK TABLES `caixa_seq` WRITE;
/*!40000 ALTER TABLE `caixa_seq` DISABLE KEYS */;
INSERT INTO `caixa_seq` VALUES (1);
/*!40000 ALTER TABLE `caixa_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `cod_cliente` int NOT NULL,
  `cod_empresa` int NOT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `total_gasto` double DEFAULT NULL,
  PRIMARY KEY (`cod_cliente`,`cod_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,1,'123456789','client1@mail.br','Chico Bento da Silva Souza',32),(1,2,'123456789','client1@mail.br','Chico Bento da Silva Souza',47),(2,1,'987456101','client2@mail.it','Mario Ballotelli',149),(3,1,'204567989','client3@mail.mx','Chavez Hernandés',56),(3,52,'204567989','client3@mail.mx','Chavez Hernandés',340),(4,1,'101022301','client4@mail.ar','Carlitos Tevez',120),(5,1,'113190743','client5@mail.ru','Natasha Gasparov',459.35);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_seq`
--

DROP TABLE IF EXISTS `cliente_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_seq`
--

LOCK TABLES `cliente_seq` WRITE;
/*!40000 ALTER TABLE `cliente_seq` DISABLE KEYS */;
INSERT INTO `cliente_seq` VALUES (1);
/*!40000 ALTER TABLE `cliente_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `despesa`
--

DROP TABLE IF EXISTS `despesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `despesa` (
  `cod_despesa` int NOT NULL,
  `cod_empresa` int DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  PRIMARY KEY (`cod_despesa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `despesa`
--

LOCK TABLES `despesa` WRITE;
/*!40000 ALTER TABLE `despesa` DISABLE KEYS */;
INSERT INTO `despesa` VALUES (1,1,'Almoço Funcionarios','Refeição',3500),(2,1,'Gasolina','Transporte',12375),(3,1,'Vale Transporte','Transporte',6500),(4,1,'Nova Frota','Estoque',46030),(5,1,'Reparo Veiculos','Transporte',8900);
/*!40000 ALTER TABLE `despesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `despesa_seq`
--

DROP TABLE IF EXISTS `despesa_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `despesa_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `despesa_seq`
--

LOCK TABLES `despesa_seq` WRITE;
/*!40000 ALTER TABLE `despesa_seq` DISABLE KEYS */;
INSERT INTO `despesa_seq` VALUES (1);
/*!40000 ALTER TABLE `despesa_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `cod_empresa` int NOT NULL,
  `cnpj` varchar(255) DEFAULT NULL,
  `cod_usuario` int DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `segmento` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cod_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'12345678910',1,'Aço & Ferro S.A.','Metalurgia'),(2,'4564',2,'Balaco Baco Bar','Restaurante'),(52,'2312',52,'João de Barro Construções','Construção Civil'),(53,'8734',53,'Ronaldinho Futebol Society','Lazer'),(54,'76534',54,'Lana & Lan','Doces'),(102,'123495',102,'Empresa de carros','Comercio'),(103,'763512367',103,'Comercio Veiculos LTDA','Comercio');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa_seq`
--

DROP TABLE IF EXISTS `empresa_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_seq`
--

LOCK TABLES `empresa_seq` WRITE;
/*!40000 ALTER TABLE `empresa_seq` DISABLE KEYS */;
INSERT INTO `empresa_seq` VALUES (201);
/*!40000 ALTER TABLE `empresa_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacao`
--

DROP TABLE IF EXISTS `transacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transacao` (
  `cod_transacao` int NOT NULL,
  `cod_empresa` int DEFAULT NULL,
  `data` datetime(6) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  PRIMARY KEY (`cod_transacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacao`
--

LOCK TABLES `transacao` WRITE;
/*!40000 ALTER TABLE `transacao` DISABLE KEYS */;
INSERT INTO `transacao` VALUES (1,1,'2023-12-02 00:00:00.000000','Venda de barra de aço','Venda',230),(2,1,'2023-12-02 00:00:00.000000','Palha de Aço','Venda',450),(3,1,'2023-11-30 00:00:00.000000','Transporte de Container','Fretado',120),(4,1,'2023-12-01 00:00:00.000000','Barra de ferros enferrujadas','Venda',25);
/*!40000 ALTER TABLE `transacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacao_seq`
--

DROP TABLE IF EXISTS `transacao_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transacao_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacao_seq`
--

LOCK TABLES `transacao_seq` WRITE;
/*!40000 ALTER TABLE `transacao_seq` DISABLE KEYS */;
INSERT INTO `transacao_seq` VALUES (1);
/*!40000 ALTER TABLE `transacao_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usr_padrao`
--

DROP TABLE IF EXISTS `usr_padrao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usr_padrao` (
  `cod_usuario` int NOT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `departamento` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr_padrao`
--

LOCK TABLES `usr_padrao` WRITE;
/*!40000 ALTER TABLE `usr_padrao` DISABLE KEYS */;
/*!40000 ALTER TABLE `usr_padrao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usr_padrao_seq`
--

DROP TABLE IF EXISTS `usr_padrao_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usr_padrao_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr_padrao_seq`
--

LOCK TABLES `usr_padrao_seq` WRITE;
/*!40000 ALTER TABLE `usr_padrao_seq` DISABLE KEYS */;
INSERT INTO `usr_padrao_seq` VALUES (1);
/*!40000 ALTER TABLE `usr_padrao_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `cod_usuario` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `admin_cod_admin` int DEFAULT NULL,
  `usr_padrao_cod_usuario` int DEFAULT NULL,
  PRIMARY KEY (`cod_usuario`),
  UNIQUE KEY `UK_1hfln2jqe4lbkpok3ohhriujs` (`admin_cod_admin`),
  UNIQUE KEY `UK_7vwitfuk28lnqh7p8jaihoyk9` (`usr_padrao_cod_usuario`),
  CONSTRAINT `FK9x842u6o35g5stp7td27xr4yj` FOREIGN KEY (`usr_padrao_cod_usuario`) REFERENCES `usr_padrao` (`cod_usuario`),
  CONSTRAINT `FKopm282l7yliyovca4lbdfgt2v` FOREIGN KEY (`admin_cod_admin`) REFERENCES `admin` (`cod_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'teste@email.com','tester','test123',1,NULL),(2,'user1@gmail.com','user1','user1',NULL,NULL),(52,'user2@mail.com','user2','user2',NULL,NULL),(53,'usr3@mail.com','usr3','usr3',NULL,NULL),(54,'usr4.mail','usr4','usr4',NULL,NULL),(102,'test1@mail.com','test1','test1',NULL,NULL),(103,'test2@mail.com','test2','test2',NULL,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_seq`
--

DROP TABLE IF EXISTS `usuario_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_seq`
--

LOCK TABLES `usuario_seq` WRITE;
/*!40000 ALTER TABLE `usuario_seq` DISABLE KEYS */;
INSERT INTO `usuario_seq` VALUES (201);
/*!40000 ALTER TABLE `usuario_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 15:16:57
