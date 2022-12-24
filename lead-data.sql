-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 22, 2022 at 07:52 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lead-data`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataingestion`
--

DROP TABLE IF EXISTS `dataingestion`;
CREATE TABLE IF NOT EXISTS `dataingestion` (
  `vCampaignId` varchar(255)  DEFAULT NULL,
  `vFirstName` varchar(255)  DEFAULT NULL,
  `vLastName` varchar(255)  DEFAULT NULL,
  `vPhoneCell` varchar(255)  DEFAULT NULL,
  `vAddress` varchar(255)  DEFAULT NULL,
  `vCity` varchar(255)  DEFAULT NULL,
  `vState` varchar(255)  DEFAULT NULL,
  `vZipCode` varchar(255)  DEFAULT NULL,
  `vEmailAddress` varchar(255)  DEFAULT NULL,
  `vProperty_type` varchar(255)  DEFAULT NULL,
  `vCreditDropdown` varchar(255)  DEFAULT NULL,
  `vPropertyUse` varchar(255)  DEFAULT NULL,
  `vMilitaryStatus` varchar(255)  DEFAULT NULL,
  `vLoanType` varchar(255)  DEFAULT NULL,
  `vInterestRate` varchar(255)  DEFAULT NULL,
  `vMortgageBalance` varchar(255)  DEFAULT NULL,
  `vHomeValue` varchar(255)  DEFAULT NULL,
  `vCashOut` varchar(255)  DEFAULT NULL,
  `iLoanAmount` int DEFAULT NULL,
  `vMortgageType` varchar(255)  DEFAULT NULL,
  `vOccupationDropdown` varchar(255)  DEFAULT NULL,
  `vLoanPurpose` varchar(255)  DEFAULT NULL
);

--
-- Dumping data for table `dataingestion`
--

INSERT INTO `dataingestion` (`vCampaignId`, `vFirstName`, `vLastName`, `vPhoneCell`, `vAddress`, `vCity`, `vState`, `vZipCode`, `vEmailAddress`, `vProperty_type`, `vCreditDropdown`, `vPropertyUse`, `vMilitaryStatus`, `vLoanType`, `vInterestRate`, `vMortgageBalance`, `vHomeValue`, `vCashOut`, `iLoanAmount`, `vMortgageType`, `vOccupationDropdown`, `vLoanPurpose`) VALUES
('NLD', 'ankit ', 'undefined', '315451532154', 'dewas', 'sdewh', 'KS', 'kjnkjlkn', 'njlnjn', 'co-op', '600 - 659', 'investment property', 'No', 'VA', 'jnjn', 'jnjn', 'jnjnkj', 'jnjn', 0, 'Purchase', 'employed', 'refinance'),
('NLD', 'llllllll', 'l', 'llllll', 'lllllllllllllllll', 'lllllllllllllllll', 'LA', 'llllllllllllll', 'lllllllllllll', 'co-op', '600 - 659', 'investment property', 'No', 'VA', 'llllllllllllll', 'llllllllllllll', 'jmk', 'llllllllllllllll', 0, 'Purchase', 'retired', 'cash-out'),
('NLD', 'llllllll', 'l', 'llllll', 'lllllllllllllllll', 'lllllllllllllllll', 'LA', 'llllllllllllll', 'lllllllllllll', 'co-op', '600 - 659', 'investment property', 'No', 'VA', 'llllllllllllll', 'llllllllllllll', 'jmk', 'llllllllllllllll', 0, 'Purchase', 'retired', 'cash-out');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
