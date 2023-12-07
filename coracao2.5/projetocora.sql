-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/11/2023 às 22:44
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
-- Banco de dados: `projetocora`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `consultas`
--

CREATE TABLE `consultas` (
  `nome` text NOT NULL,
  `hora` time NOT NULL,
  `data` text NOT NULL,
  `sintoma` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `consultas`
--

INSERT INTO `consultas` (`nome`, `hora`, `data`, `sintoma`, `id`) VALUES
('Gabriel', '05:00:00', '0000-00-00', 'Falta de ar', 5),
('julia', '05:00:00', '14/11/2023', 'Falta de ar', 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `medico`
--

CREATE TABLE `medico` (
  `nome` text NOT NULL,
  `email` text NOT NULL,
  `id` int(11) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `senha` text NOT NULL,
  `nasc` date NOT NULL,
  `genero` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `nome` text NOT NULL,
  `email` text NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `senha` text NOT NULL,
  `nasc` date NOT NULL,
  `genero` text NOT NULL,
  `ocupacao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `paciente`
--

INSERT INTO `paciente` (`nome`, `email`, `cpf`, `senha`, `nasc`, `genero`, `ocupacao`) VALUES
('', '', '', '', '0000-00-00', '', ''),
('Gabriel', 'dwdsadwdsa', '12345', '12345', '2023-11-09', 'Masculino', 'medico'),
('George', 'gabriel', '12345678', '12345', '2023-11-14', 'Masculino', 'paciente'),
('nicolas', 'nicolas123', '5124525', '1234', '2023-11-16', 'Masculino', 'paciente'),
('Nicolasgay', 'udhaushdadw', '86232512515', '1234', '2023-11-12', 'Outro', 'paciente');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`cpf`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `consultas`
--
ALTER TABLE `consultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `medico`
--
ALTER TABLE `medico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
