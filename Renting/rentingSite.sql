-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 15, 2023 at 09:13 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentingSite`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `reportID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `feedback` varchar(200) NOT NULL,
  `reportTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `credentialsID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `adminID` int(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `lastlyLogged` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `adID` int(11) NOT NULL,
  `descriptions` varchar(1000) NOT NULL,
  `locations` varchar(20) NOT NULL,
  `imagePath` varchar(100) NOT NULL,
  `price` int(50) NOT NULL,
  `contacts` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`adID`, `descriptions`, `locations`, `imagePath`, `price`, `contacts`) VALUES
(1, 'Karibuni Aloyce catering. Tunatoa huduma ya chakula kwenye masherehe , misiba na hafla mbali mbali.Huduma zetu ni nzuri na kwa bei poa.', 'Dodoma', 'photos/catering1.jpeg', 100000, 789984990),
(2, 'Cathy food. Tunatoa huduma ya chakula kwenye shuhuli mbali mbali. Iwe hafla ndogo (watu 20) au hafla kubwa (maka yatu 300) . Bei zetu ni nafuu sana na unalipa baada ya shuhuli kuisha.', 'Dar es Salaam', 'photos/catering2.jpeg', 100000, 656378491),
(3, 'Gari ya prado inakodishwa', 'Dar es Salaam', 'photos/pradoTz.webp', 60000, 789984990),
(4, 'OCHU FASHION. Tunakodisha suit za aina zote , kwa avili ya harusi na party mbalimbali. Bei zetu ni nafuu sana na unaweza kuweka order ili nguo unayohitaji iandaliwe', 'Dodoma', 'photos/suti1.jpeg', 20000, 653899529),
(5, 'karibuni CHIWA ONE FASHION. Tunakodisha suit (suti) za Nina vote kya ajili ya matukio mbalimbali. Pia unaweza kununua iwapo utapenda. Bei zetu ni rahisi sana ', 'Dodoma', 'photos/suti2.jpeg', 25000, 699430515),
(6, 'SUTI SUTI SUTI!! , Karibuni Robby one Fashion  ,tunakodisha suit kwa ajili ya party mbalimbali. Bei zetu ni nzuri kama zilivo bidhaa setu', 'Iringa', 'photos/suti3.jpeg', 30000, 718656895),
(7, 'Nayla mashela, karibuni nguo zetu ni zenye ubora na viwango vya kimataifa. Nguo zetu zinatoka uturuki', 'Dar es Salaam', 'photos/mashela1.jpeg', 300000, 693742153),
(8, 'Milphat fashion, tunakodisha mashela ambayo ni yenye quality nzuri na nguo zetu zinatokea dubai karbuni wateja. Kwetu mteja ni mfalme, wote mnakaribishwa. pendeza kwenye harusi yako with Milphat Fashion', 'Dodoma', 'photos/mashela2.jpeg', 350000, 738278925),
(9, 'Karibuni sana wadau wetu wa usafiri  wa magari tunakodisha kwa bei sawa na bure ili kukuwezesjha udambe kismati.  Kwa wadau wa murano toleo la  19 la mwaka 2022', 'Mwanza', 'photos/MuranoTz.jpeg', 70000, 745671723),
(10, 'karibuni kwa wadau wa magari tunakodisha gari aina ya noah. usafiri usiobagua jinsia yoyote ewe mama,baba kwa vijana karibuni huduma zetu ni sawa na bure.usafiri kwa Jiri yako epuka matapeli wa magari  karibu sehemu sahihi', 'Arusha', 'photos/noahTz.jpeg', 45000, 721351932),
(11, 'Mapambo ya kisasa yanayofaa katika shughuli yoyote iwe harusi,kumbukumbu za kuzaliwa ,sherehe za kitaifa .tunakodisha kwa bei poa sawa na bure karibuni sana wadau wa  shughuli.', 'Dodoma', 'photos/vitambaa1.jpeg', 35000, 788567123);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptionDetails`
--

CREATE TABLE `subscriptionDetails` (
  `subID` int(11) NOT NULL,
  `accountNumber` bigint(50) NOT NULL,
  `accountName` varchar(20) NOT NULL,
  `cvv` int(6) NOT NULL,
  `paymetDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriptionDetails`
--

INSERT INTO `subscriptionDetails` (`subID`, `accountNumber`, `accountName`, `cvv`, `paymetDate`) VALUES
(1, 123456789, 'ALLOYCECHARLES', 991, '2023-09-14'),
(2, 12345, 'ALLOYCE CHARLES', 876, '2023-09-15'),
(3, 12345, 'ATHUMANI RIZZI', 768, '2023-09-15'),
(4, 54321, 'AMRI CHUWA', 678, '2023-09-15'),
(5, 12378, 'ROBERT ROBERTTO', 568, '2023-09-15'),
(6, 192050, 'NAYLA DADU', 867, '2023-09-15'),
(7, 235678, 'MILPHAT DADU', 132, '2023-09-15'),
(8, 56789, 'Ochu junior', 562, '2023-09-15'),
(9, 565432, 'OCHUBIZY', 321, '2023-09-15'),
(10, 67892, 'BAKARI SONY', 441, '2023-09-15');

-- --------------------------------------------------------

--
-- Table structure for table `userDetails`
--

CREATE TABLE `userDetails` (
  `userID` int(11) NOT NULL,
  `firstName` varchar(15) NOT NULL,
  `lastName` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `passwords` varchar(15) NOT NULL,
  `cityTown` varchar(20) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `userStatus` varchar(10) NOT NULL DEFAULT 'normal',
  `dateJoined` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userDetails`
--

INSERT INTO `userDetails` (`userID`, `firstName`, `lastName`, `username`, `passwords`, `cityTown`, `phone`, `userStatus`, `dateJoined`) VALUES
(1, 'Aloyce', 'Charles', 'SUPERADMIN', 'super123', 'Dodoma', '0789984990', 'super', '2023-09-13'),
(2, 'Catherine', 'Mgogo', 'Cathy', '12345', 'Mbeya', '0658819323', 'normal', '2023-09-13'),
(3, 'Athumani', 'Rizzi', 'Ochu', 'Ochu@123', 'Dodoma', '0653899529', 'admin', '2023-09-13'),
(4, 'Catherine', 'Mgogo', 'Cathy', '12345', 'Mbeya', '0658819323', 'normal', '2023-09-13'),
(5, 'NOVERT', 'WILLBRIGHT', 'NOVA', '123', 'Arusha', '0789984990', 'admin', '2023-09-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`reportID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`adID`);

--
-- Indexes for table `subscriptionDetails`
--
ALTER TABLE `subscriptionDetails`
  ADD PRIMARY KEY (`subID`);

--
-- Indexes for table `userDetails`
--
ALTER TABLE `userDetails`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `reportID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `adID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subscriptionDetails`
--
ALTER TABLE `subscriptionDetails`
  MODIFY `subID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `userDetails`
--
ALTER TABLE `userDetails`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
