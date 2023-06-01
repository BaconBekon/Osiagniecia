-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 25, 2023 at 09:45 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `straz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `danekontaktowe`
--

CREATE TABLE `danekontaktowe` (
  `idDaneKontaktowe` int(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `nrTelefonu` int(11) DEFAULT NULL,
  `miejscowosc` varchar(45) DEFAULT NULL,
  `kraj` varchar(45) DEFAULT NULL,
  `nrBudynku` varchar(45) DEFAULT NULL,
  `kodPocztowy` varchar(45) DEFAULT NULL,
  `ulica` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `danekontaktowe`
--

INSERT INTO `danekontaktowe` (`idDaneKontaktowe`, `email`, `nrTelefonu`, `miejscowosc`, `kraj`, `nrBudynku`, `kodPocztowy`, `ulica`) VALUES
(1, 'SynaNiema@gmail.com', 676897652, 'Lipinki Łóżyckie', 'Polska', '43', '68-213', 'Łączna'),
(2, NULL, NULL, 'Lipinki Łóżyckie', 'Polska', '43', '68-213', 'Łączna'),
(3, 'RemizaPlock@gmail.com', 987023345, 'Lipinki Łóżyckie', 'Polska', '56', '68-213', 'Gaśnicza'),
(4, 'Marekdruch@gmail.com', 876876098, 'Lipinki Łóżyckie', 'Polska', '789', '68-213', 'Dobrego Drucha'),
(5, 'Krzysiekbylpodczaspozaru@gmail.com', 567065423, 'Ciechocinek', 'Polska', '999', '29-999', 'Obywatelska'),
(6, NULL, NULL, 'Ciechocinek', 'Polska', '77', '29-999', 'Płonąca'),
(7, 'RemizaCiechocinek@gmail.com', 984512333, 'Ciechocinek', 'Polska', '2700', '29-999', 'Wodna'),
(8, 'Zbigniewstraz@gmail.com', 837293985, 'Ciechocinek', 'Polska', '222', '29-999', 'Dobrego Strażaka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `druch`
--

CREATE TABLE `druch` (
  `idDruch` int(11) NOT NULL,
  `stopien` varchar(45) DEFAULT NULL,
  `pesel` int(11) DEFAULT NULL,
  `dataUrodzenia` date DEFAULT NULL,
  `kwalifikacje` varchar(45) DEFAULT NULL,
  `stan` varchar(45) DEFAULT NULL,
  `nazwisko` varchar(45) DEFAULT NULL,
  `imie` varchar(45) DEFAULT NULL,
  `DaneKontaktowe_idDaneKontaktowe` int(11) NOT NULL,
  `Remiza_idRemiza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `druch`
--

