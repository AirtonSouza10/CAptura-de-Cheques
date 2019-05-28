-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11-Jan-2017 às 20:17
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capchequebr`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cheque`
--

CREATE TABLE `cheque` (
  `Cod_Ch` int(11) NOT NULL,
  `Usuario_Cod_User` int(11) DEFAULT NULL,
  `Agencia` int(11) NOT NULL,
  `Conta` int(11) NOT NULL,
  `Operador` int(11) NOT NULL,
  `CPF` varchar(14) NOT NULL,
  `Data_Emissao` date NOT NULL,
  `Data_Deposito` date NOT NULL,
  `Data_Cadastro` date NOT NULL,
  `Leitura_Ch` int(11) NOT NULL,
  `Valor` double NOT NULL,
  `Stat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `Cod_User` int(11) NOT NULL,
  `Login` varchar(15) NOT NULL,
  `Senha` varchar(15) NOT NULL,
  `NomeFun` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`Cod_User`, `Login`, `Senha`, `NomeFun`) VALUES
(1, 'Administrador', '142536', 'Administrador'),
(2, 'airton.souza', '142536', 'Airton de Araujo Souza');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cheque`
--
ALTER TABLE `cheque`
  ADD PRIMARY KEY (`Cod_Ch`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Cod_User`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cheque`
--
ALTER TABLE `cheque`
  MODIFY `Cod_Ch` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Cod_User` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
