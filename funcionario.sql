-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10/10/2024 às 01:16
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro de funcionarios`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id_funcionario` int(20) NOT NULL,
  `nome_funcionario` varchar(200) NOT NULL,
  `cpf_funcionario` varchar(100) NOT NULL,
  `cargo_funcionario` varchar(200) NOT NULL,
  `data_contratacao_funcionario` date NOT NULL,
  `data_demissao_funcionario` date DEFAULT NULL,
  `salario_funcionario` float NOT NULL,
  `rendimento_funcionario` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`id_funcionario`, `nome_funcionario`, `cpf_funcionario`, `cargo_funcionario`, `data_contratacao_funcionario`, `data_demissao_funcionario`, `salario_funcionario`, `rendimento_funcionario`) VALUES
(123, 'Valdir Lima Figueiredo', '025.748.370-53', 'Limpeza', '2015-10-16', NULL, 1.169, 'Limpou 7 setores durante seu expediente completo, sem hora extra'),
(456, 'Lindomar Camacam Nevez', '439.085.650-22', 'Gerente de Transportes ', '2018-10-07', '2023-08-09', 5.157, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id_funcionario`),
  ADD UNIQUE KEY `cpf_funcionario` (`cpf_funcionario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