INSERT INTO `druch` (`idDruch`, `stopien`, `pesel`, `dataUrodzenia`, `kwalifikacje`, `stan`, `nazwisko`, `imie`, `DaneKontaktowe_idDaneKontaktowe`, `Remiza_idRemiza`) VALUES
(3, 'strażak', 987654312, '1991-08-09', 'inżynier pożarnictwa', 'na służbie', 'Gęś', 'Marek', 4, 1),
(4, 'starszy strażak', 987382985, '1983-10-18', 'technik pożarnictwa', 'na służbie', 'Nowak', 'Zbigniew', 8, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `druch_has_interwencja`
--

CREATE TABLE `druch_has_interwencja` (
  `Druch_idDruch` int(11) NOT NULL,
  `Interwencja_idInterwencja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `druch_has_interwencja`
--

INSERT INTO `druch_has_interwencja` (`Druch_idDruch`, `Interwencja_idInterwencja`) VALUES
(3, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `interwencja`
--

CREATE TABLE `interwencja` (
  `idInterwencja` int(11) NOT NULL,
  `rodzajInterwencji` varchar(45) DEFAULT NULL,
  `dataInterwencji` date DEFAULT NULL,
  `liczbaDruchowZaangazowanych` int(11) DEFAULT NULL,
  `DaneKontaktowe_idDaneKontaktowe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `interwencja`
--

INSERT INTO `interwencja` (`idInterwencja`, `rodzajInterwencji`, `dataInterwencji`, `liczbaDruchowZaangazowanych`, `DaneKontaktowe_idDaneKontaktowe`) VALUES
(1, 'Ratowniczo-Gaśnicza', '2023-05-24', 2, 2),
(2, 'Pożarniczo-Chemiczna', '2023-01-10', 6, 6);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osobazglaszajaca`
--

CREATE TABLE `osobazglaszajaca` (
  `idOsobaZglaszajaca` int(11) NOT NULL,
  `imie` varchar(45) DEFAULT NULL,
  `nazwisko` varchar(45) DEFAULT NULL,
  `wiek` int(11) DEFAULT NULL,
  `DaneKontaktowe_idDaneKontaktowe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `osobazglaszajaca`
--

INSERT INTO `osobazglaszajaca` (`idOsobaZglaszajaca`, `imie`, `nazwisko`, `wiek`, `DaneKontaktowe_idDaneKontaktowe`) VALUES
(1, 'Hymel', 'Jadwiga', 82, 1),
(2, 'Krzysztof', 'Bąk', 23, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osobazglaszajaca_has_interwencja`
--

CREATE TABLE `osobazglaszajaca_has_interwencja` (
  `OsobaZglaszajaca_idOsobaZglaszajaca` int(11) NOT NULL,
  `Interwencja_idInterwencja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `osobazglaszajaca_has_interwencja`
--

INSERT INTO `osobazglaszajaca_has_interwencja` (`OsobaZglaszajaca_idOsobaZglaszajaca`, `Interwencja_idInterwencja`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pojazdy`
--

CREATE TABLE `pojazdy` (
  `idPojazdy` int(11) NOT NULL,
  `marka` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `numerRejestracyjny` varchar(45) DEFAULT NULL,
  `dataOstatniegoPrzegladu` date DEFAULT NULL,
  `Remiza_idRemiza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pojazdy`
--

INSERT INTO `pojazdy` (`idPojazdy`, `marka`, `model`, `numerRejestracyjny`, `dataOstatniegoPrzegladu`, `Remiza_idRemiza`) VALUES
(1, 'Scania', 'P360 B4X4HZ', 'WP 98JI2', '2022-03-16', 1),
(2, 'MAN', '13.290 4X4 BL', 'CAL 97JU2', '2022-08-09', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `remiza`
--

CREATE TABLE `remiza` (
  `idRemiza` int(11) NOT NULL,
  `numer` int(11) DEFAULT NULL,
  `nazwa` varchar(45) DEFAULT NULL,
  `DaneKontaktowe_idDaneKontaktowe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `remiza`
--

INSERT INTO `remiza` (`idRemiza`, `numer`, `nazwa`, `DaneKontaktowe_idDaneKontaktowe`) VALUES
(1, 1, 'OSP w Lipinkach Łóżyckickich', 3),
(2, 2, 'OSP w Ciechocinkach', 7);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `remiza_has_interwencja`
--

CREATE TABLE `remiza_has_interwencja` (
  `Remiza_idRemiza` int(11) NOT NULL,
  `Interwencja_idInterwencja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `remiza_has_interwencja`
--

INSERT INTO `remiza_has_interwencja` (`Remiza_idRemiza`, `Interwencja_idInterwencja`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wydarzenia`
--

CREATE TABLE `wydarzenia` (
  `idWydarzenia` int(11) NOT NULL,
  `miejsceWydarzenia` varchar(45) DEFAULT NULL,
  `dataOdbycia` date DEFAULT NULL,
  `rodzajWydarzenia` varchar(45) DEFAULT NULL,
  `godzinaWydarzenia` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wydarzenia`
--

INSERT INTO `wydarzenia` (`idWydarzenia`, `miejsceWydarzenia`, `dataOdbycia`, `rodzajWydarzenia`, `godzinaWydarzenia`) VALUES
(1, 'ORLEN ARENA W PŁOCKU', '2023-09-14', 'Mecz siatkarski', '12:30:00'),
(2, 'Hala Targowa w Ciechocinku', '2023-09-20', 'Odpust', '12:27:28');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wydarzenia_has_druch`
--

CREATE TABLE `wydarzenia_has_druch` (
  `Wydarzenia_idWydarzenia` int(11) NOT NULL,
  `Druch_idDruch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wydarzenia_has_druch`
--

INSERT INTO `wydarzenia_has_druch` (`Wydarzenia_idWydarzenia`, `Druch_idDruch`) VALUES
(1, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wyposazenie`
--

CREATE TABLE `wyposazenie` (
  `idWyposazenie` int(11) NOT NULL,
  `nazwa` varchar(45) DEFAULT NULL,
  `rodzajWyposazenia` varchar(45) DEFAULT NULL,
  `kodInwentaryzacyjny` int(11) DEFAULT NULL,
  `Remiza_idRemiza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wyposazenie`
--

INSERT INTO `wyposazenie` (`idWyposazenie`, `nazwa`, `rodzajWyposazenia`, `kodInwentaryzacyjny`, `Remiza_idRemiza`) VALUES
(1, 'Fiskars Siekiera Rozłupująca Solid A11 105108', 'Siekiery', 12, 1),
(2, 'Wąż ssawny PCV 52/2000-ŁA', 'Węże gasnicze', 88, 2);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `danekontaktowe`
--
ALTER TABLE `danekontaktowe`
  ADD PRIMARY KEY (`idDaneKontaktowe`);

--
-- Indeksy dla tabeli `druch`
--
ALTER TABLE `druch`
  ADD PRIMARY KEY (`idDruch`,`DaneKontaktowe_idDaneKontaktowe`,`Remiza_idRemiza`),
  ADD KEY `fk_Druch_DaneKontaktowe1_idx` (`DaneKontaktowe_idDaneKontaktowe`),
  ADD KEY `fk_Druch_Remiza1_idx` (`Remiza_idRemiza`);

--
-- Indeksy dla tabeli `druch_has_interwencja`
--
ALTER TABLE `druch_has_interwencja`
  ADD PRIMARY KEY (`Druch_idDruch`,`Interwencja_idInterwencja`),
  ADD KEY `fk_Druch_has_Interwencja_Interwencja1_idx` (`Interwencja_idInterwencja`),
  ADD KEY `fk_Druch_has_Interwencja_Druch_idx` (`Druch_idDruch`);

--
-- Indeksy dla tabeli `interwencja`
--
ALTER TABLE `interwencja`
  ADD PRIMARY KEY (`idInterwencja`,`DaneKontaktowe_idDaneKontaktowe`),
  ADD KEY `fk_Interwencja_DaneKontaktowe1_idx` (`DaneKontaktowe_idDaneKontaktowe`);

--
-- Indeksy dla tabeli `osobazglaszajaca`
--
ALTER TABLE `osobazglaszajaca`
  ADD PRIMARY KEY (`idOsobaZglaszajaca`,`DaneKontaktowe_idDaneKontaktowe`),
  ADD KEY `fk_OsobaZglaszajaca_DaneKontaktowe1_idx` (`DaneKontaktowe_idDaneKontaktowe`);

--
-- Indeksy dla tabeli `osobazglaszajaca_has_interwencja`
--
ALTER TABLE `osobazglaszajaca_has_interwencja`
  ADD PRIMARY KEY (`OsobaZglaszajaca_idOsobaZglaszajaca`,`Interwencja_idInterwencja`),
  ADD KEY `fk_OsobaZglaszajaca_has_Interwencja_Interwencja1_idx` (`Interwencja_idInterwencja`),
  ADD KEY `fk_OsobaZglaszajaca_has_Interwencja_OsobaZglaszajaca1_idx` (`OsobaZglaszajaca_idOsobaZglaszajaca`);

--
-- Indeksy dla tabeli `pojazdy`
--
ALTER TABLE `pojazdy`
  ADD PRIMARY KEY (`idPojazdy`,`Remiza_idRemiza`),
  ADD KEY `fk_Pojazdy_Remiza1_idx` (`Remiza_idRemiza`);

--
-- Indeksy dla tabeli `remiza`
--
ALTER TABLE `remiza`
  ADD PRIMARY KEY (`idRemiza`,`DaneKontaktowe_idDaneKontaktowe`),
  ADD KEY `fk_Remiza_DaneKontaktowe1_idx` (`DaneKontaktowe_idDaneKontaktowe`);

--
-- Indeksy dla tabeli `remiza_has_interwencja`
--
ALTER TABLE `remiza_has_interwencja`
  ADD PRIMARY KEY (`Remiza_idRemiza`,`Interwencja_idInterwencja`),
  ADD KEY `fk_Remiza_has_Interwencja_Interwencja1_idx` (`Interwencja_idInterwencja`),
  ADD KEY `fk_Remiza_has_Interwencja_Remiza1_idx` (`Remiza_idRemiza`);

--
-- Indeksy dla tabeli `wydarzenia`
--
ALTER TABLE `wydarzenia`
  ADD PRIMARY KEY (`idWydarzenia`);

--
-- Indeksy dla tabeli `wydarzenia_has_druch`
--
ALTER TABLE `wydarzenia_has_druch`
  ADD PRIMARY KEY (`Wydarzenia_idWydarzenia`,`Druch_idDruch`),
  ADD KEY `fk_Wydarzenia_has_Druch_Druch1_idx` (`Druch_idDruch`),
  ADD KEY `fk_Wydarzenia_has_Druch_Wydarzenia1_idx` (`Wydarzenia_idWydarzenia`);

--
-- Indeksy dla tabeli `wyposazenie`
--
ALTER TABLE `wyposazenie`
  ADD PRIMARY KEY (`idWyposazenie`,`Remiza_idRemiza`),
  ADD KEY `fk_Wyposazenie_Remiza1_idx` (`Remiza_idRemiza`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danekontaktowe`
--
ALTER TABLE `danekontaktowe`
  MODIFY `idDaneKontaktowe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `druch`
--
ALTER TABLE `druch`
  MODIFY `idDruch` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `interwencja`
--
ALTER TABLE `interwencja`
  MODIFY `idInterwencja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `osobazglaszajaca`
--
ALTER TABLE `osobazglaszajaca`
  MODIFY `idOsobaZglaszajaca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pojazdy`
--
ALTER TABLE `pojazdy`
  MODIFY `idPojazdy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `remiza`
--
ALTER TABLE `remiza`
  MODIFY `idRemiza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wydarzenia`
--
ALTER TABLE `wydarzenia`
  MODIFY `idWydarzenia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wyposazenie`
--
ALTER TABLE `wyposazenie`
  MODIFY `idWyposazenie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `druch`
--
ALTER TABLE `druch`
  ADD CONSTRAINT `fk_Druch_DaneKontaktowe1` FOREIGN KEY (`DaneKontaktowe_idDaneKontaktowe`) REFERENCES `danekontaktowe` (`idDaneKontaktowe`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Druch_Remiza1` FOREIGN KEY (`Remiza_idRemiza`) REFERENCES `remiza` (`idRemiza`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `druch_has_interwencja`
--
ALTER TABLE `druch_has_interwencja`
  ADD CONSTRAINT `fk_Druch_has_Interwencja_Druch` FOREIGN KEY (`Druch_idDruch`) REFERENCES `druch` (`idDruch`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Druch_has_Interwencja_Interwencja1` FOREIGN KEY (`Interwencja_idInterwencja`) REFERENCES `interwencja` (`idInterwencja`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `interwencja`
--
ALTER TABLE `interwencja`
  ADD CONSTRAINT `fk_Interwencja_DaneKontaktowe1` FOREIGN KEY (`DaneKontaktowe_idDaneKontaktowe`) REFERENCES `danekontaktowe` (`idDaneKontaktowe`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `osobazglaszajaca`
--
ALTER TABLE `osobazglaszajaca`
  ADD CONSTRAINT `fk_OsobaZglaszajaca_DaneKontaktowe1` FOREIGN KEY (`DaneKontaktowe_idDaneKontaktowe`) REFERENCES `danekontaktowe` (`idDaneKontaktowe`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `osobazglaszajaca_has_interwencja`
--
ALTER TABLE `osobazglaszajaca_has_interwencja`
  ADD CONSTRAINT `fk_OsobaZglaszajaca_has_Interwencja_Interwencja1` FOREIGN KEY (`Interwencja_idInterwencja`) REFERENCES `interwencja` (`idInterwencja`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_OsobaZglaszajaca_has_Interwencja_OsobaZglaszajaca1` FOREIGN KEY (`OsobaZglaszajaca_idOsobaZglaszajaca`) REFERENCES `osobazglaszajaca` (`idOsobaZglaszajaca`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pojazdy`
--
ALTER TABLE `pojazdy`
  ADD CONSTRAINT `fk_Pojazdy_Remiza1` FOREIGN KEY (`Remiza_idRemiza`) REFERENCES `remiza` (`idRemiza`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `remiza`
--
ALTER TABLE `remiza`
  ADD CONSTRAINT `fk_Remiza_DaneKontaktowe1` FOREIGN KEY (`DaneKontaktowe_idDaneKontaktowe`) REFERENCES `danekontaktowe` (`idDaneKontaktowe`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `remiza_has_interwencja`
--
ALTER TABLE `remiza_has_interwencja`
  ADD CONSTRAINT `fk_Remiza_has_Interwencja_Interwencja1` FOREIGN KEY (`Interwencja_idInterwencja`) REFERENCES `interwencja` (`idInterwencja`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Remiza_has_Interwencja_Remiza1` FOREIGN KEY (`Remiza_idRemiza`) REFERENCES `remiza` (`idRemiza`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `wydarzenia_has_druch`
--
ALTER TABLE `wydarzenia_has_druch`
  ADD CONSTRAINT `fk_Wydarzenia_has_Druch_Druch1` FOREIGN KEY (`Druch_idDruch`) REFERENCES `druch` (`idDruch`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Wydarzenia_has_Druch_Wydarzenia1` FOREIGN KEY (`Wydarzenia_idWydarzenia`) REFERENCES `wydarzenia` (`idWydarzenia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `wyposazenie`
--
ALTER TABLE `wyposazenie`
  ADD CONSTRAINT `fk_Wyposazenie_Remiza1` FOREIGN KEY (`Remiza_idRemiza`) REFERENCES `remiza` (`idRemiza`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
