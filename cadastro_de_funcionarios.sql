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
-- Estrutura para tabela `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(20) NOT NULL,
  `nome_departamento` varchar(100) NOT NULL,
  `localizacao_departamento` varchar(200) NOT NULL,
  `id_departamento_empresa` int(20) NOT NULL,
  `id_departamento_funcionario` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `nome_departamento`, `localizacao_departamento`, `id_departamento_empresa`, `id_departamento_funcionario`) VALUES
(135, 'Departamento Administrativo ', '4040 Souza Alameda - Dionísio, AM / 63924-048', 321, 123),
(680, 'Departamento Financeiro ', '4040 Souza Alameda - Dionísio, AM / 63924-048', 321, 456);

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` int(20) NOT NULL,
  `nome_empresa` varchar(100) NOT NULL,
  `cnpj_empresa` varchar(50) NOT NULL,
  `endereco_empresa` varchar(200) NOT NULL,
  `numero_de_departamentos` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `nome_empresa`, `cnpj_empresa`, `endereco_empresa`, `numero_de_departamentos`) VALUES
(321, 'Ardoval´s Motors', '77.931.617/0001-55', '398 Miguel Marginal - Major Sales, RS / 75080-934', 15),
(654, 'Rony Tec', '29.774.727/0001-08', '751 Moreira Avenida - Jataúba, GO / 03659-833', 10);

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
-- Índices de tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Índices de tabela `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`),
  ADD UNIQUE KEY `cnpj_empresa` (`cnpj_empresa`);

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
