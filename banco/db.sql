-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27-Mar-2015 às 22:06
-- Versão do servidor: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfis`
--

CREATE TABLE IF NOT EXISTS `perfis` (
`id` int(11) NOT NULL,
  `perfil` char(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `perfis`
--

INSERT INTO `perfis` (`id`, `perfil`) VALUES
(1, 'usuario'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `perfilId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `nome`, `email`, `telefone`, `descricao`, `perfilId`) VALUES
(1, 'Luciano', 'Luciano@Luciano', 20102010, 'Bacon ipsum dolor amet flank turkey landjaeger venison cupim, ham hock biltong brisket spare ribs meatball. Ham hock fatback meatloaf landjaeger. Chuck salami fatback, cupim biltong tri-tip tail kielbasa pastrami t-bone shoulder. Rump short ribs leberkas ', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `perfis`
--
ALTER TABLE `perfis`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `perfis`
--
ALTER TABLE `perfis`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
