-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: locadora
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `mostrar_clientes_criciuma`
--

DROP TABLE IF EXISTS `mostrar_clientes_criciuma`;
/*!50001 DROP VIEW IF EXISTS `mostrar_clientes_criciuma`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mostrar_clientes_criciuma` AS SELECT 
 1 AS `nome`,
 1 AS `cidade`,
 1 AS `estado`,
 1 AS `fone`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mostrar_atendentes`
--

DROP TABLE IF EXISTS `mostrar_atendentes`;
/*!50001 DROP VIEW IF EXISTS `mostrar_atendentes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mostrar_atendentes` AS SELECT 
 1 AS `codfuncionario`,
 1 AS `nome`,
 1 AS `cidade`,
 1 AS `estado`,
 1 AS `fone`,
 1 AS `cargo`,
 1 AS `salario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `selecionar_carlos`
--

DROP TABLE IF EXISTS `selecionar_carlos`;
/*!50001 DROP VIEW IF EXISTS `selecionar_carlos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `selecionar_carlos` AS SELECT 
 1 AS `nome`,
 1 AS `codlocacao`,
 1 AS `data_loc`,
 1 AS `data_dev`,
 1 AS `val_diaria`,
 1 AS `val_pago`,
 1 AS `codcliente`,
 1 AS `codfilme`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mostrar_comedia_disponivel`
--

DROP TABLE IF EXISTS `mostrar_comedia_disponivel`;
/*!50001 DROP VIEW IF EXISTS `mostrar_comedia_disponivel`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mostrar_comedia_disponivel` AS SELECT 
 1 AS `codfilme`,
 1 AS `titulo`,
 1 AS `tempoduracao`,
 1 AS `classificacao`,
 1 AS `diretor`,
 1 AS `status`,
 1 AS `categoria`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `devolucao_maisquecinquentamangos_junho`
--

DROP TABLE IF EXISTS `devolucao_maisquecinquentamangos_junho`;
/*!50001 DROP VIEW IF EXISTS `devolucao_maisquecinquentamangos_junho`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `devolucao_maisquecinquentamangos_junho` AS SELECT 
 1 AS `nome`,
 1 AS `codlocacao`,
 1 AS `data_loc`,
 1 AS `data_dev`,
 1 AS `val_diaria`,
 1 AS `val_pago`,
 1 AS `codcliente`,
 1 AS `codfilme`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ordenar_classificacao_nome`
--

DROP TABLE IF EXISTS `ordenar_classificacao_nome`;
/*!50001 DROP VIEW IF EXISTS `ordenar_classificacao_nome`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ordenar_classificacao_nome` AS SELECT 
 1 AS `classificacao`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `mostrar_clientes_criciuma`
--

/*!50001 DROP VIEW IF EXISTS `mostrar_clientes_criciuma`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mostrar_clientes_criciuma` AS select `clientes`.`nome` AS `nome`,`clientes`.`cidade` AS `cidade`,`clientes`.`estado` AS `estado`,`clientes`.`fone` AS `fone` from `clientes` where (`clientes`.`cidade` like 'crici%ma') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mostrar_atendentes`
--

/*!50001 DROP VIEW IF EXISTS `mostrar_atendentes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mostrar_atendentes` AS select `funcionarios`.`codfuncionario` AS `codfuncionario`,`funcionarios`.`nome` AS `nome`,`funcionarios`.`cidade` AS `cidade`,`funcionarios`.`estado` AS `estado`,`funcionarios`.`fone` AS `fone`,`funcionarios`.`cargo` AS `cargo`,`funcionarios`.`salario` AS `salario` from `funcionarios` where (`funcionarios`.`cargo` like 'atendente') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `selecionar_carlos`
--

/*!50001 DROP VIEW IF EXISTS `selecionar_carlos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `selecionar_carlos` AS select `clientes`.`nome` AS `nome`,`locacao`.`codlocacao` AS `codlocacao`,`locacao`.`data_loc` AS `data_loc`,`locacao`.`data_dev` AS `data_dev`,`locacao`.`val_diaria` AS `val_diaria`,`locacao`.`val_pago` AS `val_pago`,`locacao`.`codcliente` AS `codcliente`,`locacao`.`codfilme` AS `codfilme` from (`locacao` join `clientes`) where ((`clientes`.`nome` like 'Carlos') and (year(`locacao`.`data_loc`) = 2021) and (month(`locacao`.`data_loc`) = 4) and (`clientes`.`codcliente` = `locacao`.`codcliente`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mostrar_comedia_disponivel`
--

/*!50001 DROP VIEW IF EXISTS `mostrar_comedia_disponivel`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mostrar_comedia_disponivel` AS select `filmes`.`codfilme` AS `codfilme`,`filmes`.`titulo` AS `titulo`,`filmes`.`tempoduracao` AS `tempoduracao`,`filmes`.`classificacao` AS `classificacao`,`filmes`.`diretor` AS `diretor`,`filmes`.`status` AS `status`,`filmes`.`categoria` AS `categoria` from `filmes` where ((`filmes`.`categoria` like '%com%dia%') and (`filmes`.`status` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `devolucao_maisquecinquentamangos_junho`
--

/*!50001 DROP VIEW IF EXISTS `devolucao_maisquecinquentamangos_junho`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `devolucao_maisquecinquentamangos_junho` AS select `clientes`.`nome` AS `nome`,`locacao`.`codlocacao` AS `codlocacao`,`locacao`.`data_loc` AS `data_loc`,`locacao`.`data_dev` AS `data_dev`,`locacao`.`val_diaria` AS `val_diaria`,`locacao`.`val_pago` AS `val_pago`,`locacao`.`codcliente` AS `codcliente`,`locacao`.`codfilme` AS `codfilme` from (`locacao` join `clientes`) where ((month(`locacao`.`data_dev`) = 6) and (year(`locacao`.`data_dev`) = 2021) and (`locacao`.`val_pago` > 50) and (`clientes`.`codcliente` = `locacao`.`codcliente`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ordenar_classificacao_nome`
--

/*!50001 DROP VIEW IF EXISTS `ordenar_classificacao_nome`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ordenar_classificacao_nome` AS select `filmes`.`classificacao` AS `classificacao` from `filmes` order by `filmes`.`titulo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-11 17:20:58
