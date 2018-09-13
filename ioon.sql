-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table mtpd2.account_journal
DROP TABLE IF EXISTS `account_journal`;
CREATE TABLE IF NOT EXISTS `account_journal` (
  `JOU_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `JOU_CODE` char(30) DEFAULT NULL,
  `JOU_STS` char(1) DEFAULT NULL,
  `JOU_REFF` char(250) DEFAULT NULL,
  `JOU_DATE` date DEFAULT NULL,
  `JOU_INFO` varchar(1024) DEFAULT NULL,
  `JOU_DEBIT` bigint(20) DEFAULT NULL,
  `JOU_CREDIT` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`JOU_ID`),
  KEY `FK_R50` (`USER_ID`),
  KEY `FK_R53` (`BRANCH_ID`),
  CONSTRAINT `FK_R50` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FK_R53` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.account_journal: ~57 rows (approximately)
/*!40000 ALTER TABLE `account_journal` DISABLE KEYS */;
INSERT INTO `account_journal` (`JOU_ID`, `BRANCH_ID`, `USER_ID`, `JOU_CODE`, `JOU_STS`, `JOU_REFF`, `JOU_DATE`, `JOU_INFO`, `JOU_DEBIT`, `JOU_CREDIT`) VALUES
	(1, 1, 1, 'JOU/1801/000001', '1', '', '2018-01-04', 'Bayar Uang Makan', NULL, NULL),
	(2, 1, 1, 'JOU/1801/000002', '1', 'REFF001', '2018-01-04', 'Bayar Paket', NULL, NULL),
	(3, 1, 1, 'JOU/1801/000003', '1', 'REFF2', '2018-01-04', 'Bayar Gojek', NULL, NULL),
	(4, 3, 1, 'JOU/1801/000004', '1', 'ref003', '2018-01-05', 'Bayar maintenance AC', NULL, NULL),
	(5, 1, 1, 'JOU/1801/000005', '2', 'ref3030', '2018-01-11', 'Jurnal penyesuaian', NULL, NULL),
	(6, 1, 1, 'JOU/1801/000006', '1', 'ref0391', '2018-01-11', 'Coba banyak entri', NULL, NULL),
	(8, 1, 1, 'JOU/1801/000007', '1', 'ref005', '2018-01-11', 'aaaa', NULL, NULL),
	(9, 1, 1, 'JOU/1801/000008', '1', '09876589', '2018-01-17', 'Biaya internet bulanan', NULL, NULL),
	(10, 1, 1, 'JOU/1801/000009', '1', 'oiu9000', '2018-01-17', 'Pendapatan surabaya', NULL, NULL),
	(11, 1, 1, 'JOU/1801/000010', '1', '', '2018-01-18', 'Gaji tes', NULL, NULL),
	(12, 1, 1, 'JOU/1801/000011', '1', '9ya00', '2018-01-18', 'Bank tes', NULL, NULL),
	(13, 1, 1, 'JOU/1801/000012', '1', 'reff00111', '2018-01-31', 'Pembayaran gaji tukang', NULL, NULL),
	(14, 1, 1, 'JOU/1802/000001', '1', 'REF098765', '2018-02-07', 'Percobaan jurnal lagi', NULL, NULL),
	(15, 1, 1, 'JOU/1802/000002', '1', 'ref555', '2018-02-08', 'bayar sesuatu', NULL, NULL),
	(17, 1, 1, 'JOU/1802/000004', '1', 'ref000111', '2018-02-08', 'aaaa', NULL, NULL),
	(21, 1, 1, 'JOU/1802/000006', '1', 'INV/1802/000001', '2018-02-13', 'Info invoice', NULL, NULL),
	(22, 1, 1, 'JOU/1802/000007', '1', 'INV/1802/000002', '2018-02-13', 'Invoice Pajak Reklame', NULL, NULL),
	(23, 1, 1, 'JOU/1802/000008', '1', 'INV/1802/000003', '2018-02-14', 'Percobaan', NULL, NULL),
	(26, NULL, NULL, 'JOU/1802/000009', '0', NULL, NULL, NULL, NULL, NULL),
	(27, 1, 1, 'JOU/1802/000010', '1', '08666', '2018-02-20', 'Pembayaran piutang untuk invoice INV/1802/000002', NULL, NULL),
	(28, 1, 1, 'JOU/1802/000011', '1', 'INV/1802/000004', '2018-02-20', 'twest', NULL, NULL),
	(29, 1, 1, 'JOU/1802/000012', '1', 'INV/1802/000005', '2018-02-20', 'tesr', NULL, NULL),
	(30, 1, NULL, 'JOU/1802/000013', '0', NULL, NULL, NULL, NULL, NULL),
	(31, NULL, NULL, 'JOU/1802/000014', '0', NULL, NULL, NULL, NULL, NULL),
	(32, 1, 1, 'JOU/1802/000015', '1', 'tesssss', '2018-02-21', 'tes neraca', NULL, NULL),
	(33, 1, 1, 'JOU/1803/000001', '1', 'INV/1803/000001', '2018-03-05', 'Info testing', NULL, NULL),
	(34, 1, 1, 'JOU/1803/000002', '1', 'INV/1803/000002', '2018-03-20', 'aaaaaaaa', NULL, NULL),
	(35, 1, 1, 'JOU/1804/000001', '1', 'KM/1804/000002', '2018-04-12', 'asdfgh', NULL, NULL),
	(36, 1, 1, 'JOU/1804/000002', '1', 'BL/1804/000002', '2018-04-16', 'Jurnal Pembelian dari Frengky', NULL, NULL),
	(39, 1, 1, 'JOU/1804/000003', '1', 'BLG/1804/000002', '2018-04-16', 'Jurnal Pembelian dari PT Maju Jaya', NULL, NULL),
	(40, 1, 1, 'JOU/1804/000004', '1', 'KM/1804/000004', '2018-04-18', 'Kas Masuk tes kas masuk', NULL, NULL),
	(41, 1, 1, 'JOU/1804/000005', '1', 'KK/1804/000003', '2018-04-19', 'Kas Keluar ', NULL, NULL),
	(42, 1, 1, 'JOU/1804/000006', '1', 'KK/1804/000004', '2018-04-20', 'Kas Keluar tes lengkap kas keluar', NULL, NULL),
	(43, 1, 1, 'JOU/1804/000007', '1', 'KK/1804/000005', '2018-04-20', 'Kas Keluar TES', NULL, NULL),
	(44, 1, 1, 'JOU/1804/000008', '1', 'KM/1804/000005', '2018-04-20', 'Kas Masuk tesssss', NULL, NULL),
	(45, 1, 1, 'JOU/1804/000009', '1', 'BM/1804/000002', '2018-04-23', 'Bank Masuk tes bank masuk', NULL, NULL),
	(46, 1, 1, 'JOU/1804/000010', '1', 'BK/1804/000003', '2018-04-25', 'Bank Keluar tes bank keluar', NULL, NULL),
	(47, 1, 1, 'JOU/1804/000011', '1', 'PB/1804/000001', '2018-04-27', 'Jurnal Pembelian dari PT Guna Jaya', NULL, NULL),
	(48, 1, 1, 'JOU/1805/000001', '1', 'KM/1805/000001', '2018-04-19', 'Kas Masuk tes nota gantung masuk', NULL, NULL),
	(49, 1, 1, 'JOU/1805/000002', '1', 'KK/1805/000001', '2018-04-19', 'Kas Keluar Tes nota gantung keluar', NULL, NULL),
	(50, 1, 1, 'JOU/1805/000003', '1', 'KK/1805/000002', '2018-04-18', 'Kas Keluar Tes nota gantung lagi keluar', NULL, NULL),
	(51, 1, 1, 'JOU/1805/000004', '1', 'KK/1701/000003', '2017-01-02', 'Kas Keluar tes minus', NULL, NULL),
	(52, 1, 1, 'JOU/1805/000005', '1', 'BM/1805/000001', '2018-05-15', 'Bank Masuk tes bank masuk edit', NULL, NULL),
	(53, 1, 1, 'JOU/1805/000006', '1', 'BM/1805/000003', '2018-05-15', 'Bank Masuk Tes bank masuk tipe giro', NULL, NULL),
	(54, 1, 1, 'JOU/1805/000007', '1', 'BK/1805/000001', '2018-05-15', 'Bank Keluar tes bank keluar tipe transfer', NULL, NULL),
	(55, 1, 1, 'JOU/1805/000008', '1', 'BK/1805/000002', '2018-05-15', 'Bank Keluar Tes bank keluar tipe giro', NULL, NULL),
	(56, 1, 1, 'JOU/1805/000009', '1', 'GM/1805/000001', '2018-05-18', 'Pencairan Giro ke Bank BCA Surabaya, tes giro masuk', NULL, NULL),
	(57, 1, 1, 'JOU/1806/000001', '1', 'BK/1806/000001', '2018-06-07', 'Bank Keluar tes bank keluar giro', NULL, NULL),
	(58, 1, 1, 'JOU/1806/000002', '1', 'GK/1806/000001', '2018-06-07', 'Pencairan Giro dari Bank BCA Surabaya, tes pencairan giro keluar', NULL, NULL),
	(59, 1, 1, 'JOU/1806/000003', '1', 'KM/1806/000001', '2018-06-11', 'Kas Masuk Tes kas masuk juni 001', NULL, NULL),
	(60, 1, 1, 'JOU/1806/000004', '1', 'KK/1806/000001', '2018-06-11', 'Kas Keluar Tes kas keluar juni 001', NULL, NULL),
	(61, 1, 1, 'JOU/1806/000005', '1', 'KK/1806/000002', '2018-06-12', 'Kas Keluar Tes kas baru kas keluar', NULL, NULL),
	(62, 1, 1, 'JOU/1806/000006', '1', 'KM/1806/000002', '2018-06-12', 'Kas Masuk Tes kas baru kas masuk', NULL, NULL),
	(63, 1, 1, 'JOU/1807/000001', '1', 'BL/1807/000001', '2018-07-05', 'Jurnal Pembelian dari Frengky', NULL, NULL),
	(64, 1, 1, 'JOU/1807/000002', '1', 'BL/1807/000002', '2018-07-05', 'Jurnal Pembelian dari PT Guna Jaya', NULL, NULL),
	(65, 1, 1, 'JOU/1807/000003', '1', 'BL/1807/000003', '2018-07-05', 'Jurnal Pembelian dari PT Maju Jaya', NULL, NULL),
	(66, 1, 1, 'JOU/1807/000004', '1', 'INV/1807/000001', '2018-07-05', 'Invoice : PT Jaya Sekali INV/1807/000001', NULL, NULL),
	(67, 1, 1, 'JOU/1807/000005', '1', 'INV/1807/000002', '2018-07-05', 'Invoice : PT Jaya Sekali INV/1807/000002', NULL, NULL),
	(68, 1, 1, 'JOU/1808/000001', '1', 'BL/1808/000001', '2018-08-14', 'Jurnal Pembelian dari Frengky', NULL, NULL);
/*!40000 ALTER TABLE `account_journal` ENABLE KEYS */;

-- Dumping structure for table mtpd2.appr_cost_det
DROP TABLE IF EXISTS `appr_cost_det`;
CREATE TABLE IF NOT EXISTS `appr_cost_det` (
  `CSTDT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPR_ID` int(11) DEFAULT NULL,
  `CSTDT_CODE` char(100) DEFAULT NULL,
  `CSTDT_AMOUNT` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CSTDT_ID`),
  KEY `FK_R55` (`APPR_ID`),
  CONSTRAINT `FK_R55` FOREIGN KEY (`APPR_ID`) REFERENCES `trx_approvalbill` (`APPR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.appr_cost_det: ~13 rows (approximately)
/*!40000 ALTER TABLE `appr_cost_det` DISABLE KEYS */;
INSERT INTO `appr_cost_det` (`CSTDT_ID`, `APPR_ID`, `CSTDT_CODE`, `CSTDT_AMOUNT`) VALUES
	(1, 1, 'Media Placement', 100000000),
	(2, 2, 'Media Placement', 120000000),
	(3, 3, 'Media Placement', 100000000),
	(4, 4, 'Media Placement', 300000000),
	(5, 5, 'Media Placement', 350000000),
	(6, 6, 'media', 350000000),
	(7, 10, 'Media Placement', 125000000),
	(8, 11, 'Media placement', 125000000),
	(9, 12, 'mmmmm', 120000000),
	(10, 16, 'Media placement', 250000000),
	(11, 17, 'Media placement', 80000000),
	(12, 19, 'media placement', 125000000),
	(13, 7, 'a', 100000000),
	(15, 20, 'aaaaa', 100000000),
	(16, 20, 'a', 100000000),
	(17, 32, 'Media Placement', 100000000);
/*!40000 ALTER TABLE `appr_cost_det` ENABLE KEYS */;

-- Dumping structure for table mtpd2.appr_permit_det
DROP TABLE IF EXISTS `appr_permit_det`;
CREATE TABLE IF NOT EXISTS `appr_permit_det` (
  `APPRPRMT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPR_ID` int(11) DEFAULT NULL,
  `PRMTTYP_ID` int(11) DEFAULT NULL,
  `APPRPRMT_CODE` char(30) DEFAULT NULL,
  `APPRPRMT_INFO` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`APPRPRMT_ID`),
  KEY `FK_R16` (`APPR_ID`),
  KEY `FK_R17` (`PRMTTYP_ID`),
  CONSTRAINT `FK_R16` FOREIGN KEY (`APPR_ID`) REFERENCES `trx_approvalbill` (`APPR_ID`),
  CONSTRAINT `FK_R17` FOREIGN KEY (`PRMTTYP_ID`) REFERENCES `master_permit_type` (`PRMTTYP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.appr_permit_det: ~2 rows (approximately)
/*!40000 ALTER TABLE `appr_permit_det` DISABLE KEYS */;
INSERT INTO `appr_permit_det` (`APPRPRMT_ID`, `APPR_ID`, `PRMTTYP_ID`, `APPRPRMT_CODE`, `APPRPRMT_INFO`) VALUES
	(1, 2, 1, NULL, NULL),
	(2, 3, 1, NULL, NULL),
	(3, 3, 2, NULL, NULL),
	(4, 6, 1, NULL, NULL);
/*!40000 ALTER TABLE `appr_permit_det` ENABLE KEYS */;

-- Dumping structure for table mtpd2.appr_terms_det
DROP TABLE IF EXISTS `appr_terms_det`;
CREATE TABLE IF NOT EXISTS `appr_terms_det` (
  `TERMSDET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPR_ID` int(11) DEFAULT NULL,
  `TERMSDET_CODE` char(30) DEFAULT NULL,
  `TERMSDET_DATE` date DEFAULT NULL,
  `TERMSDET_INFO` char(100) DEFAULT NULL,
  `TERMSDET_PERC` decimal(10,2) DEFAULT NULL,
  `TERMSDET_DPP` bigint(20) DEFAULT NULL,
  `TERMSDET_BBTAX` bigint(20) DEFAULT NULL,
  `TERMSDET_PPN_PERC` decimal(10,2) DEFAULT NULL,
  `TERMSDET_PPH_PERC` decimal(10,2) DEFAULT NULL,
  `TERMSDET_PPN_SUM` int(11) DEFAULT NULL,
  `TERMSDET_PPH_SUM` int(11) DEFAULT NULL,
  `TERMSDET_SUB` bigint(20) DEFAULT NULL,
  `TERMSDET_SUM` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`TERMSDET_ID`),
  KEY `FK_R15` (`APPR_ID`),
  CONSTRAINT `FK_R15` FOREIGN KEY (`APPR_ID`) REFERENCES `trx_approvalbill` (`APPR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.appr_terms_det: ~19 rows (approximately)
/*!40000 ALTER TABLE `appr_terms_det` DISABLE KEYS */;
INSERT INTO `appr_terms_det` (`TERMSDET_ID`, `APPR_ID`, `TERMSDET_CODE`, `TERMSDET_DATE`, `TERMSDET_INFO`, `TERMSDET_PERC`, `TERMSDET_DPP`, `TERMSDET_BBTAX`, `TERMSDET_PPN_PERC`, `TERMSDET_PPH_PERC`, `TERMSDET_PPN_SUM`, `TERMSDET_PPH_SUM`, `TERMSDET_SUB`, `TERMSDET_SUM`) VALUES
	(1, 1, 'Tahap 1', '2017-12-22', 'Setelah Approval', 50.00, 45000000, 5500000, 10.00, 0.00, 4500000, 0, 45500000, 50000000),
	(2, 1, 'Tahap 2', '2017-12-29', 'Setelah BAPP', 50.00, 45000000, 5500000, 10.00, 0.00, 4500000, 0, 45500000, 50000000),
	(3, 2, 'Tahap 1b', '2017-12-22', 'Setelah Approval', 50.00, 60000000, 500000, 10.00, 0.00, 6000000, 0, 60500000, 66500000),
	(4, 2, 'Tahap 2b', '2017-12-29', 'Setelah BAPP', 50.00, 60000000, 500000, 10.00, 0.00, 6000000, 0, 60500000, 66500000),
	(11, 3, 'Tahap 1b', '2017-12-22', 'Setelah Approval', 50.00, 50000000, 500000, 10.00, 0.00, 5000000, 0, 50500000, 55500000),
	(12, 3, 'Tahap 2b', '2017-12-29', 'Setelah BAPP', 50.00, 50000000, 500000, 10.00, 0.00, 5000000, 0, 50500000, 55500000),
	(13, 4, 'tahap 1', '2018-01-25', 'termin 1 setelah approval', 100.00, 243000000, 0, 10.00, 10.00, 24300000, 24300000, 253000000, 253000000),
	(14, 5, 'Tahap 1', '2018-02-15', 'Bayar langsung full', 100.00, 315000000, 70000000, 10.00, 0.00, 31500000, 0, 385000000, 416500000),
	(15, 6, 'termin 1', '2018-02-07', 'setelah approva', 50.00, 157500000, 35000000, 10.00, 0.00, 15750000, 0, 192500000, 208250000),
	(16, 6, 'termin 2', '2018-02-07', 'setelah bapp', 50.00, 157500000, 35000000, 10.00, 0.00, 15750000, 0, 192500000, 208250000),
	(17, 10, 'Termin 1', '2018-02-28', 'Setelah bapp langsung lunas', 100.00, 125000000, 0, 10.00, 0.00, 12500000, 0, 125000000, 137500000),
	(18, 11, 'Termin1', '2018-02-16', 'Setelah BAPP', 100.00, 125000000, 0, 10.00, 0.00, 12500000, 0, 125000000, 137500000),
	(19, 12, 'term1', '2018-02-08', 'ttttttt', 50.00, 60000000, 3500000, 10.00, 0.00, 6000000, 0, 63500000, 69500000),
	(20, 12, 'term2', '2018-02-08', 'ttttttt', 50.00, 60000000, 3500000, 10.00, 0.00, 6000000, 0, 63500000, 69500000),
	(21, 16, 'Termin 1', '2018-02-09', 'Setelah approval', 50.00, 125000000, 10000000, 10.00, 0.00, 12500000, 0, 135000000, 147500000),
	(22, 16, 'Termin 2', '2018-02-16', 'Setelah BAPP', 50.00, 125000000, 10000000, 10.00, 0.00, 12500000, 0, 135000000, 147500000),
	(24, 17, 'Termin 1', '2018-02-28', 'Setelah approval', 100.00, 80000000, 0, 10.00, 0.00, 8000000, 0, 80000000, 88000000),
	(25, 19, 'T1', '2018-03-30', 'Setelah approval', 100.00, 125000000, 15000000, 10.00, 0.00, 12500000, 0, 140000000, 152500000),
	(27, 20, 'T1', '2018-04-30', 'aaaaa', 100.00, 193340000, 10000000, 10.00, 0.00, 19334000, 0, 203340000, 222674000),
	(28, 32, '1', '2018-07-12', '50% setelah pemasangan', 50.00, 50000000, 7500000, 10.00, 0.00, 5000000, 0, 57500000, 62500000),
	(29, 32, '2', '2018-07-26', '50% setelah BAPP', 50.00, 50000000, 7500000, 10.00, 0.00, 5000000, 0, 57500000, 62500000);
/*!40000 ALTER TABLE `appr_terms_det` ENABLE KEYS */;

-- Dumping structure for table mtpd2.bankin_det
DROP TABLE IF EXISTS `bankin_det`;
CREATE TABLE IF NOT EXISTS `bankin_det` (
  `BNKDET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COA_ID` int(11) DEFAULT NULL,
  `BNK_ID` int(11) DEFAULT NULL,
  `BNKDET_INVID` char(30) DEFAULT NULL,
  `BNKDET_TYPE` char(1) DEFAULT NULL,
  `BNKDET_NUM` char(30) DEFAULT NULL,
  `BNKDET_REFF` char(30) DEFAULT NULL,
  `BNKDET_INFO` varchar(1024) DEFAULT NULL,
  `BNKDET_AMOUNT` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`BNKDET_ID`),
  KEY `FK_R101` (`BNK_ID`),
  KEY `FK_R102` (`COA_ID`),
  CONSTRAINT `FK_R101` FOREIGN KEY (`BNK_ID`) REFERENCES `trx_bankin` (`BNK_ID`),
  CONSTRAINT `FK_R102` FOREIGN KEY (`COA_ID`) REFERENCES `chart_of_account` (`COA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.bankin_det: ~10 rows (approximately)
/*!40000 ALTER TABLE `bankin_det` DISABLE KEYS */;
INSERT INTO `bankin_det` (`BNKDET_ID`, `COA_ID`, `BNK_ID`, `BNKDET_INVID`, `BNKDET_TYPE`, `BNKDET_NUM`, `BNKDET_REFF`, `BNKDET_INFO`, `BNKDET_AMOUNT`) VALUES
	(1, 11, 1, NULL, 'G', '123456789', '876533567', 'dfghfgvbvcvh', 1786000000.00),
	(2, 15, 2, NULL, 'G', '9685763567586543', '383525', 'fhdgsfadhgfdg', 14354900000.00),
	(4, 14, 2, NULL, 'G', '756453454352', '2354675665746354', 'vbmnvfbdfs bgvfbdv', 25000000000.00),
	(5, 15, 8, NULL, 'G', '345684635245345', '68546352345', 'gjfhgdfgdfgfgds', 25000000000.00),
	(6, 14, 9, NULL, 'T', '', '', 'test', 150000000000.00),
	(7, 11, 10, NULL, 'G', '245647563', 'INV/1802/000004', 'test', 600000.00),
	(8, 11, 10, NULL, 'G', '245647563', 'INV/1802/000003', 'test', 400000.00),
	(11, 1, 14, '', 'G', '20202020', '', 'tes bank masuk', 100000.00),
	(13, 6, 16, '11', 'T', 'TT', 'INV/1803/000002', 'tes bank masuk', 15000000.00),
	(14, 6, 18, '', 'G', '15052018123', '', 'Tes bank masuk giro', 1000000.00);
/*!40000 ALTER TABLE `bankin_det` ENABLE KEYS */;

-- Dumping structure for table mtpd2.bankin_trxdet
DROP TABLE IF EXISTS `bankin_trxdet`;
CREATE TABLE IF NOT EXISTS `bankin_trxdet` (
  `BNKTRX_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BNK_ID` int(11) DEFAULT NULL,
  `BNKTRX_TYPE` char(1) DEFAULT NULL,
  `BNKTRX_CODE` char(30) DEFAULT NULL,
  `BNKTRX_NUM` char(100) DEFAULT NULL,
  `BNKTRX_DATE` date DEFAULT NULL,
  `BNKTRX_AMOUNT` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`BNKTRX_ID`),
  KEY `FK_R100` (`BNK_ID`),
  CONSTRAINT `FK_R100` FOREIGN KEY (`BNK_ID`) REFERENCES `trx_bankin` (`BNK_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.bankin_trxdet: ~11 rows (approximately)
/*!40000 ALTER TABLE `bankin_trxdet` DISABLE KEYS */;
INSERT INTO `bankin_trxdet` (`BNKTRX_ID`, `BNK_ID`, `BNKTRX_TYPE`, `BNKTRX_CODE`, `BNKTRX_NUM`, `BNKTRX_DATE`, `BNKTRX_AMOUNT`) VALUES
	(1, 1, 'G', NULL, '1234566574635244234', '2018-01-31', 18000000000.00),
	(2, 1, 'G', NULL, '1234566574635244234', '2018-01-31', 18000000000.00),
	(3, 1, 'G', NULL, '1234566574635244234', '2018-01-31', 18000000000.00),
	(4, 2, 'G', NULL, '54348857463254586', '2018-01-31', 5800000000000.00),
	(6, 2, 'G', NULL, '756453454352', '2018-02-06', 25000000000.00),
	(7, 8, 'G', NULL, '345684635245345', '2018-02-06', 25000000000.00),
	(8, 9, 'T', NULL, '', '2018-02-13', 150000000000.00),
	(9, 10, 'G', NULL, '245647563', '2018-02-27', 1000000.00),
	(12, 14, 'G', NULL, '20202020', '2018-04-23', 100000.00),
	(18, 16, 'T', NULL, 'TT', '2018-05-15', 15000000.00),
	(21, 18, 'G', NULL, '15052018123', '2018-05-15', 1000000.00);
/*!40000 ALTER TABLE `bankin_trxdet` ENABLE KEYS */;

-- Dumping structure for table mtpd2.bankout_det
DROP TABLE IF EXISTS `bankout_det`;
CREATE TABLE IF NOT EXISTS `bankout_det` (
  `BNKODET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BNKO_ID` int(11) DEFAULT NULL,
  `COA_ID` int(11) DEFAULT NULL,
  `BNKODET_PRCID` char(30) DEFAULT NULL,
  `BNKODET_TYPE` char(1) DEFAULT NULL,
  `BNKODET_NUM` char(100) DEFAULT NULL,
  `BNKODET_REFF` char(100) DEFAULT NULL,
  `BNKODET_INFO` varchar(1024) DEFAULT NULL,
  `BNKODET_AMOUNT` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`BNKODET_ID`),
  KEY `FK_R120` (`BNKO_ID`),
  KEY `FK_R121` (`COA_ID`),
  CONSTRAINT `FK_R120` FOREIGN KEY (`BNKO_ID`) REFERENCES `trx_bankout` (`BNKO_ID`),
  CONSTRAINT `FK_R121` FOREIGN KEY (`COA_ID`) REFERENCES `chart_of_account` (`COA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.bankout_det: ~10 rows (approximately)
/*!40000 ALTER TABLE `bankout_det` DISABLE KEYS */;
INSERT INTO `bankout_det` (`BNKODET_ID`, `BNKO_ID`, `COA_ID`, `BNKODET_PRCID`, `BNKODET_TYPE`, `BNKODET_NUM`, `BNKODET_REFF`, `BNKODET_INFO`, `BNKODET_AMOUNT`) VALUES
	(1, 1, 14, NULL, 'G', '475697076574', '5746456757463556', 'zxcvbmvfnbcvbvzx', 45000000000.00),
	(2, 2, 14, NULL, 'G', '657645345687463', '6985746352412534', 'dhfghkgjfhdgsgdfgds', 18900000000000.00),
	(3, 9, 5, NULL, 'G', '2345746354', '36475874636465746', 'asdfgdsfgdfghgfh', 75000000000.00),
	(4, 10, 12, NULL, 'G', '', '', 'test', 500000000000.00),
	(5, 11, 15, NULL, 'G', '3467586', 'BL/1801/000004', 'test1', 25000000.00),
	(7, 12, 13, NULL, 'G', '754584', 'BL/1801/000004', 'test1', 1000000.00),
	(12, 16, 24, '', 'G', '23232324', '', 'tes tes', 100000.00),
	(14, 17, 24, '', 'T', 'TT', '', 'tes bank keluar tipe transfer', 1000000.00),
	(16, 18, 24, '', 'G', '20180515123', '', 'tes bank eluar tipe giro', 500000.00),
	(17, 19, 24, '', 'G', 'BB12355', '', 'tes bank keluar giro', 1000000.00);
/*!40000 ALTER TABLE `bankout_det` ENABLE KEYS */;

-- Dumping structure for table mtpd2.bankout_trxdet
DROP TABLE IF EXISTS `bankout_trxdet`;
CREATE TABLE IF NOT EXISTS `bankout_trxdet` (
  `BNKTRXO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BNKO_ID` int(11) DEFAULT NULL,
  `BNKTRXO_TYPE` char(1) DEFAULT NULL,
  `BNKTRXO_CODE` char(30) DEFAULT NULL,
  `BNKTRXO_NUM` char(100) DEFAULT NULL,
  `BNKTRXO_DATE` date DEFAULT NULL,
  `BNKTRXO_AMOUNT` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`BNKTRXO_ID`),
  KEY `FK_R119` (`BNKO_ID`),
  CONSTRAINT `FK_R119` FOREIGN KEY (`BNKO_ID`) REFERENCES `trx_bankout` (`BNKO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.bankout_trxdet: ~10 rows (approximately)
/*!40000 ALTER TABLE `bankout_trxdet` DISABLE KEYS */;
INSERT INTO `bankout_trxdet` (`BNKTRXO_ID`, `BNKO_ID`, `BNKTRXO_TYPE`, `BNKTRXO_CODE`, `BNKTRXO_NUM`, `BNKTRXO_DATE`, `BNKTRXO_AMOUNT`) VALUES
	(1, 1, 'G', NULL, '475697076574', '2018-01-31', 45000000000.00),
	(2, 2, 'G', NULL, '657645345687463', '2018-01-31', 18900000000000.00),
	(3, 9, 'G', NULL, '2345746354', '2018-02-06', 75000000000.00),
	(4, 10, 'G', NULL, '3245678', '2018-02-13', 500000000000.00),
	(5, 11, 'G', NULL, '3467586', '2018-02-27', 25000000.00),
	(6, 12, 'G', NULL, '754584', '2018-02-27', 1000000.00),
	(10, 16, 'G', NULL, '23232324', '2018-04-25', 100000.00),
	(12, 17, 'T', NULL, 'TT', '2018-05-15', 1000000.00),
	(14, 18, 'G', NULL, '20180515123', '2018-05-15', 500000.00),
	(15, 19, 'G', NULL, 'BB12355', '2018-06-07', 1000000.00);
/*!40000 ALTER TABLE `bankout_trxdet` ENABLE KEYS */;

-- Dumping structure for table mtpd2.bapp_details
DROP TABLE IF EXISTS `bapp_details`;
CREATE TABLE IF NOT EXISTS `bapp_details` (
  `DETBAPP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BAPP_ID` int(11) DEFAULT NULL,
  `DETBAPP_IMGNAME` char(250) DEFAULT NULL,
  `DETBAPP_IMGPATH` char(250) DEFAULT NULL,
  `DETBAPP_THUMBS` char(250) DEFAULT NULL,
  PRIMARY KEY (`DETBAPP_ID`),
  KEY `FK_R48` (`BAPP_ID`),
  CONSTRAINT `FK_R48` FOREIGN KEY (`BAPP_ID`) REFERENCES `trx_bapp` (`BAPP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.bapp_details: ~13 rows (approximately)
/*!40000 ALTER TABLE `bapp_details` DISABLE KEYS */;
INSERT INTO `bapp_details` (`DETBAPP_ID`, `BAPP_ID`, `DETBAPP_IMGNAME`, `DETBAPP_IMGPATH`, `DETBAPP_THUMBS`) VALUES
	(3, 1, 'img_1513756777_BA1712000001.jpg', './assets/img/bapp/img_1513756777_BA1712000001.jpg', './assets/img/bapp/thumbs/img_1513756777_BA1712000001.jpg'),
	(4, 1, 'img_1513756778_BA1712000001.jpg', './assets/img/bapp/img_1513756778_BA1712000001.jpg', './assets/img/bapp/thumbs/img_1513756778_BA1712000001.jpg'),
	(5, 1, 'img_1513756778_BA17120000011.jpg', './assets/img/bapp/img_1513756778_BA17120000011.jpg', './assets/img/bapp/thumbs/img_1513756778_BA17120000011.jpg'),
	(6, 1, 'img_1513756779_BA1712000001.jpg', './assets/img/bapp/img_1513756779_BA1712000001.jpg', './assets/img/bapp/thumbs/img_1513756779_BA1712000001.jpg'),
	(7, 2, 'img_1517364490_BA1801000001.jpg', './assets/img/bapp/img_1517364490_BA1801000001.jpg', './assets/img/bapp/thumbs/img_1517364490_BA1801000001.jpg'),
	(8, 2, 'img_1517364492_BA1801000001.jpg', './assets/img/bapp/img_1517364492_BA1801000001.jpg', './assets/img/bapp/thumbs/img_1517364492_BA1801000001.jpg'),
	(9, 3, 'img_1517370524_BA1801000002.jpg', './assets/img/bapp/img_1517370524_BA1801000002.jpg', './assets/img/bapp/thumbs/img_1517370524_BA1801000002.jpg'),
	(10, 3, 'img_1517370524_BA18010000021.jpg', './assets/img/bapp/img_1517370524_BA18010000021.jpg', './assets/img/bapp/thumbs/img_1517370524_BA18010000021.jpg'),
	(11, 16, 'img_1518491585_BA1802000002.jpg', './assets/img/bapp/img_1518491585_BA1802000002.jpg', './assets/img/bapp/thumbs/img_1518491585_BA1802000002.jpg'),
	(12, 16, 'img_1518491586_BA1802000002.jpg', './assets/img/bapp/img_1518491586_BA1802000002.jpg', './assets/img/bapp/thumbs/img_1518491586_BA1802000002.jpg'),
	(13, 16, 'img_1518491586_BA18020000021.jpg', './assets/img/bapp/img_1518491586_BA18020000021.jpg', './assets/img/bapp/thumbs/img_1518491586_BA18020000021.jpg'),
	(14, 16, 'img_1518491587_BA1802000002.jpg', './assets/img/bapp/img_1518491587_BA1802000002.jpg', './assets/img/bapp/thumbs/img_1518491587_BA1802000002.jpg');
/*!40000 ALTER TABLE `bapp_details` ENABLE KEYS */;

-- Dumping structure for table mtpd2.brcppn_details
DROP TABLE IF EXISTS `brcppn_details`;
CREATE TABLE IF NOT EXISTS `brcppn_details` (
  `BPPNDET_ID` int(11) NOT NULL,
  `BPPN_ID` int(11) DEFAULT NULL,
  `BPPNDET_CODE` char(30) DEFAULT NULL,
  `BPPNDET_INVID` int(11) DEFAULT NULL,
  `BPPNDET_INVCODE` char(30) DEFAULT NULL,
  `BPPNDET_INVDPP` bigint(20) DEFAULT NULL,
  `BPPNDET_INVPPN` bigint(20) DEFAULT NULL,
  `BPPNDET_INVSUM` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`BPPNDET_ID`),
  KEY `BPPNDETFK1` (`BPPN_ID`),
  CONSTRAINT `BPPNDETFK1` FOREIGN KEY (`BPPN_ID`) REFERENCES `trx_brc_ppn` (`BPPN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.brcppn_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `brcppn_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `brcppn_details` ENABLE KEYS */;

-- Dumping structure for table mtpd2.budget_det
DROP TABLE IF EXISTS `budget_det`;
CREATE TABLE IF NOT EXISTS `budget_det` (
  `BUDDET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COA_ID` int(11) DEFAULT NULL,
  `BUD_ID` int(11) DEFAULT NULL,
  `BUDDET_CODE` char(30) DEFAULT NULL,
  `BUDDET_INFO` varchar(1024) DEFAULT NULL,
  `BUDDET_SUM` bigint(20) DEFAULT NULL,
  `BUDDET_AMOUNT` bigint(20) DEFAULT NULL,
  `BUDDET_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`BUDDET_ID`),
  KEY `FK_R106` (`BUD_ID`),
  KEY `FK_R107` (`COA_ID`),
  CONSTRAINT `FK_R106` FOREIGN KEY (`BUD_ID`) REFERENCES `trx_budget` (`BUD_ID`),
  CONSTRAINT `FK_R107` FOREIGN KEY (`COA_ID`) REFERENCES `chart_of_account` (`COA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.budget_det: ~2 rows (approximately)
/*!40000 ALTER TABLE `budget_det` DISABLE KEYS */;
INSERT INTO `budget_det` (`BUDDET_ID`, `COA_ID`, `BUD_ID`, `BUDDET_CODE`, `BUDDET_INFO`, `BUDDET_SUM`, `BUDDET_AMOUNT`, `BUDDET_DTSTS`) VALUES
	(1, 12, 1, NULL, 'asdfgfhgdfsdd', 1, 500000000000, NULL),
	(2, 13, 2, NULL, 'hkjghfgdfsfghfhd', 2, 1500000000, NULL),
	(3, 15, 3, NULL, 'nmhgnhfbgdfgdd', 1, 2100000000000, NULL),
	(4, 15, 4, NULL, 'test', 1, 1500000000000, NULL);
/*!40000 ALTER TABLE `budget_det` ENABLE KEYS */;

-- Dumping structure for table mtpd2.buku_bank
DROP TABLE IF EXISTS `buku_bank`;
CREATE TABLE IF NOT EXISTS `buku_bank` (
  `BNKBOOK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `BRANCH_ID` int(11) NOT NULL,
  `BNK_ID` int(11) NOT NULL,
  `BNK_CODE` varchar(20) NOT NULL,
  `BNK_DATE` date NOT NULL,
  `COA_ID` int(11) NOT NULL,
  `ACC` char(200) NOT NULL,
  `BNK_INFO` varchar(1024) NOT NULL,
  `BNK_AMOUNT` bigint(20) NOT NULL,
  PRIMARY KEY (`BNKBOOK_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.buku_bank: ~25 rows (approximately)
/*!40000 ALTER TABLE `buku_bank` DISABLE KEYS */;
INSERT INTO `buku_bank` (`BNKBOOK_ID`, `USER_ID`, `BRANCH_ID`, `BNK_ID`, `BNK_CODE`, `BNK_DATE`, `COA_ID`, `ACC`, `BNK_INFO`, `BNK_AMOUNT`) VALUES
	(1, 1, 0, 0, 'BM/1712/000001', '2018-01-11', 7, '003002', 'fhwarfgdhdhshdh', 20000000000),
	(2, 1, 0, 0, 'BM/1712/000001', '2018-01-11', 6, '003001', 'gfdfjjsjsss', 500000000000),
	(3, 1, 0, 0, 'BK/1712/000001', '2018-01-11', 7, '003002', 'dsdsgdsgsgsd', 200000000000),
	(5, 1, 0, 0, 'BK/1712/000001', '2018-01-11', 5, '002003', 'dgdfdhdhdhdfhdhfd', 200000000000),
	(6, 1, 0, 0, 'BM/1801/000001', '2018-01-31', 11, '005003', 'dfghfgvbvcvh', 1786000000),
	(7, 1, 0, 0, 'BM/1801/000002', '2018-01-31', 15, '008001', 'fhdgsfadhgfdg', 14354900000),
	(8, 1, 0, 0, 'BK/1801/000001', '2018-01-31', 14, '002003', 'zxcvbmvfnbcvbvzx', 45000000000),
	(9, 1, 0, 0, 'BK/1801/000002', '2018-01-31', 14, '002003', 'dhfghkgjfhdgsgdfgds', 18900000000000),
	(10, 1, 0, 0, 'BM/1802/000001', '2018-02-06', 11, '005003', 'fhbdsfadfgdsfa', 50000000000),
	(11, 1, 0, 0, 'BM/1802/000001', '2018-02-06', 14, '002003', 'vbmnvfbdfs bgvfbdv', 25000000000),
	(12, 1, 0, 0, 'BM/1802/000002', '2018-02-06', 15, '008001', 'gjfhgdfgdfgfgds', 25000000000),
	(13, 1, 0, 0, 'BK/1802/000007', '2018-02-06', 5, '003001', 'asdfgdsfgdfghgfh', 75000000000),
	(14, 1, 0, 0, 'BM/1802/000003', '2018-02-13', 14, '002003', 'test', 150000000000),
	(15, 1, 0, 0, 'BK/1802/000008', '2018-02-13', 12, '006001', 'test', 500000000000),
	(16, 1, 0, 0, 'BM/1802/000004', '2018-02-27', 11, '005003 - Pendapatan Media Dite', 'test', 600000),
	(17, 1, 0, 0, 'BM/1802/000004', '2018-02-27', 11, '005003 - Pendapatan Media Dite', 'test', 400000),
	(18, 1, 0, 0, 'BK/1802/000009', '2018-02-27', 15, '008001 - Pajak Dibayar Dimuka', 'test1', 25000000),
	(19, 1, 0, 0, 'BK/1802/000010', '2018-02-27', 13, '007001 - Biaya Internet', 'test1', 1000000),
	(20, 1, 0, 0, 'BK/1802/000010', '2018-02-27', 13, '007001 - Biaya Internet', 'test1', 1000000),
	(21, 1, 1, 14, 'BM/1804/000002', '2018-04-23', 1, '001001 - Kas Surabaya', 'tes', 1000000),
	(23, 1, 1, 14, 'BM/1804/000002', '2018-04-23', 1, '001001 - Kas Surabaya', 'tes bank masuk', 100000),
	(26, 1, 1, 16, 'BK/1804/000003', '2018-04-25', 24, '5120004 - Biaya Kantor Lain-Lain', 'tes tes', 100000),
	(28, 1, 1, 16, 'BM/1805/000001', '2018-05-15', 6, '004001 - Piutang Usaha Outdoor', 'tes bank masuk', 15000000),
	(29, 1, 1, 18, 'BM/1805/000003', '2018-05-15', 6, '004001 - Piutang Usaha Outdoor', 'Tes bank masuk giro', 1000000),
	(31, 1, 1, 17, 'BK/1805/000001', '2018-05-15', 24, '5120004 - Biaya Kantor Lain-Lain', 'tes bank keluar tipe transfer', 1000000),
	(33, 1, 1, 18, 'BK/1805/000002', '2018-05-15', 24, '5120004 - Biaya Kantor Lain-Lain', 'tes bank eluar tipe giro', 500000),
	(34, 1, 1, 19, 'BK/1806/000001', '2018-06-07', 24, '5120004 - Biaya Kantor Lain-Lain', 'tes bank keluar giro', 1000000);
/*!40000 ALTER TABLE `buku_bank` ENABLE KEYS */;

-- Dumping structure for table mtpd2.buku_giro
DROP TABLE IF EXISTS `buku_giro`;
CREATE TABLE IF NOT EXISTS `buku_giro` (
  `GRBOOK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `BRANCH_ID` int(11) NOT NULL,
  `BANK_ID` int(11) NOT NULL,
  `REFF_ID` char(50) NOT NULL,
  `BNK_CODE` varchar(20) NOT NULL,
  `GR_NUMBER` varchar(20) NOT NULL,
  `CUST_SUPP_ID` int(11) NOT NULL,
  `RECEIVE_DATE` date NOT NULL,
  `GR_DATE` date NOT NULL,
  `GR_CODE` varchar(20) DEFAULT NULL,
  `CAIR_DATE` date DEFAULT NULL,
  `CAIR_STS` int(11) NOT NULL,
  `BLOKIR_STS` int(11) NOT NULL,
  `GR_AMOUNT` int(11) NOT NULL,
  PRIMARY KEY (`GRBOOK_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.buku_giro: ~22 rows (approximately)
/*!40000 ALTER TABLE `buku_giro` DISABLE KEYS */;
INSERT INTO `buku_giro` (`GRBOOK_ID`, `USER_ID`, `BRANCH_ID`, `BANK_ID`, `REFF_ID`, `BNK_CODE`, `GR_NUMBER`, `CUST_SUPP_ID`, `RECEIVE_DATE`, `GR_DATE`, `GR_CODE`, `CAIR_DATE`, `CAIR_STS`, `BLOKIR_STS`, `GR_AMOUNT`) VALUES
	(7, 1, 1, 1, '', 'BM/1712/000001', '222', 1, '2018-01-15', '2018-01-03', 'GK/1801/000001', '2018-01-31', 1, 0, 222222),
	(8, 1, 1, 1, '', 'BM/1712/000001', '678576367', 1, '2018-01-15', '2018-01-03', 'GK/1801/000001', '2018-01-31', 1, 0, 100001111),
	(9, 1, 1, 1, '', 'BM/1712/000001', '53675746354', 1, '2018-01-15', '2018-01-03', 'GK/1801/000001', '2018-01-31', 1, 0, 100001111),
	(10, 1, 1, 1, '', 'BK/1712/000001', '36456543', 1, '2018-01-16', '2017-12-20', 'GK/1801/000001', '2018-01-31', 1, 0, 2147483647),
	(11, 1, 1, 1, '', 'BK/1712/000001', '2434568574635253', 1, '2018-01-16', '2018-01-05', 'GK/1801/000001', '2018-01-31', 1, 0, 120000000),
	(12, 1, 1, 1, '', 'BM/1801/000001', '1234566574635244234', 2, '2018-01-31', '2018-01-31', 'GK/1801/000001', '2018-01-31', 1, 0, 2147483647),
	(13, 1, 1, 1, '', 'BM/1801/000002', '54348857463254586', 1, '2018-01-31', '2018-01-31', 'GM/1802/000002', '2018-02-06', 1, 0, 2147483647),
	(14, 1, 1, 1, '', 'BK/1801/000001', '475697076574', 1, '2018-01-31', '2018-01-31', 'GK/1802/000001', '2018-02-06', 1, 0, 2147483647),
	(15, 1, 1, 2, '', 'BK/1801/000002', '657645345687463', 1, '2018-01-31', '2018-01-31', 'GK/1802/000002', '2018-02-06', 1, 0, 2147483647),
	(16, 1, 1, 2, '', 'BM/1802/000001', '46534236475876', 4, '2018-02-06', '2018-02-06', NULL, NULL, 0, 0, 2147483647),
	(17, 1, 1, 9, '', 'BM/1802/000001', '756453454352', 0, '2018-02-06', '2018-02-06', 'GM/1802/000001', '2018-02-06', 1, 0, 2147483647),
	(18, 1, 1, 2, '', 'BM/1802/000002', '345684635245345', 4, '2018-02-06', '2018-02-06', 'GM/1802/000003', '2018-02-13', 1, 0, 2147483647),
	(19, 1, 1, 1, '', 'BK/1802/000007', '2345746354', 2, '2018-02-06', '2018-02-06', NULL, NULL, 0, 0, 2147483647),
	(20, 1, 1, 2, '', 'BK/1802/000008', '3245678', 2, '2018-02-13', '2018-02-13', 'GK/1802/000003', '2018-02-13', 1, 0, 2147483647),
	(21, 1, 1, 1, '', 'BM/1802/000004', '245647563', 2, '2018-02-27', '2018-02-27', NULL, NULL, 0, 0, 1000000),
	(22, 1, 1, 1, '', 'BK/1802/000009', '3467586', 2, '2018-02-27', '2018-02-27', NULL, NULL, 0, 0, 25000000),
	(23, 1, 1, 1, '', 'BK/1802/000010', '754584', 2, '2018-02-27', '2018-02-27', NULL, NULL, 0, 0, 1000000),
	(26, 1, 1, 1, '', 'BM/1804/000002', '20202020', 1, '2018-04-23', '2018-04-23', NULL, NULL, 0, 0, 100000),
	(30, 1, 1, 16, '', 'BK/1804/000003', '23232324', 3, '2018-04-25', '2018-04-25', NULL, NULL, 0, 0, 100000),
	(32, 1, 1, 1, '', 'BM/1805/000001', 'TT', 4, '2018-05-15', '2018-05-15', NULL, NULL, 0, 0, 1000000),
	(35, 1, 1, 1, '', 'BM/1805/000003', '15052018123', 1, '2018-05-15', '2018-05-15', 'GM/1805/000001', '2018-06-25', 1, 0, 1000000),
	(37, 1, 1, 18, '', 'BK/1805/000002', '20180515123', 0, '2018-05-15', '2018-05-15', NULL, NULL, 0, 0, 500000),
	(38, 1, 1, 19, '', 'BK/1806/000001', 'BB12355', 0, '2018-06-07', '2018-06-07', 'GK/1806/000001', '2018-06-25', 1, 0, 1000000);
/*!40000 ALTER TABLE `buku_giro` ENABLE KEYS */;

-- Dumping structure for table mtpd2.buku_kas
DROP TABLE IF EXISTS `buku_kas`;
CREATE TABLE IF NOT EXISTS `buku_kas` (
  `CSHBOOK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CSH_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `CSH_CODE` varchar(20) NOT NULL,
  `CSH_DATE` date NOT NULL,
  `COA_ID` int(11) NOT NULL,
  `ACC` char(200) NOT NULL,
  `CSH_INFO` varchar(1024) NOT NULL,
  `CSH_AMOUNT` bigint(20) NOT NULL,
  PRIMARY KEY (`CSHBOOK_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.buku_kas: ~29 rows (approximately)
/*!40000 ALTER TABLE `buku_kas` DISABLE KEYS */;
INSERT INTO `buku_kas` (`CSHBOOK_ID`, `CSH_ID`, `USER_ID`, `BRANCH_ID`, `CSH_CODE`, `CSH_DATE`, `COA_ID`, `ACC`, `CSH_INFO`, `CSH_AMOUNT`) VALUES
	(12, 1, 1, 1, 'KM/1712/000001', '2018-01-09', 5, '002003', 'aaaa', 1111),
	(13, 2, 2, 2, 'KM/1712/000001', '2018-01-09', 6, '003001', 'sdfghfhdsafsdbsav', 2147483647),
	(14, 1, 1, 1, 'KK/1712/000001', '2018-01-09', 5, '002002', 'fdghghfgdfgn', 2147483647),
	(15, 1, 1, 1, 'KM/1801/000001', '2018-01-31', 14, '002003', 'asdfgjfhdgsfadfsd', 15000000000),
	(16, 1, 1, 1, 'KM/1801/000001', '2018-01-31', 14, '002003', 'asdfgjfhdgsfadfsd', 15000000000),
	(17, 1, 1, 1, 'KM/1801/000001', '2018-01-31', 14, '002003', 'asdfgjfdsadasdf', 15000000000),
	(18, 1, 1, 1, 'KM/1801/000002', '2018-01-31', 11, '005003', 'sdfzdxbvvdbxbzs', 12000000),
	(19, 1, 1, 1, 'KK/1801/000001', '2018-01-31', 9, '005001', 'kjsjdggdhgdfghgfdg', 175000000000),
	(20, 1, 1, 1, 'KK/1801/000001', '2018-01-31', 9, '005001', 'kjsjdggdhgdfghgfdg', 175000000000),
	(21, 1, 1, 1, 'KK/1801/000002', '2018-01-31', 10, '005002', 'jhgfdasdfdsfaf', 15000000),
	(22, 1, 1, 1, 'KM/1802/000001', '2018-02-06', 14, '002003', 'jhgfgfkjhgbnbv ', 12000000000000),
	(23, 1, 1, 1, 'KM/1802/000002', '2018-02-06', 14, '002003', 'dhgfmgfdggnf', 2500000000000),
	(24, 1, 1, 1, 'KK/1802/000001', '2018-02-06', 15, '008001', 'hdgsfasdfngsf', 170000000000),
	(25, 1, 1, 1, 'KK/1802/000002', '2018-02-06', 13, '007001', 'hgjfhdgsfmnbzv', 120000000),
	(26, 1, 1, 1, 'KM/1802/000004', '2018-02-13', 14, '002003', 'test', 1500000000),
	(27, 1, 1, 1, 'KK/1802/000003', '2018-02-13', 14, '002003', 'test', 10000000),
	(28, 1, 1, 1, 'KM/1802/000005', '2018-02-27', 11, '005003 - Pendapatan Media Dite', 'test1', 1000000),
	(29, 1, 1, 1, 'KK/1802/000004', '2018-02-27', 12, '006001 - Pengeluaran Surabaya', 'test1', 1000000),
	(30, 33, 1, 1, 'KM/1804/000002', '2018-04-02', 13, '007001 - Biaya Internet', 'aaaaa', 100000),
	(31, 33, 1, 1, 'KM/1804/000002', '2018-04-12', 11, '005003 - Pendapatan Media Dite', 'asdfh', 15000000),
	(32, 35, 1, 1, 'KM/1804/000004', '2018-04-18', 7, '004002 - Piutang Usaha Pajak Reklame', 'tes kas masuk', 10000000),
	(33, 30, 1, 1, 'KK/1804/000003', '2018-04-19', 24, '5120004 - Biaya Kantor Lain-Lain', 'Keterangan Biaya', 100000),
	(34, 31, 1, 1, 'KK/1804/000004', '2018-04-20', 24, '5120004 - Biaya Kantor Lain-Lain', 'tes lengkap kas keluar', 5500000),
	(35, 32, 1, 1, 'KK/1804/000005', '2018-04-20', 24, '5120004 - Biaya Kantor Lain-Lain', 'TES', 10000),
	(36, 36, 1, 1, 'KM/1804/000005', '2018-04-20', 24, '5120004 - Biaya Kantor Lain-Lain', 'tes', 10000),
	(37, 37, 1, 1, 'KM/1805/000001', '2018-04-20', 25, '1110014 - NOTA GANTUNG', 'tes nota gantung masuk', 100000),
	(39, 33, 1, 1, 'KK/1805/000001', '2018-04-20', 25, '1110014 - NOTA GANTUNG', 'tes nota gantung keluar', 100000),
	(40, 34, 1, 1, 'KK/1805/000002', '2018-04-18', 25, '1110014 - NOTA GANTUNG', 'tes nota gantung lagi keluar', 50000),
	(41, 35, 1, 1, 'KK/1701/000003', '2017-01-02', 25, '1110014 - NOTA GANTUNG', 'tes minus', 100000),
	(42, 38, 1, 1, 'KM/1806/000001', '2018-06-11', 25, '1110014 - NOTA GANTUNG', 'tes kas masuk nota gantung juni 001', 100000),
	(43, 36, 1, 1, 'KK/1806/000001', '2018-06-11', 25, '1110014 - NOTA GANTUNG', 'tes kas keluar nota gantung juni 001', 100000),
	(44, 37, 1, 1, 'KK/1806/000002', '2018-06-12', 25, '1110014 - NOTA GANTUNG', 'Tes kas baru kas keluar detail', 100000),
	(45, 39, 1, 1, 'KM/1806/000002', '2018-06-12', 25, '1110014 - NOTA GANTUNG', 'Tes kas baru kas masuk detail', 100000);
/*!40000 ALTER TABLE `buku_kas` ENABLE KEYS */;

-- Dumping structure for table mtpd2.cashin_det
DROP TABLE IF EXISTS `cashin_det`;
CREATE TABLE IF NOT EXISTS `cashin_det` (
  `CSHINDET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CSH_ID` int(11) DEFAULT NULL,
  `COA_ID` int(11) DEFAULT NULL,
  `CASHINDET_INVID` char(30) DEFAULT NULL,
  `CSHINDET_REFF` char(30) DEFAULT NULL,
  `CSHINDET_INFO` varchar(1024) DEFAULT NULL,
  `CSHDETIN_AMOUNT` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`CSHINDET_ID`),
  KEY `FK_R93` (`CSH_ID`),
  KEY `FK_R94` (`COA_ID`),
  CONSTRAINT `FK_R93` FOREIGN KEY (`CSH_ID`) REFERENCES `trx_cash_in` (`CSH_ID`),
  CONSTRAINT `FK_R94` FOREIGN KEY (`COA_ID`) REFERENCES `chart_of_account` (`COA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.cashin_det: ~12 rows (approximately)
/*!40000 ALTER TABLE `cashin_det` DISABLE KEYS */;
INSERT INTO `cashin_det` (`CSHINDET_ID`, `CSH_ID`, `COA_ID`, `CASHINDET_INVID`, `CSHINDET_REFF`, `CSHINDET_INFO`, `CSHDETIN_AMOUNT`) VALUES
	(7, 12, 14, NULL, '7546352453454', 'asdfgjfdsadasdf', 15000000000.00),
	(8, 13, 11, NULL, '2345687463524534', 'sdfzdxbvvdbxbzs', 12000000.00),
	(9, 14, 14, NULL, '7654345678676', 'jhgfgfkjhgbnbv ', 12000000000000.00),
	(10, 15, 14, NULL, '6564547664763', 'dhgfmgfdggnf', 2500000000000.00),
	(11, 17, 14, NULL, '', 'test', 1500000000.00),
	(12, 18, 11, NULL, 'INV/1802/000004', 'test1', 1000000.00),
	(13, 33, 11, '11', 'INV/1803/000002', 'asdfh', 15000000.00),
	(14, 35, 7, '5', 'INV/1802/000002', 'tes kas masuk', 10000000.00),
	(15, 36, 24, '', '', 'tes', 10000.00),
	(16, 37, 25, '', '', 'tes nota gantung masuk detail', 100000.00),
	(17, 38, 25, '', '', 'tes kas masuk nota gantung juni 001', 100000.00),
	(18, 39, 25, '', '', 'Tes kas baru kas masuk detail', 100000.00);
/*!40000 ALTER TABLE `cashin_det` ENABLE KEYS */;

-- Dumping structure for table mtpd2.cashout_det
DROP TABLE IF EXISTS `cashout_det`;
CREATE TABLE IF NOT EXISTS `cashout_det` (
  `CSHODET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CSHO_ID` int(11) DEFAULT NULL,
  `COA_ID` int(11) DEFAULT NULL,
  `CSHODET_PRCID` char(30) DEFAULT NULL,
  `CSHODET_REFF` char(30) DEFAULT NULL,
  `CSHODET_INFO` varchar(1024) DEFAULT NULL,
  `CSHODET_AMOUNT` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`CSHODET_ID`),
  KEY `FK_R127` (`COA_ID`),
  KEY `FK_R98` (`CSHO_ID`),
  CONSTRAINT `FK_R127` FOREIGN KEY (`COA_ID`) REFERENCES `chart_of_account` (`COA_ID`),
  CONSTRAINT `FK_R98` FOREIGN KEY (`CSHO_ID`) REFERENCES `trx_cash_out` (`CSHO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.cashout_det: ~12 rows (approximately)
/*!40000 ALTER TABLE `cashout_det` DISABLE KEYS */;
INSERT INTO `cashout_det` (`CSHODET_ID`, `CSHO_ID`, `COA_ID`, `CSHODET_PRCID`, `CSHODET_REFF`, `CSHODET_INFO`, `CSHODET_AMOUNT`) VALUES
	(7, 15, 15, NULL, '23454635243', 'hdgsfasdfngsf', 170000000000.00),
	(8, 16, 13, NULL, '6857463545', 'hgjfhdgsfmnbzv', 120000000.00),
	(9, 17, 14, NULL, '', 'test', 10000000.00),
	(10, 18, 12, NULL, 'BL/1802/000001', 'test1', 1000000.00),
	(11, 30, 24, '', '', 'Keterangan Biaya', 100000.00),
	(12, 31, 24, '19', 'BL/1804/000002', 'tes lengkap kas keluar', 5500000.00),
	(13, 32, 24, '', '', 'TES', 10000.00),
	(15, 33, 25, '', '', 'tes nota gantung keluar', 100000.00),
	(16, 34, 25, '', '', 'tes nota gantung lagi keluar', 50000.00),
	(17, 35, 25, '', '', 'tes minus', 100000.00),
	(18, 36, 25, '', '', 'tes kas keluar nota gantung juni 001', 100000.00),
	(19, 37, 25, '', '', 'Tes kas baru kas keluar detail', 100000.00);
/*!40000 ALTER TABLE `cashout_det` ENABLE KEYS */;

-- Dumping structure for table mtpd2.chart_of_account
DROP TABLE IF EXISTS `chart_of_account`;
CREATE TABLE IF NOT EXISTS `chart_of_account` (
  `COA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PAR_ID` int(11) DEFAULT NULL,
  `COA_ACC` char(30) DEFAULT NULL,
  `COA_ACCNAME` char(100) DEFAULT NULL,
  `COA_OWNER` char(100) DEFAULT NULL,
  `COA_DEBIT` bigint(20) DEFAULT NULL,
  `COA_CREDIT` bigint(20) DEFAULT NULL,
  `COA_SALDO` bigint(20) DEFAULT NULL,
  `COA_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`COA_ID`),
  KEY `FK_R49` (`PAR_ID`),
  CONSTRAINT `FK_R49` FOREIGN KEY (`PAR_ID`) REFERENCES `parent_chart` (`PAR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.chart_of_account: ~28 rows (approximately)
/*!40000 ALTER TABLE `chart_of_account` DISABLE KEYS */;
INSERT INTO `chart_of_account` (`COA_ID`, `PAR_ID`, `COA_ACC`, `COA_ACCNAME`, `COA_OWNER`, `COA_DEBIT`, `COA_CREDIT`, `COA_SALDO`, `COA_DTSTS`) VALUES
	(1, 1, '001001', 'Kas Surabaya', NULL, 25000000, 0, 0, '1'),
	(2, 1, '001002', 'Kas Jakarta', NULL, 0, 0, 0, '1'),
	(3, 2, '002001', 'Bank BCA Surabaya', NULL, 100000, 0, 0, '1'),
	(4, 2, '002002', 'Bank BCA Jakarta', NULL, 0, 0, 0, '1'),
	(5, 3, '003001', 'Gaji Surabaya', NULL, 0, 0, 0, '1'),
	(6, 4, '004001', 'Piutang Usaha Outdoor', NULL, 0, 0, 0, '1'),
	(7, 4, '004002', 'Piutang Usaha Pajak Reklame', NULL, 0, 0, 0, '1'),
	(8, 4, '004003', 'Piutang Usaha Media', NULL, 0, 0, 0, '1'),
	(9, 5, '005001', 'Pendapatan Outdoor Diterima Dimuka', NULL, 0, 0, 0, '1'),
	(10, 5, '005002', 'Pendapatan Pajak Reklame  Diterima Dimuka', NULL, 0, 0, 0, '1'),
	(11, 5, '005003', 'Pendapatan Media Diterima Dimuka', NULL, 0, 0, 0, '1'),
	(12, 6, '006001', 'Pengeluaran Surabaya', NULL, 0, 0, 0, '1'),
	(13, 7, '007001', 'Biaya Internet', NULL, 0, 0, 0, '1'),
	(14, 2, '002003', 'Bank BNI Surabaya', NULL, 0, 0, 0, '1'),
	(15, 8, '008001', 'Pajak Dibayar Dimuka', NULL, 0, 0, 0, '1'),
	(16, 10, '234567', 'kas besar', NULL, 0, 0, 0, '1'),
	(21, NULL, NULL, NULL, NULL, 0, NULL, NULL, '3'),
	(22, 11, '5100001', 'HPP/PEMBELIAN', NULL, 0, 0, 0, '1'),
	(23, 12, '2120001', 'Hutang Usaha', NULL, 0, 0, 0, '1'),
	(24, 13, '5120004', 'Biaya Kantor Lain-Lain', NULL, 0, 0, 0, '1'),
	(25, 10, '1110014', 'NOTA GANTUNG', NULL, 0, 0, 0, '1'),
	(26, 12, '2120005', 'HUTANG GIRO', NULL, 0, 0, 0, '1'),
	(27, 14, '1130004', 'PIUTANG GIRO', NULL, 0, 0, 0, '1'),
	(28, 1, '1110009', 'KAS BARU', NULL, 1000000, 0, 0, '1'),
	(29, 11, '5100006', 'ONGKOS KIRIM PEMBELIAN', NULL, 0, 0, 0, '1'),
	(30, 11, '5100002', 'POTONGAN PEMBELIAN', NULL, 0, 0, 0, '1'),
	(31, 15, '1190007', 'PPN MASUKAN BELUM DIFAKTURKAN', NULL, 0, 0, 0, '1'),
	(32, 12, '2120004', 'HUTANG PAJAK PPN KELUARAN', NULL, 0, 0, 0, '1');
/*!40000 ALTER TABLE `chart_of_account` ENABLE KEYS */;

-- Dumping structure for table mtpd2.giroin_det
DROP TABLE IF EXISTS `giroin_det`;
CREATE TABLE IF NOT EXISTS `giroin_det` (
  `GRINDET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GRIN_ID` int(11) DEFAULT NULL,
  `GIR_ID` int(11) DEFAULT NULL,
  `GRINDET_CODE` char(30) DEFAULT NULL,
  `GRINDET_DATE` date DEFAULT NULL,
  `GRINDET_INFO` varchar(1024) DEFAULT NULL,
  `GRINDET_AMOUNT` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`GRINDET_ID`),
  KEY `FK_R133` (`GRIN_ID`),
  KEY `FKGIRDET1` (`GIR_ID`),
  CONSTRAINT `FKGIRDET1` FOREIGN KEY (`GIR_ID`) REFERENCES `giroin_record` (`GIR_ID`),
  CONSTRAINT `FK_R133` FOREIGN KEY (`GRIN_ID`) REFERENCES `trx_giro_in` (`GRIN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.giroin_det: ~5 rows (approximately)
/*!40000 ALTER TABLE `giroin_det` DISABLE KEYS */;
INSERT INTO `giroin_det` (`GRINDET_ID`, `GRIN_ID`, `GIR_ID`, `GRINDET_CODE`, `GRINDET_DATE`, `GRINDET_INFO`, `GRINDET_AMOUNT`) VALUES
	(1, 1, 1, '1234566574635244234', '2018-01-31', NULL, 1700000000),
	(2, 2, 1, '1234566574635244234', '0000-00-00', NULL, 19000000000),
	(3, 3, 6, '756453454352', '2018-02-06', NULL, 25000000000),
	(4, 4, 4, '54348857463254586', '2018-02-06', NULL, 5800000000000),
	(5, 5, 7, '345684635245345', '2018-02-13', NULL, 25000000000),
	(6, 8, 14, '15052018123', '2018-06-25', NULL, 1000000);
/*!40000 ALTER TABLE `giroin_det` ENABLE KEYS */;

-- Dumping structure for table mtpd2.giroin_record
DROP TABLE IF EXISTS `giroin_record`;
CREATE TABLE IF NOT EXISTS `giroin_record` (
  `GIR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BNKTRX_ID` int(11) DEFAULT '0',
  `GIR_REFFID` char(30) DEFAULT '0',
  `GIR_REFFCODE` char(200) DEFAULT '0',
  `GIR_LIQSTS` char(1) DEFAULT '0',
  `GIR_BLCSTS` char(1) DEFAULT '0',
  `GIR_DTSTS` char(1) DEFAULT '0',
  PRIMARY KEY (`GIR_ID`),
  KEY `FKGRC1` (`BNKTRX_ID`),
  CONSTRAINT `FKGRC1` FOREIGN KEY (`BNKTRX_ID`) REFERENCES `bankin_trxdet` (`BNKTRX_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.giroin_record: ~8 rows (approximately)
/*!40000 ALTER TABLE `giroin_record` DISABLE KEYS */;
INSERT INTO `giroin_record` (`GIR_ID`, `BNKTRX_ID`, `GIR_REFFID`, `GIR_REFFCODE`, `GIR_LIQSTS`, `GIR_BLCSTS`, `GIR_DTSTS`) VALUES
	(1, 1, '0', '0', '0', '0', '0'),
	(2, 2, '0', '0', '0', '0', '0'),
	(3, 3, '0', '0', '0', '0', '0'),
	(4, 4, '0', '0', '0', '0', '0'),
	(6, 6, '0', '0', '0', '0', '0'),
	(7, 7, '0', '0', '0', '0', '0'),
	(8, 9, '0', '0', '0', '0', '0'),
	(11, 12, '0', '20202020', '0', '0', '0'),
	(14, 21, '0', '15052018123', '0', '0', '1');
/*!40000 ALTER TABLE `giroin_record` ENABLE KEYS */;

-- Dumping structure for table mtpd2.giroout_det
DROP TABLE IF EXISTS `giroout_det`;
CREATE TABLE IF NOT EXISTS `giroout_det` (
  `GROUTDET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUT_ID` int(11) DEFAULT NULL,
  `GOR_ID` int(11) DEFAULT NULL,
  `GROUTDET_CODE` char(30) DEFAULT NULL,
  `GROUTDET_DATE` date DEFAULT NULL,
  `GROUTDET_INFO` varchar(1024) DEFAULT NULL,
  `GROUTDET_AMOUNT` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`GROUTDET_ID`),
  KEY `FK_R134` (`GROUT_ID`),
  KEY `FKGORDET1` (`GOR_ID`),
  CONSTRAINT `FKGORDET1` FOREIGN KEY (`GOR_ID`) REFERENCES `giroout_record` (`GOR_ID`),
  CONSTRAINT `FK_R134` FOREIGN KEY (`GROUT_ID`) REFERENCES `trx_giro_out` (`GROUT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.giroout_det: ~9 rows (approximately)
/*!40000 ALTER TABLE `giroout_det` DISABLE KEYS */;
INSERT INTO `giroout_det` (`GROUTDET_ID`, `GROUT_ID`, `GOR_ID`, `GROUTDET_CODE`, `GROUTDET_DATE`, `GROUTDET_INFO`, `GROUTDET_AMOUNT`) VALUES
	(1, 1, 2, 'GK/1801/000001', '2018-01-31', NULL, 189000000000000),
	(2, 1, 2, 'GK/1801/000001', '2018-01-31', NULL, 189000000000000),
	(3, 1, 2, 'GK/1801/000001', '2018-01-31', NULL, 189000000000000),
	(4, 1, 2, 'GK/1801/000001', '2018-01-31', NULL, 189000000000000),
	(5, 2, 1, 'GK/1801/000002', '2018-01-31', NULL, 45000000000),
	(6, 3, 1, 'GK/1802/000001', '2018-02-06', NULL, 45000000000),
	(7, 4, 2, 'GK/1802/000002', '2018-02-06', NULL, 18900000000000),
	(8, 5, 4, 'GK/1802/000003', '2018-02-13', NULL, 500000000000),
	(9, 8, 13, 'BB12355', '2018-06-25', NULL, 1000000);
/*!40000 ALTER TABLE `giroout_det` ENABLE KEYS */;

-- Dumping structure for table mtpd2.giroout_record
DROP TABLE IF EXISTS `giroout_record`;
CREATE TABLE IF NOT EXISTS `giroout_record` (
  `GOR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BNKTRXO_ID` int(11) DEFAULT NULL,
  `GOR_REFFID` char(30) DEFAULT NULL,
  `GOR_REFFCODE` char(200) DEFAULT NULL,
  `GOR_LIQSTS` char(1) DEFAULT NULL,
  `GOR_BLCSTS` char(1) DEFAULT NULL,
  `GOR_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`GOR_ID`),
  KEY `FKGORC1` (`BNKTRXO_ID`),
  CONSTRAINT `FKGORC1` FOREIGN KEY (`BNKTRXO_ID`) REFERENCES `bankout_trxdet` (`BNKTRXO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.giroout_record: ~7 rows (approximately)
/*!40000 ALTER TABLE `giroout_record` DISABLE KEYS */;
INSERT INTO `giroout_record` (`GOR_ID`, `BNKTRXO_ID`, `GOR_REFFID`, `GOR_REFFCODE`, `GOR_LIQSTS`, `GOR_BLCSTS`, `GOR_DTSTS`) VALUES
	(1, 1, NULL, NULL, NULL, NULL, NULL),
	(2, 2, NULL, NULL, NULL, NULL, NULL),
	(3, 3, NULL, NULL, NULL, NULL, NULL),
	(4, 4, NULL, NULL, NULL, NULL, NULL),
	(5, 5, NULL, NULL, NULL, NULL, NULL),
	(6, 6, NULL, NULL, NULL, NULL, NULL),
	(10, 10, NULL, '23232324', NULL, NULL, NULL),
	(12, 14, NULL, '20180515123', NULL, NULL, NULL),
	(13, 15, NULL, 'BB12355', NULL, NULL, '1');
/*!40000 ALTER TABLE `giroout_record` ENABLE KEYS */;

-- Dumping structure for table mtpd2.goods_history
DROP TABLE IF EXISTS `goods_history`;
CREATE TABLE IF NOT EXISTS `goods_history` (
  `GDHIS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GD_ID` int(11) DEFAULT NULL,
  `GDHIS_CODE` char(30) DEFAULT NULL,
  `GDHIS_DATE` date DEFAULT NULL,
  `GDHIS_OLD` int(11) DEFAULT NULL,
  `GDHIS_NEW` int(11) DEFAULT NULL,
  `GDHIS_DIFF` int(11) DEFAULT NULL,
  `GDHIS_INFO` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`GDHIS_ID`),
  KEY `FK_R54` (`GD_ID`),
  CONSTRAINT `FK_R54` FOREIGN KEY (`GD_ID`) REFERENCES `master_goods` (`GD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.goods_history: ~0 rows (approximately)
/*!40000 ALTER TABLE `goods_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_history` ENABLE KEYS */;

-- Dumping structure for table mtpd2.group_master
DROP TABLE IF EXISTS `group_master`;
CREATE TABLE IF NOT EXISTS `group_master` (
  `USER_ID` int(11) NOT NULL,
  `MST_CODE` char(20) NOT NULL,
  PRIMARY KEY (`USER_ID`,`MST_CODE`),
  KEY `FKGRMST2` (`MST_CODE`),
  CONSTRAINT `FKGRMST1` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FKGRMST2` FOREIGN KEY (`MST_CODE`) REFERENCES `master_menumaster` (`MST_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.group_master: ~15 rows (approximately)
/*!40000 ALTER TABLE `group_master` DISABLE KEYS */;
INSERT INTO `group_master` (`USER_ID`, `MST_CODE`) VALUES
	(1, 'BANK'),
	(1, 'BRC'),
	(1, 'COA'),
	(1, 'CURR'),
	(1, 'CUST'),
	(1, 'DEPT'),
	(1, 'GD'),
	(1, 'INV'),
	(1, 'LOC'),
	(1, 'PAT'),
	(1, 'RKL'),
	(1, 'SLS'),
	(1, 'SUPP'),
	(1, 'USER'),
	(2, 'BANK');
/*!40000 ALTER TABLE `group_master` ENABLE KEYS */;

-- Dumping structure for table mtpd2.group_trx
DROP TABLE IF EXISTS `group_trx`;
CREATE TABLE IF NOT EXISTS `group_trx` (
  `USER_ID` int(11) NOT NULL,
  `TRX_CODE` char(20) NOT NULL,
  PRIMARY KEY (`USER_ID`,`TRX_CODE`),
  KEY `FKGRTRX2` (`TRX_CODE`),
  CONSTRAINT `FKGRTRX1` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FKGRTRX2` FOREIGN KEY (`TRX_CODE`) REFERENCES `master_menutrx` (`TRX_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.group_trx: ~7 rows (approximately)
/*!40000 ALTER TABLE `group_trx` DISABLE KEYS */;
INSERT INTO `group_trx` (`USER_ID`, `TRX_CODE`) VALUES
	(1, 'ACC'),
	(1, 'FIN'),
	(1, 'GA'),
	(1, 'LOG'),
	(1, 'MKT'),
	(1, 'PRM'),
	(1, 'TRN');
/*!40000 ALTER TABLE `group_trx` ENABLE KEYS */;

-- Dumping structure for table mtpd2.group_user
DROP TABLE IF EXISTS `group_user`;
CREATE TABLE IF NOT EXISTS `group_user` (
  `USER_ID` int(11) NOT NULL,
  `MENU_CODE` char(50) NOT NULL,
  PRIMARY KEY (`USER_ID`,`MENU_CODE`),
  KEY `GUFK2` (`MENU_CODE`),
  CONSTRAINT `GUFK1` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `GUFK2` FOREIGN KEY (`MENU_CODE`) REFERENCES `master_menu` (`MENU_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.group_user: ~73 rows (approximately)
/*!40000 ALTER TABLE `group_user` DISABLE KEYS */;
INSERT INTO `group_user` (`USER_ID`, `MENU_CODE`) VALUES
	(1, 'ACC'),
	(1, 'BNK'),
	(1, 'BRC'),
	(1, 'COA'),
	(1, 'CURR'),
	(1, 'CUST'),
	(1, 'DEPT'),
	(1, 'FIN'),
	(1, 'GA'),
	(1, 'GD'),
	(1, 'INVT'),
	(1, 'LOC'),
	(1, 'LOG'),
	(1, 'MKT'),
	(1, 'PAT'),
	(1, 'PMT'),
	(1, 'REK'),
	(1, 'SLS'),
	(1, 'SUPP'),
	(1, 'TRX'),
	(1, 'USR'),
	(2, 'ACC'),
	(2, 'BNK'),
	(2, 'BRC'),
	(2, 'COA'),
	(2, 'CURR'),
	(2, 'CUST'),
	(2, 'DEPT'),
	(2, 'FIN'),
	(2, 'GA'),
	(2, 'GD'),
	(2, 'INVT'),
	(2, 'LOC'),
	(2, 'LOG'),
	(2, 'MKT'),
	(2, 'PAT'),
	(2, 'PMT'),
	(2, 'REK'),
	(2, 'SLS'),
	(2, 'SUPP'),
	(2, 'TRX'),
	(2, 'USR'),
	(3, 'ACC'),
	(3, 'CUST'),
	(3, 'FIN'),
	(3, 'GA'),
	(3, 'LOG'),
	(3, 'MKT'),
	(3, 'PMT'),
	(3, 'TRX'),
	(4, 'MKT'),
	(4, 'TRX'),
	(5, 'ACC'),
	(5, 'BNK'),
	(5, 'BRC'),
	(5, 'COA'),
	(5, 'CURR'),
	(5, 'CUST'),
	(5, 'DEPT'),
	(5, 'FIN'),
	(5, 'GA'),
	(5, 'GD'),
	(5, 'INVT'),
	(5, 'LOC'),
	(5, 'LOG'),
	(5, 'MKT'),
	(5, 'PAT'),
	(5, 'PMT'),
	(5, 'REK'),
	(5, 'SLS'),
	(5, 'SUPP'),
	(5, 'TRX'),
	(5, 'USR');
/*!40000 ALTER TABLE `group_user` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_adj
DROP TABLE IF EXISTS `his_adj`;
CREATE TABLE IF NOT EXISTS `his_adj` (
  `HISADJ_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ADJ_ID` int(11) DEFAULT NULL,
  `HISADJ_STS` char(50) DEFAULT NULL,
  `HISADJ_OLD` char(50) DEFAULT NULL,
  `HISADJ_NEW` char(50) DEFAULT NULL,
  `HISADJ_INFO` char(200) DEFAULT NULL,
  `HISADJ_DATE` date DEFAULT NULL,
  `HISADJ_UPCOUNT` char(50) DEFAULT NULL,
  PRIMARY KEY (`HISADJ_ID`),
  KEY `FKHISADJ1` (`ADJ_ID`),
  CONSTRAINT `FKHISADJ1` FOREIGN KEY (`ADJ_ID`) REFERENCES `trx_adjustment` (`ADJ_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_adj: ~2 rows (approximately)
/*!40000 ALTER TABLE `his_adj` DISABLE KEYS */;
INSERT INTO `his_adj` (`HISADJ_ID`, `ADJ_ID`, `HISADJ_STS`, `HISADJ_OLD`, `HISADJ_NEW`, `HISADJ_INFO`, `HISADJ_DATE`, `HISADJ_UPCOUNT`) VALUES
	(1, 3, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0'),
	(2, 4, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0'),
	(3, 5, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0');
/*!40000 ALTER TABLE `his_adj` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_adjga
DROP TABLE IF EXISTS `his_adjga`;
CREATE TABLE IF NOT EXISTS `his_adjga` (
  `HISADJGA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ADJGA_ID` int(11) DEFAULT NULL,
  `HISADJGA_STS` char(50) DEFAULT NULL,
  `HISADJGA_OLD` char(50) DEFAULT NULL,
  `HISADJGA_NEW` char(50) DEFAULT NULL,
  `HISADJGA_INFO` char(200) DEFAULT NULL,
  `HISADJGA_DATE` date DEFAULT NULL,
  `HISADJGA_UPCOUNT` char(50) DEFAULT NULL,
  PRIMARY KEY (`HISADJGA_ID`),
  KEY `FKHISADJGA1` (`ADJGA_ID`),
  CONSTRAINT `FKHISADJGA1` FOREIGN KEY (`ADJGA_ID`) REFERENCES `trx_adj_ga` (`ADJGA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_adjga: ~2 rows (approximately)
/*!40000 ALTER TABLE `his_adjga` DISABLE KEYS */;
INSERT INTO `his_adjga` (`HISADJGA_ID`, `ADJGA_ID`, `HISADJGA_STS`, `HISADJGA_OLD`, `HISADJGA_NEW`, `HISADJGA_INFO`, `HISADJGA_DATE`, `HISADJGA_UPCOUNT`) VALUES
	(1, 4, 'Void By System', 'None', 'None', 'Create By System', '2018-04-04', '0'),
	(2, 5, 'Void By System', 'None', 'None', 'Create By System', '2018-04-04', '0');
/*!40000 ALTER TABLE `his_adjga` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_approvalbill
DROP TABLE IF EXISTS `his_approvalbill`;
CREATE TABLE IF NOT EXISTS `his_approvalbill` (
  `HISAPPR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPR_ID` int(11) DEFAULT NULL,
  `HISAPPR_STS` char(30) DEFAULT NULL,
  `HISAPPR_OLD` char(30) DEFAULT NULL,
  `HISAPPR_NEW` char(30) DEFAULT NULL,
  `HISAPPR_INFO` varchar(1024) DEFAULT NULL,
  `HISAPPR_DATE` date DEFAULT NULL,
  `HISAPPR_UPCOUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`HISAPPR_ID`),
  KEY `FK_R9` (`APPR_ID`),
  CONSTRAINT `FK_R9` FOREIGN KEY (`APPR_ID`) REFERENCES `trx_approvalbill` (`APPR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_approvalbill: ~39 rows (approximately)
/*!40000 ALTER TABLE `his_approvalbill` DISABLE KEYS */;
INSERT INTO `his_approvalbill` (`HISAPPR_ID`, `APPR_ID`, `HISAPPR_STS`, `HISAPPR_OLD`, `HISAPPR_NEW`, `HISAPPR_INFO`, `HISAPPR_DATE`, `HISAPPR_UPCOUNT`) VALUES
	(1, 1, 'Void By System', 'None', 'None', 'Create By System', NULL, 0),
	(2, 1, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Update by appr form', NULL, 1),
	(3, 2, 'Void By System', 'None', 'None', 'Create By System', NULL, 0),
	(4, 2, 'Posted by User surya', 'Void By System', 'Posted By User surya', 'Update by appr form', NULL, 1),
	(5, 3, 'Void By System', 'None', 'None', 'Create By System', NULL, 0),
	(6, 3, 'Posted by User surya', 'Void By System', 'Posted By User surya', 'Update by appr form', NULL, 1),
	(7, 3, 'Posted by User surya', 'Posted by User surya', 'Posted By User surya', 'Update by appr form', NULL, 2),
	(8, 3, 'Posted by User surya', 'Posted by User surya', 'Posted By User surya', 'Update by appr form', NULL, 3),
	(9, 3, 'Posted by User kaisha', 'Posted by User surya', 'Posted By User kaisha', 'Update by appr form', NULL, 4),
	(10, 3, 'Posted by User kaisha', 'Posted by User kaisha', 'Posted By User kaisha', 'Update by appr form', NULL, 5),
	(11, 4, 'Void By System', 'None', 'None', 'Create By System', NULL, 0),
	(12, 4, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Update by appr form', NULL, 1),
	(13, 5, 'Void By System', 'None', 'None', 'Create By System', NULL, 0),
	(14, 5, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Update by appr form', NULL, 1),
	(15, 6, 'Void By System', 'None', 'None', 'Create By System', NULL, 0),
	(16, 6, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Update by appr form', NULL, 1),
	(17, 7, 'Void By System', 'None', 'None', 'Create By System', NULL, 0),
	(18, 8, 'Void By System', 'None', 'None', 'Create By System', NULL, 0),
	(19, 9, 'Void By System', 'None', 'None', 'Create By System', NULL, 0),
	(20, 10, 'Void By System', 'None', 'None', 'Create By System', NULL, 0),
	(21, 10, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Update by appr form', NULL, 1),
	(22, 11, 'Void By System', 'None', 'None', 'Create By System', NULL, 0),
	(23, 11, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Update by appr form', NULL, 1),
	(24, 12, 'Void By System', 'None', 'None', 'Create By System', NULL, 0),
	(25, 12, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Update by appr form', NULL, 1),
	(26, 13, 'Void By System', 'None', 'None', 'Create By System', NULL, 0),
	(27, 14, 'Void By System', 'None', 'None', 'Create By System', NULL, 0),
	(28, 15, 'Void By System', 'None', 'None', 'Create By System', NULL, 0),
	(29, 16, 'Void By System', 'None', 'None', 'Create By System', NULL, 0),
	(30, 16, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Update by appr form', NULL, 1),
	(31, 17, 'Void By System', 'None', 'None', 'Create By System', NULL, 0),
	(32, 17, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Update by appr form', NULL, 1),
	(33, 18, 'Void By System', 'None', 'None', 'Create By System', NULL, 0),
	(34, 19, 'Void By System', 'None', 'None', 'Create By System', NULL, 0),
	(35, 19, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Update by appr form', NULL, 1),
	(36, 20, 'Void By System', 'None', 'None', 'Create By System', '2018-03-08', 0),
	(41, 19, 'Open by User kaisha', 'Posted by User kaisha', 'Open By User kaisha', 'Open Record by appr form', '2018-03-09', 2),
	(44, 19, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from appr form', '2018-03-09', 2),
	(52, 28, 'Void By System', 'None', 'None', 'Create By System', '2018-04-02', 0),
	(53, 29, 'Void By System', 'None', 'None', 'Create By System', '2018-04-02', 0),
	(54, 30, 'Void By System', 'None', 'None', 'Create By System', '2018-04-02', 0),
	(55, 31, 'Void By System', 'None', 'None', 'Create By System', '2018-04-02', 0),
	(56, 19, 'Posted by User dzaky', 'Open by User kaisha', 'Posted By User dzaky', 'Update by dzaky from appr form', '2018-04-04', 2),
	(57, 20, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by appr form', '2018-04-05', 1),
	(58, 20, 'Posted by User kaisha', 'Posted by User kaisha', 'Posted By User kaisha', 'Update by kaisha from appr form', '2018-04-05', 1),
	(59, 20, 'Posted by User kaisha', 'Posted by User kaisha', 'Posted By User kaisha', 'Update by kaisha from appr form', '2018-04-05', 1),
	(60, 29, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by appr form', '2018-04-05', 1),
	(61, 29, 'Open by User kaisha', 'Posted by User kaisha', 'Open By User kaisha', 'Open Record by appr form', '2018-04-05', 2),
	(62, 32, 'Void By System', 'None', 'None', 'Create By System', '2018-07-05', 0),
	(63, 32, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by appr form', '2018-07-05', 1);
/*!40000 ALTER TABLE `his_approvalbill` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_bankin
DROP TABLE IF EXISTS `his_bankin`;
CREATE TABLE IF NOT EXISTS `his_bankin` (
  `HISBNK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BNK_ID` int(11) DEFAULT NULL,
  `HISBNK_STS` char(50) DEFAULT NULL,
  `HISBNK_OLD` char(50) DEFAULT NULL,
  `HISBNK_NEW` char(50) DEFAULT NULL,
  `HISBNK_INFO` char(200) DEFAULT NULL,
  `HISBNK_DATE` date DEFAULT NULL,
  `HISBNK_UPCOUNT` char(50) DEFAULT NULL,
  PRIMARY KEY (`HISBNK_ID`),
  KEY `FKHISBNK1` (`BNK_ID`),
  CONSTRAINT `FKHISBNK1` FOREIGN KEY (`BNK_ID`) REFERENCES `trx_bankin` (`BNK_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_bankin: ~7 rows (approximately)
/*!40000 ALTER TABLE `his_bankin` DISABLE KEYS */;
INSERT INTO `his_bankin` (`HISBNK_ID`, `BNK_ID`, `HISBNK_STS`, `HISBNK_OLD`, `HISBNK_NEW`, `HISBNK_INFO`, `HISBNK_DATE`, `HISBNK_UPCOUNT`) VALUES
	(1, 14, 'Void By System', 'None', 'None', 'Create By System', '2018-04-23', '0'),
	(2, 15, 'Void By System', 'None', 'None', 'Create By System', '2018-04-23', '0'),
	(3, 14, 'Open by User kaisha', 'Void By System', 'Open By User kaisha', 'Open Record by Bank Masuk form', '2018-04-23', '1'),
	(4, 16, 'Void By System', 'None', 'None', 'Create By System', '2018-05-15', '0'),
	(5, 17, 'Void By System', 'None', 'None', 'Create By System', '2018-05-15', '0'),
	(6, 16, 'Open by User kaisha', 'Void By System', 'Open By User kaisha', 'Open Record by Bank Masuk form', '2018-05-15', '1'),
	(7, 18, 'Void By System', 'None', 'None', 'Create By System', '2018-05-15', '0');
/*!40000 ALTER TABLE `his_bankin` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_bankout
DROP TABLE IF EXISTS `his_bankout`;
CREATE TABLE IF NOT EXISTS `his_bankout` (
  `HISBNKO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BNKO_ID` int(11) DEFAULT NULL,
  `HISBNKO_STS` char(50) DEFAULT NULL,
  `HISBNKO_OLD` char(50) DEFAULT NULL,
  `HISBNKO_NEW` char(50) DEFAULT NULL,
  `HISBNKO_INFO` char(200) DEFAULT NULL,
  `HISBNKO_DATE` date DEFAULT NULL,
  `HISBNKO_UPCOUNT` char(50) DEFAULT NULL,
  PRIMARY KEY (`HISBNKO_ID`),
  KEY `FKHISBNKO1` (`BNKO_ID`),
  CONSTRAINT `FKHISBNKO1` FOREIGN KEY (`BNKO_ID`) REFERENCES `trx_bankout` (`BNKO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_bankout: ~4 rows (approximately)
/*!40000 ALTER TABLE `his_bankout` DISABLE KEYS */;
INSERT INTO `his_bankout` (`HISBNKO_ID`, `BNKO_ID`, `HISBNKO_STS`, `HISBNKO_OLD`, `HISBNKO_NEW`, `HISBNKO_INFO`, `HISBNKO_DATE`, `HISBNKO_UPCOUNT`) VALUES
	(1, 16, 'Void By System', 'None', 'None', 'Create By System', '2018-04-25', '0'),
	(2, 16, 'Open by User kaisha', 'Void By System', 'Open By User kaisha', 'Open Record by Bank Keluar form', '2018-04-25', '1'),
	(3, 17, 'Void By System', 'None', 'None', 'Create By System', '2018-05-15', '0'),
	(4, 18, 'Void By System', 'None', 'None', 'Create By System', '2018-05-15', '0'),
	(5, 19, 'Void By System', 'None', 'None', 'Create By System', '2018-06-07', '0');
/*!40000 ALTER TABLE `his_bankout` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_bapp
DROP TABLE IF EXISTS `his_bapp`;
CREATE TABLE IF NOT EXISTS `his_bapp` (
  `HISBAPP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BAPP_ID` int(11) DEFAULT NULL,
  `HISBAPP_STS` char(30) DEFAULT NULL,
  `HISBAPP_OLD` char(30) DEFAULT NULL,
  `HISBAPP_NEW` char(30) DEFAULT NULL,
  `HISBAPP_INFO` varchar(1024) DEFAULT NULL,
  `HISBAPP_DATE` date DEFAULT NULL,
  `HISBAPP_UPCOUNT` char(1) DEFAULT NULL,
  PRIMARY KEY (`HISBAPP_ID`),
  KEY `FK_R88` (`BAPP_ID`),
  CONSTRAINT `FK_R88` FOREIGN KEY (`BAPP_ID`) REFERENCES `trx_bapp` (`BAPP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_bapp: ~6 rows (approximately)
/*!40000 ALTER TABLE `his_bapp` DISABLE KEYS */;
INSERT INTO `his_bapp` (`HISBAPP_ID`, `BAPP_ID`, `HISBAPP_STS`, `HISBAPP_OLD`, `HISBAPP_NEW`, `HISBAPP_INFO`, `HISBAPP_DATE`, `HISBAPP_UPCOUNT`) VALUES
	(2, 18, 'Void By System', 'None', 'None', 'Create By System', '2018-03-13', '0'),
	(3, 18, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by BAPP form', '2018-03-13', '1'),
	(6, 18, 'Open by User kaisha', 'Posted by User kaisha', 'Open By User kaisha', 'Open Record by BAPP form', '2018-03-13', '2'),
	(7, 18, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from BAPP form', '2018-03-13', '2'),
	(8, 19, 'Void By System', 'None', 'None', 'Create By System', '2018-04-02', '0'),
	(9, 20, 'Void By System', 'None', 'None', 'Create By System', '2018-04-02', '0'),
	(10, 21, 'Void By System', 'None', 'None', 'Create By System', '2018-04-02', '0'),
	(11, 22, 'Void By System', 'None', 'None', 'Create By System', '2018-04-12', '0');
/*!40000 ALTER TABLE `his_bapp` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_bapplog
DROP TABLE IF EXISTS `his_bapplog`;
CREATE TABLE IF NOT EXISTS `his_bapplog` (
  `HISBALG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BALG_ID` int(11) DEFAULT NULL,
  `HISBALG_STS` char(50) DEFAULT NULL,
  `HISBALG_OLD` char(50) DEFAULT NULL,
  `HISBALG_NEW` char(50) DEFAULT NULL,
  `HISBALG_INFO` char(200) DEFAULT NULL,
  `HISBALG_DATE` date DEFAULT NULL,
  `HISBALG_UPCOUNT` char(50) DEFAULT NULL,
  PRIMARY KEY (`HISBALG_ID`),
  KEY `FKHISBALG1` (`BALG_ID`),
  CONSTRAINT `FKHISBALG1` FOREIGN KEY (`BALG_ID`) REFERENCES `trx_bapplog` (`BALG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_bapplog: ~4 rows (approximately)
/*!40000 ALTER TABLE `his_bapplog` DISABLE KEYS */;
INSERT INTO `his_bapplog` (`HISBALG_ID`, `BALG_ID`, `HISBALG_STS`, `HISBALG_OLD`, `HISBALG_NEW`, `HISBALG_INFO`, `HISBALG_DATE`, `HISBALG_UPCOUNT`) VALUES
	(1, 1, 'Void By System', 'None', 'None', 'Create By System', '2018-04-09', '0'),
	(2, 1, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Update by kaisha from BAPP Logistik form', '2018-04-09', '0'),
	(3, 1, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by BAPP Logistik form', '2018-04-09', '1'),
	(4, 1, 'Open by User', 'Posted by User kaisha', 'Open By User', 'Open Record by BAPP Logistik form', '2018-04-09', '2'),
	(5, 1, 'Posted by User kaisha', 'Open by User', 'Posted By User kaisha', 'Update by kaisha from BAPP Logistik form', '2018-04-09', '2');
/*!40000 ALTER TABLE `his_bapplog` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_budget
DROP TABLE IF EXISTS `his_budget`;
CREATE TABLE IF NOT EXISTS `his_budget` (
  `HISBDG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BUD_ID` int(11) DEFAULT NULL,
  `HISBDG_STS` char(50) DEFAULT NULL,
  `HISBDG_OLD` char(50) DEFAULT NULL,
  `HISBDG_NEW` char(50) DEFAULT NULL,
  `HISBDG_INFO` char(200) DEFAULT NULL,
  `HISBDG_DATE` date DEFAULT NULL,
  `HISBDG_UPCOUNT` char(50) DEFAULT NULL,
  PRIMARY KEY (`HISBDG_ID`),
  KEY `FKHISBDG1` (`BUD_ID`),
  CONSTRAINT `FKHISBDG1` FOREIGN KEY (`BUD_ID`) REFERENCES `trx_budget` (`BUD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_budget: ~2 rows (approximately)
/*!40000 ALTER TABLE `his_budget` DISABLE KEYS */;
INSERT INTO `his_budget` (`HISBDG_ID`, `BUD_ID`, `HISBDG_STS`, `HISBDG_OLD`, `HISBDG_NEW`, `HISBDG_INFO`, `HISBDG_DATE`, `HISBDG_UPCOUNT`) VALUES
	(1, 5, 'Void By System', 'None', 'None', 'Create By System', '2018-04-04', '0'),
	(2, 6, 'Void By System', 'None', 'None', 'Create By System', '2018-04-04', '0'),
	(3, 7, 'Void By System', 'None', 'None', 'Create By System', '2018-04-04', '0');
/*!40000 ALTER TABLE `his_budget` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_cashin
DROP TABLE IF EXISTS `his_cashin`;
CREATE TABLE IF NOT EXISTS `his_cashin` (
  `HISCSHIN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CSH_ID` int(11) DEFAULT NULL,
  `HISCHIN_STS` char(50) DEFAULT NULL,
  `HISCHIN_OLD` char(50) DEFAULT NULL,
  `HISCHIN_NEW` char(50) DEFAULT NULL,
  `HISCHIN_INFO` char(200) DEFAULT NULL,
  `HISCHIN_DATE` date DEFAULT NULL,
  `HISCHIN_UPCOUNT` char(50) DEFAULT NULL,
  PRIMARY KEY (`HISCSHIN_ID`),
  KEY `FKHISCSHIN1` (`CSH_ID`),
  CONSTRAINT `FKHISCSHIN1` FOREIGN KEY (`CSH_ID`) REFERENCES `trx_cash_in` (`CSH_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_cashin: ~8 rows (approximately)
/*!40000 ALTER TABLE `his_cashin` DISABLE KEYS */;
INSERT INTO `his_cashin` (`HISCSHIN_ID`, `CSH_ID`, `HISCHIN_STS`, `HISCHIN_OLD`, `HISCHIN_NEW`, `HISCHIN_INFO`, `HISCHIN_DATE`, `HISCHIN_UPCOUNT`) VALUES
	(9, 31, 'Void By System', 'None', 'None', 'Create By System', '2018-04-02', '0'),
	(10, 32, 'Void By System', 'None', 'None', 'Create By System', '2018-04-02', '0'),
	(11, 33, 'Void By System', 'None', 'None', 'Create By System', '2018-04-12', '0'),
	(12, 34, 'Void By System', 'None', 'None', 'Create By System', '2018-04-17', '0'),
	(13, 35, 'Void By System', 'None', 'None', 'Create By System', '2018-04-18', '0'),
	(14, 36, 'Void By System', 'None', 'None', 'Create By System', '2018-04-20', '0'),
	(15, 37, 'Void By System', 'None', 'None', 'Create By System', '2018-05-09', '0'),
	(16, 37, 'Open by User kaisha', 'Void By System', 'Open By User kaisha', 'Open Record by Kas Masuk form', '2018-05-09', '1'),
	(17, 38, 'Void By System', 'None', 'None', 'Create By System', '2018-06-11', '0'),
	(18, 39, 'Void By System', 'None', 'None', 'Create By System', '2018-06-12', '0');
/*!40000 ALTER TABLE `his_cashin` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_cashout
DROP TABLE IF EXISTS `his_cashout`;
CREATE TABLE IF NOT EXISTS `his_cashout` (
  `HISCSHO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CSHO_ID` int(11) DEFAULT NULL,
  `HISCSHO_STS` char(50) DEFAULT NULL,
  `HISCSHO_OLD` char(50) DEFAULT NULL,
  `HISCSHO_NEW` char(50) DEFAULT NULL,
  `HISCSHO_INFO` char(200) DEFAULT NULL,
  `HISCSHO_DATE` date DEFAULT NULL,
  `HISCSHO_UPCOUNT` char(50) DEFAULT NULL,
  PRIMARY KEY (`HISCSHO_ID`),
  KEY `FKHISCSHO1` (`CSHO_ID`),
  CONSTRAINT `FKHISCSHO1` FOREIGN KEY (`CSHO_ID`) REFERENCES `trx_cash_out` (`CSHO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_cashout: ~9 rows (approximately)
/*!40000 ALTER TABLE `his_cashout` DISABLE KEYS */;
INSERT INTO `his_cashout` (`HISCSHO_ID`, `CSHO_ID`, `HISCSHO_STS`, `HISCSHO_OLD`, `HISCSHO_NEW`, `HISCSHO_INFO`, `HISCSHO_DATE`, `HISCSHO_UPCOUNT`) VALUES
	(7, 26, 'Void By System', 'None', 'None', 'Create By System', '2018-04-02', '0'),
	(8, 27, 'Void By System', 'None', 'None', 'Create By System', '2018-04-02', '0'),
	(9, 28, 'Void By System', 'None', 'None', 'Create By System', '2018-04-02', '0'),
	(10, 29, 'Void By System', 'None', 'None', 'Create By System', '2018-04-02', '0'),
	(11, 30, 'Void By System', 'None', 'None', 'Create By System', '2018-04-19', '0'),
	(12, 31, 'Void By System', 'None', 'None', 'Create By System', '2018-04-20', '0'),
	(13, 32, 'Void By System', 'None', 'None', 'Create By System', '2018-04-20', '0'),
	(14, 33, 'Void By System', 'None', 'None', 'Create By System', '2018-05-09', '0'),
	(15, 33, 'Open by User kaisha', 'Void By System', 'Open By User kaisha', 'Open Record by Kas Keluar form', '2018-05-09', '1'),
	(16, 34, 'Void By System', 'None', 'None', 'Create By System', '2018-05-09', '0'),
	(17, 35, 'Void By System', 'None', 'None', 'Create By System', '2018-05-11', '0'),
	(18, 36, 'Void By System', 'None', 'None', 'Create By System', '2018-06-11', '0'),
	(19, 37, 'Void By System', 'None', 'None', 'Create By System', '2018-06-12', '0');
/*!40000 ALTER TABLE `his_cashout` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_customer
DROP TABLE IF EXISTS `his_customer`;
CREATE TABLE IF NOT EXISTS `his_customer` (
  `HISCUST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUST_ID` int(11) DEFAULT NULL,
  `HISCUST_OLDNAME` varchar(500) DEFAULT NULL,
  `HISCUST_NEWNAME` varchar(500) DEFAULT NULL,
  `HISCUST_INFO` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`HISCUST_ID`),
  KEY `FK_R5` (`CUST_ID`),
  CONSTRAINT `FK_R5` FOREIGN KEY (`CUST_ID`) REFERENCES `master_customer` (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_customer` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_giroin
DROP TABLE IF EXISTS `his_giroin`;
CREATE TABLE IF NOT EXISTS `his_giroin` (
  `HISGRIN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GRIN_ID` int(11) DEFAULT NULL,
  `HISGRIN_STS` char(50) DEFAULT NULL,
  `HISGRIN_OLD` char(50) DEFAULT NULL,
  `HISGRIN_NEW` char(50) DEFAULT NULL,
  `HISGRIN_INFO` char(200) DEFAULT NULL,
  `HISGRIN_DATE` date DEFAULT NULL,
  `HISGRIN_UPCOUNT` char(50) DEFAULT NULL,
  PRIMARY KEY (`HISGRIN_ID`),
  KEY `FKHISGRIN1` (`GRIN_ID`),
  CONSTRAINT `FKHISGRIN1` FOREIGN KEY (`GRIN_ID`) REFERENCES `trx_giro_in` (`GRIN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_giroin: ~2 rows (approximately)
/*!40000 ALTER TABLE `his_giroin` DISABLE KEYS */;
INSERT INTO `his_giroin` (`HISGRIN_ID`, `GRIN_ID`, `HISGRIN_STS`, `HISGRIN_OLD`, `HISGRIN_NEW`, `HISGRIN_INFO`, `HISGRIN_DATE`, `HISGRIN_UPCOUNT`) VALUES
	(1, 6, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0'),
	(2, 7, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0'),
	(3, 8, 'Void By System', 'None', 'None', 'Create By System', '2018-05-18', '0');
/*!40000 ALTER TABLE `his_giroin` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_giroout
DROP TABLE IF EXISTS `his_giroout`;
CREATE TABLE IF NOT EXISTS `his_giroout` (
  `HISGRO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUT_ID` int(11) DEFAULT NULL,
  `HISGRO_STS` char(50) DEFAULT NULL,
  `HISGRO_OLD` char(50) DEFAULT NULL,
  `HISGRO_NEW` char(50) DEFAULT NULL,
  `HISGRO_INFO` char(200) DEFAULT NULL,
  `HISGRO_DATE` date DEFAULT NULL,
  `HISGRO_UPCOUNT` char(50) DEFAULT NULL,
  PRIMARY KEY (`HISGRO_ID`),
  KEY `FKHISGRO1` (`GROUT_ID`),
  CONSTRAINT `FKHISGRO1` FOREIGN KEY (`GROUT_ID`) REFERENCES `trx_giro_out` (`GROUT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_giroout: ~2 rows (approximately)
/*!40000 ALTER TABLE `his_giroout` DISABLE KEYS */;
INSERT INTO `his_giroout` (`HISGRO_ID`, `GROUT_ID`, `HISGRO_STS`, `HISGRO_OLD`, `HISGRO_NEW`, `HISGRO_INFO`, `HISGRO_DATE`, `HISGRO_UPCOUNT`) VALUES
	(1, 6, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0'),
	(2, 7, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0'),
	(3, 8, 'Void By System', 'None', 'None', 'Create By System', '2018-06-07', '0');
/*!40000 ALTER TABLE `his_giroout` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_inv
DROP TABLE IF EXISTS `his_inv`;
CREATE TABLE IF NOT EXISTS `his_inv` (
  `HISINV_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INV_ID` int(11) DEFAULT NULL,
  `HISINV_STS` char(50) DEFAULT NULL,
  `HISINV_OLD` char(50) DEFAULT NULL,
  `HISINV_NEW` char(50) DEFAULT NULL,
  `HISINV_INFO` varchar(1024) DEFAULT NULL,
  `HISINV_DATE` date DEFAULT NULL,
  `HISINV_UPCOUNT` char(5) DEFAULT NULL,
  PRIMARY KEY (`HISINV_ID`),
  KEY `FKHISINV1` (`INV_ID`),
  CONSTRAINT `FKHISINV1` FOREIGN KEY (`INV_ID`) REFERENCES `trx_invoice` (`INV_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_inv: ~25 rows (approximately)
/*!40000 ALTER TABLE `his_inv` DISABLE KEYS */;
INSERT INTO `his_inv` (`HISINV_ID`, `INV_ID`, `HISINV_STS`, `HISINV_OLD`, `HISINV_NEW`, `HISINV_INFO`, `HISINV_DATE`, `HISINV_UPCOUNT`) VALUES
	(1, 11, 'Void By System', 'None', 'None', 'Create By System', '2018-03-20', '0'),
	(3, 11, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by Invoice form', '2018-03-20', '1'),
	(4, 11, 'Open by User kaisha', 'Posted by User kaisha', 'Open By User kaisha', 'Open Record by Invoice form', '2018-03-20', '2'),
	(5, 11, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Invoice form', '2018-03-20', '2'),
	(6, 12, 'Void By System', 'None', 'None', 'Create By System', '2018-03-21', '0'),
	(7, 13, 'Void By System', 'None', 'None', 'Create By System', '2018-04-04', '0'),
	(8, 14, 'Void By System', 'None', 'None', 'Create By System', '2018-04-04', '0'),
	(9, 15, 'Void By System', 'None', 'None', 'Create By System', '2018-04-10', '0'),
	(10, 16, 'Void By System', 'None', 'None', 'Create By System', '2018-04-10', '0'),
	(11, 17, 'Void By System', 'None', 'None', 'Create By System', '2018-04-10', '0'),
	(12, 18, 'Void By System', 'None', 'None', 'Create By System', '2018-04-10', '0'),
	(13, 11, 'Open by User kaisha', 'Open by User kaisha', 'Open By User kaisha', 'Open Record by Invoice form', '2018-04-12', '3'),
	(14, 11, 'Open by User kaisha', 'Open by User kaisha', 'Open By User kaisha', 'Open Record by Invoice form', '2018-04-12', '4'),
	(15, 11, 'Open by User kaisha', 'Open by User kaisha', 'Open By User kaisha', 'Open Record by Invoice form', '2018-04-12', '5'),
	(16, 11, 'Open by User kaisha', 'Open by User kaisha', 'Open By User kaisha', 'Open Record by Invoice form', '2018-04-12', '6'),
	(17, 11, 'Open by User kaisha', 'Open by User kaisha', 'Open By User kaisha', 'Open Record by Invoice form', '2018-04-12', '7'),
	(18, 11, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Invoice form', '2018-04-12', '7'),
	(19, 19, 'Void By System', 'None', 'None', 'Create By System', '2018-07-05', '0'),
	(20, 19, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by Invoice form', '2018-07-05', '1'),
	(21, 20, 'Void By System', 'None', 'None', 'Create By System', '2018-07-05', '0'),
	(22, 20, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by Invoice form', '2018-07-05', '1'),
	(23, 20, 'Open by User kaisha', 'Posted by User kaisha', 'Open By User kaisha', 'Open Record by Invoice form', '2018-07-05', '2'),
	(24, 20, 'Open by User kaisha', 'Open by User kaisha', 'Open By User kaisha', 'Open Record by Invoice form', '2018-07-05', '3'),
	(25, 19, 'Open by User kaisha', 'Posted by User kaisha', 'Open By User kaisha', 'Open Record by Invoice form', '2018-07-05', '2'),
	(26, 19, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Invoice form', '2018-07-05', '2'),
	(27, 20, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Invoice form', '2018-07-05', '3');
/*!40000 ALTER TABLE `his_inv` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_pappr
DROP TABLE IF EXISTS `his_pappr`;
CREATE TABLE IF NOT EXISTS `his_pappr` (
  `HISPAPPR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PAPPR_ID` int(11) DEFAULT NULL,
  `HISPAPPR_STS` char(50) DEFAULT NULL,
  `HISPAPPR_OLD` char(50) DEFAULT NULL,
  `HISPAPPR_NEW` char(50) DEFAULT NULL,
  `HISPAPPR_INFO` varchar(1024) DEFAULT NULL,
  `HISPAPPR_DATE` date DEFAULT NULL,
  `HISPAPPR_UPCOUNT` char(5) DEFAULT NULL,
  PRIMARY KEY (`HISPAPPR_ID`),
  KEY `FKHISPAPPR1` (`PAPPR_ID`),
  CONSTRAINT `FKHISPAPPR1` FOREIGN KEY (`PAPPR_ID`) REFERENCES `trx_permitappr` (`PAPPR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_pappr: ~6 rows (approximately)
/*!40000 ALTER TABLE `his_pappr` DISABLE KEYS */;
INSERT INTO `his_pappr` (`HISPAPPR_ID`, `PAPPR_ID`, `HISPAPPR_STS`, `HISPAPPR_OLD`, `HISPAPPR_NEW`, `HISPAPPR_INFO`, `HISPAPPR_DATE`, `HISPAPPR_UPCOUNT`) VALUES
	(1, 11, 'Void By System', 'None', 'None', 'Create By System', '2018-03-20', '0'),
	(3, 11, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by permit form', '2018-03-20', '1'),
	(4, 11, 'Open by User kaisha', 'Posted by User kaisha', 'Open By User kaisha', 'Open Record by permit form', '2018-03-20', '2'),
	(5, 11, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from permit form', '2018-03-20', '2'),
	(6, 12, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0'),
	(7, 13, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0'),
	(8, 14, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0');
/*!40000 ALTER TABLE `his_pappr` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_po
DROP TABLE IF EXISTS `his_po`;
CREATE TABLE IF NOT EXISTS `his_po` (
  `HISPO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PO_ID` int(11) DEFAULT NULL,
  `HISPO_STS` char(30) DEFAULT NULL,
  `HISPO_OLD` char(30) DEFAULT NULL,
  `HISPO_NEW` char(30) DEFAULT NULL,
  `HISPO_INFO` varchar(1024) DEFAULT NULL,
  `HISPO_DATE` date DEFAULT NULL,
  `HISPO_UPCOUNT` char(1) DEFAULT NULL,
  PRIMARY KEY (`HISPO_ID`),
  KEY `FK_R89` (`PO_ID`),
  CONSTRAINT `FK_R89` FOREIGN KEY (`PO_ID`) REFERENCES `trx_po` (`PO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_po: ~17 rows (approximately)
/*!40000 ALTER TABLE `his_po` DISABLE KEYS */;
INSERT INTO `his_po` (`HISPO_ID`, `PO_ID`, `HISPO_STS`, `HISPO_OLD`, `HISPO_NEW`, `HISPO_INFO`, `HISPO_DATE`, `HISPO_UPCOUNT`) VALUES
	(1, 14, 'Void By System', 'None', 'None', 'Create By System', '2018-03-14', '0'),
	(2, 14, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by PO Logistik form', '2018-03-14', '1'),
	(3, 14, 'Open by User kaisha', 'Posted by User kaisha', 'Open By User kaisha', 'Open Record by PO Logistik form', '2018-03-14', '2'),
	(4, 14, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from PO Logistik form', '2018-03-14', '2'),
	(5, 15, 'Void By System', 'None', 'None', 'Create By System', '2018-03-16', '0'),
	(6, 15, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by PO Logistik form', '2018-03-16', '1'),
	(7, 16, 'Void By System', 'None', 'None', 'Create By System', '2018-04-02', '0'),
	(8, 17, 'Void By System', 'None', 'None', 'Create By System', '2018-04-02', '0'),
	(9, 18, 'Void By System', 'None', 'None', 'Create By System', '2018-04-02', '0'),
	(10, 19, 'Void By System', 'None', 'None', 'Create By System', '2018-04-16', '0'),
	(11, 19, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by PO Logistik form', '2018-04-16', '1'),
	(12, 20, 'Void By System', 'None', 'None', 'Create By System', '2018-07-05', '0'),
	(13, 20, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by PO Logistik form', '2018-07-05', '1'),
	(14, 21, 'Void By System', 'None', 'None', 'Create By System', '2018-07-05', '0'),
	(15, 21, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by PO Logistik form', '2018-07-05', '1'),
	(16, 22, 'Void By System', 'None', 'None', 'Create By System', '2018-07-05', '0'),
	(17, 22, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by PO Logistik form', '2018-07-05', '1'),
	(18, 23, 'Void By System', 'None', 'None', 'Create By System', '2018-08-14', '0'),
	(19, 23, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by PO Logistik form', '2018-08-14', '1');
/*!40000 ALTER TABLE `his_po` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_poga
DROP TABLE IF EXISTS `his_poga`;
CREATE TABLE IF NOT EXISTS `his_poga` (
  `HISPOGA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `POGA_ID` int(11) DEFAULT NULL,
  `HISPOGA_STS` char(50) DEFAULT NULL,
  `HISPOGA_OLD` char(50) DEFAULT NULL,
  `HISPOGA_NEW` char(50) DEFAULT NULL,
  `HISPOGA_INFO` char(200) DEFAULT NULL,
  `HISPOGA_DATE` date DEFAULT NULL,
  `HISPOGA_UPCOUNT` char(50) DEFAULT NULL,
  PRIMARY KEY (`HISPOGA_ID`),
  KEY `FKHISPOGA1` (`POGA_ID`),
  CONSTRAINT `FKHISPOGA1` FOREIGN KEY (`POGA_ID`) REFERENCES `trx_po_ga` (`POGA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_poga: ~9 rows (approximately)
/*!40000 ALTER TABLE `his_poga` DISABLE KEYS */;
INSERT INTO `his_poga` (`HISPOGA_ID`, `POGA_ID`, `HISPOGA_STS`, `HISPOGA_OLD`, `HISPOGA_NEW`, `HISPOGA_INFO`, `HISPOGA_DATE`, `HISPOGA_UPCOUNT`) VALUES
	(1, 11, 'Void By System', 'None', 'None', 'Create By System', '2018-04-04', '0'),
	(2, 12, 'Void By System', 'None', 'None', 'Create By System', '2018-04-04', '0'),
	(3, 13, 'Void By System', 'None', 'None', 'Create By System', '2018-04-16', '0'),
	(4, 14, 'Void By System', 'None', 'None', 'Create By System', '2018-04-27', '0'),
	(5, 15, 'Void By System', 'None', 'None', 'Create By System', '2018-04-27', '0'),
	(6, 15, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by PO GA form', '2018-04-27', '1'),
	(7, 15, 'Open by User kaisha', 'Posted by User kaisha', 'Open By User kaisha', 'Open Record by PO GA form', '2018-04-27', '2'),
	(8, 9, 'Open by User kaisha', NULL, 'Open By User kaisha', 'Open Record by PO GA form', '2018-04-27', '1'),
	(9, 15, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from PO GA form', '2018-04-27', '2');
/*!40000 ALTER TABLE `his_poga` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_prc
DROP TABLE IF EXISTS `his_prc`;
CREATE TABLE IF NOT EXISTS `his_prc` (
  `HISPRC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRC_ID` int(11) DEFAULT NULL,
  `HISPRC_STS` char(30) DEFAULT NULL,
  `HISPRC_OLD` char(30) DEFAULT NULL,
  `HISPRC_NEW` char(30) DEFAULT NULL,
  `HISPRC_INFO` varchar(1024) DEFAULT NULL,
  `HISPRC_DATE` date DEFAULT NULL,
  `HISPRC_UPCOUNT` char(1) DEFAULT NULL,
  PRIMARY KEY (`HISPRC_ID`),
  KEY `FK_R90` (`PRC_ID`),
  CONSTRAINT `FK_R90` FOREIGN KEY (`PRC_ID`) REFERENCES `trx_procurement` (`PRC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_prc: ~37 rows (approximately)
/*!40000 ALTER TABLE `his_prc` DISABLE KEYS */;
INSERT INTO `his_prc` (`HISPRC_ID`, `PRC_ID`, `HISPRC_STS`, `HISPRC_OLD`, `HISPRC_NEW`, `HISPRC_INFO`, `HISPRC_DATE`, `HISPRC_UPCOUNT`) VALUES
	(1, 13, 'Void By System', 'None', 'None', 'Create By System', '2018-03-15', '0'),
	(2, 13, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by Pembelian Logistik form', '2018-03-15', '1'),
	(3, 13, 'Open by User kaisha', 'Posted by User kaisha', 'Open By User kaisha', 'Open Record by Pembelian Logistik form', '2018-03-15', '2'),
	(4, 13, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pembelian Logistik form', '2018-03-15', '2'),
	(5, 13, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pembelian Logistik form', '2018-03-15', '2'),
	(6, 14, 'Void By System', 'None', 'None', 'Create By System', '2018-03-15', '0'),
	(7, 14, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by Pembelian Logistik form', '2018-03-15', '1'),
	(8, 14, 'Open by User kaisha', 'Posted by User kaisha', 'Open By User kaisha', 'Open Record by Pembelian Logistik form', '2018-03-15', '2'),
	(9, 14, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pembelian Logistik form', '2018-03-15', '2'),
	(10, 15, 'Void By System', 'None', 'None', 'Create By System', '2018-03-16', '0'),
	(11, 15, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by Pembelian Logistik form', '2018-03-16', '1'),
	(12, 16, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0'),
	(13, 17, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0'),
	(14, 18, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0'),
	(15, 19, 'Void By System', 'None', 'None', 'Create By System', '2018-04-16', '0'),
	(16, 19, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by Pembelian Logistik form', '2018-04-16', '1'),
	(17, 19, 'Posted by User kaisha', 'Posted by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pembelian Logistik form', '2018-04-16', '1'),
	(18, 19, 'Posted by User kaisha', 'Posted by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pembelian Logistik form', '2018-04-16', '1'),
	(19, 19, 'Posted by User kaisha', 'Posted by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pembelian Logistik form', '2018-04-16', '1'),
	(20, 20, 'Void By System', 'None', 'None', 'Create By System', '2018-07-05', '0'),
	(21, 20, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by Pembelian Logistik form', '2018-07-05', '1'),
	(22, 20, 'Posted by User kaisha', 'Posted by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pembelian Logistik form', '2018-07-05', '1'),
	(23, 20, 'Posted by User kaisha', 'Posted by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pembelian Logistik form', '2018-07-05', '1'),
	(24, 21, 'Void By System', 'None', 'None', 'Create By System', '2018-07-05', '0'),
	(25, 21, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by Pembelian Logistik form', '2018-07-05', '1'),
	(26, 21, 'Posted by User kaisha', 'Posted by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pembelian Logistik form', '2018-07-05', '1'),
	(27, 22, 'Void By System', 'None', 'None', 'Create By System', '2018-07-05', '0'),
	(28, 22, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by Pembelian Logistik form', '2018-07-05', '1'),
	(29, 22, 'Open by User kaisha', 'Posted by User kaisha', 'Open By User kaisha', 'Open Record by Pembelian Logistik form', '2018-07-05', '2'),
	(30, 21, 'Open by User kaisha', 'Posted by User kaisha', 'Open By User kaisha', 'Open Record by Pembelian Logistik form', '2018-07-05', '2'),
	(31, 20, 'Open by User kaisha', 'Posted by User kaisha', 'Open By User kaisha', 'Open Record by Pembelian Logistik form', '2018-07-05', '2'),
	(32, 20, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pembelian Logistik form', '2018-07-05', '2'),
	(33, 21, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pembelian Logistik form', '2018-07-05', '2'),
	(34, 22, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pembelian Logistik form', '2018-07-05', '2'),
	(35, 22, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pembelian Logistik form', '2018-07-05', '2'),
	(36, 22, 'Open by User kaisha', 'Open by User kaisha', 'Open By User kaisha', 'Open Record by Pembelian Logistik form', '2018-07-05', '3'),
	(37, 22, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pembelian Logistik form', '2018-07-05', '3'),
	(38, 21, 'Open by User kaisha', 'Open by User kaisha', 'Open By User kaisha', 'Open Record by Pembelian Logistik form', '2018-07-05', '3'),
	(39, 21, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pembelian Logistik form', '2018-07-05', '3'),
	(40, 21, 'Open by User kaisha', 'Open by User kaisha', 'Open By User kaisha', 'Open Record by Pembelian Logistik form', '2018-07-06', '4'),
	(41, 21, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pembelian Logistik form', '2018-07-06', '4'),
	(42, 21, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pembelian Logistik form', '2018-07-06', '4'),
	(43, 23, 'Void By System', 'None', 'None', 'Create By System', '2018-08-14', '0'),
	(44, 23, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by Pembelian Logistik form', '2018-08-14', '1');
/*!40000 ALTER TABLE `his_prc` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_prcga
DROP TABLE IF EXISTS `his_prcga`;
CREATE TABLE IF NOT EXISTS `his_prcga` (
  `HISPRCGA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRCGA_ID` int(11) DEFAULT NULL,
  `HISPRCGA_STS` char(50) DEFAULT NULL,
  `HISPRCGA_OLD` char(50) DEFAULT NULL,
  `HISPRCGA_NEW` char(50) DEFAULT NULL,
  `HISPRCGA_INFO` char(200) DEFAULT NULL,
  `HISPRCGA_DATE` date DEFAULT NULL,
  `HISPRCGA_UPCOUNT` char(50) DEFAULT NULL,
  PRIMARY KEY (`HISPRCGA_ID`),
  KEY `FKHISPRCGA1` (`PRCGA_ID`),
  CONSTRAINT `FKHISPRCGA1` FOREIGN KEY (`PRCGA_ID`) REFERENCES `trx_prc_ga` (`PRCGA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_prcga: ~7 rows (approximately)
/*!40000 ALTER TABLE `his_prcga` DISABLE KEYS */;
INSERT INTO `his_prcga` (`HISPRCGA_ID`, `PRCGA_ID`, `HISPRCGA_STS`, `HISPRCGA_OLD`, `HISPRCGA_NEW`, `HISPRCGA_INFO`, `HISPRCGA_DATE`, `HISPRCGA_UPCOUNT`) VALUES
	(1, 7, 'Void By System', 'None', 'None', 'Create By System', '2018-04-04', '0'),
	(2, 8, 'Void By System', 'None', 'None', 'Create By System', '2018-04-04', '0'),
	(4, 10, 'Void By System', 'None', 'None', 'Create By System', '2018-04-16', '0'),
	(5, 11, 'Void By System', 'None', 'None', 'Create By System', '2018-04-27', '0'),
	(6, 11, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by Pembelian GA form', '2018-04-27', '1'),
	(7, 11, 'Posted by User kaisha', 'Posted by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pembelian GA form', '2018-04-27', '1'),
	(8, 11, 'Open by User kaisha', 'Posted by User kaisha', 'Open By User kaisha', 'Open Record by Pembelian GA form', '2018-04-27', '2'),
	(9, 11, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pembelian GA form', '2018-04-27', '2');
/*!40000 ALTER TABLE `his_prcga` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_retprc
DROP TABLE IF EXISTS `his_retprc`;
CREATE TABLE IF NOT EXISTS `his_retprc` (
  `HISRTPRC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RTPRC_ID` int(11) DEFAULT NULL,
  `HISRTPRC_STS` char(50) DEFAULT NULL,
  `HISRTPRC_OLD` char(50) DEFAULT NULL,
  `HISRTPRC_NEW` char(50) DEFAULT NULL,
  `HISRTPRC_INFO` varchar(1024) DEFAULT NULL,
  `HISRTPRC_DATE` date DEFAULT NULL,
  `HISRTPRC_UPCOUNT` char(1) DEFAULT NULL,
  PRIMARY KEY (`HISRTPRC_ID`),
  KEY `FKRTPRCHIS1` (`RTPRC_ID`),
  CONSTRAINT `FKRTPRCHIS1` FOREIGN KEY (`RTPRC_ID`) REFERENCES `procurement_ret` (`RTPRC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_retprc: ~6 rows (approximately)
/*!40000 ALTER TABLE `his_retprc` DISABLE KEYS */;
INSERT INTO `his_retprc` (`HISRTPRC_ID`, `RTPRC_ID`, `HISRTPRC_STS`, `HISRTPRC_OLD`, `HISRTPRC_NEW`, `HISRTPRC_INFO`, `HISRTPRC_DATE`, `HISRTPRC_UPCOUNT`) VALUES
	(1, 3, 'Void By System', 'None', 'None', 'Create By System', '2018-03-16', '0'),
	(2, 3, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by Retur Pembelian Logistik form', '2018-03-16', '1'),
	(3, 3, 'Open by User kaisha', 'Posted by User kaisha', 'Open By User kaisha', 'Open Record by Retur Pembelian Logistik form', '2018-03-16', '2'),
	(6, 3, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Retur Pembelian Logistik form', '2018-03-16', '2'),
	(11, 8, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0'),
	(12, 9, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0'),
	(13, 10, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0');
/*!40000 ALTER TABLE `his_retprc` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_retusg
DROP TABLE IF EXISTS `his_retusg`;
CREATE TABLE IF NOT EXISTS `his_retusg` (
  `HISRTUSG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RTUSG_ID` int(11) DEFAULT NULL,
  `HISRTUSG_STS` char(50) DEFAULT NULL,
  `HISRTUSG_OLD` char(50) DEFAULT NULL,
  `HISRTUSG_NEW` char(50) DEFAULT NULL,
  `HISRTUSG_INFO` varchar(1024) DEFAULT NULL,
  `HISRTUSG_DATE` date DEFAULT NULL,
  `HISRTUSG_UPCOUNT` char(5) DEFAULT NULL,
  PRIMARY KEY (`HISRTUSG_ID`),
  KEY `FKHISRTUSG1` (`RTUSG_ID`),
  CONSTRAINT `FKHISRTUSG1` FOREIGN KEY (`RTUSG_ID`) REFERENCES `usage_ret` (`RTUSG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_retusg: ~6 rows (approximately)
/*!40000 ALTER TABLE `his_retusg` DISABLE KEYS */;
INSERT INTO `his_retusg` (`HISRTUSG_ID`, `RTUSG_ID`, `HISRTUSG_STS`, `HISRTUSG_OLD`, `HISRTUSG_NEW`, `HISRTUSG_INFO`, `HISRTUSG_DATE`, `HISRTUSG_UPCOUNT`) VALUES
	(1, 1, 'Void By System', 'None', 'None', 'Create By System', '2018-03-19', '0'),
	(4, 1, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by Retur Pemakaian Logistik form', '2018-03-19', '1'),
	(7, 1, 'Open by User kaisha', 'Posted by User kaisha', 'Open By User kaisha', 'Open Record by Retur Pemakaian Logistik form', '2018-03-19', '2'),
	(8, 1, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Retur Pemakaian Logistik form', '2018-03-19', '2'),
	(9, 2, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0'),
	(10, 3, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0'),
	(11, 4, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0');
/*!40000 ALTER TABLE `his_retusg` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_rtprcga
DROP TABLE IF EXISTS `his_rtprcga`;
CREATE TABLE IF NOT EXISTS `his_rtprcga` (
  `HISRTPRCGA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RTPRCGA_ID` int(11) DEFAULT NULL,
  `HISRTPRCGA_STS` char(50) DEFAULT NULL,
  `HISRTPRCGA_OLD` char(50) DEFAULT NULL,
  `HISRTPRCGA_NEW` char(50) DEFAULT NULL,
  `HISRTPRCGA_INFO` char(200) DEFAULT NULL,
  `HISRTPRCGA_DATE` date DEFAULT NULL,
  `HISRTPRCGA_UPCOUNT` char(50) DEFAULT NULL,
  PRIMARY KEY (`HISRTPRCGA_ID`),
  KEY `FKHISRTPRCGA1` (`RTPRCGA_ID`),
  CONSTRAINT `FKHISRTPRCGA1` FOREIGN KEY (`RTPRCGA_ID`) REFERENCES `prcga_ret` (`RTPRCGA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_rtprcga: ~2 rows (approximately)
/*!40000 ALTER TABLE `his_rtprcga` DISABLE KEYS */;
INSERT INTO `his_rtprcga` (`HISRTPRCGA_ID`, `RTPRCGA_ID`, `HISRTPRCGA_STS`, `HISRTPRCGA_OLD`, `HISRTPRCGA_NEW`, `HISRTPRCGA_INFO`, `HISRTPRCGA_DATE`, `HISRTPRCGA_UPCOUNT`) VALUES
	(1, 1, 'Void By System', 'None', 'None', 'Create By System', '2018-04-04', '0'),
	(2, 2, 'Void By System', 'None', 'None', 'Create By System', '2018-04-04', '0');
/*!40000 ALTER TABLE `his_rtprcga` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_rtusgga
DROP TABLE IF EXISTS `his_rtusgga`;
CREATE TABLE IF NOT EXISTS `his_rtusgga` (
  `HISRTUSGGA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RTUSGGA_ID` int(11) DEFAULT NULL,
  `HISRTUSGGA_STS` char(50) DEFAULT NULL,
  `HISRTUSGGA_OLD` char(50) DEFAULT NULL,
  `HISRTUSGGA_NEW` char(50) DEFAULT NULL,
  `HISRTUSGGA_INFO` char(200) DEFAULT NULL,
  `HISRTUSGGA_DATE` date DEFAULT NULL,
  `HISRTUSGGA_UPCOUNT` char(50) DEFAULT NULL,
  PRIMARY KEY (`HISRTUSGGA_ID`),
  KEY `FKHISRTUSGGA1` (`RTUSGGA_ID`),
  CONSTRAINT `FKHISRTUSGGA1` FOREIGN KEY (`RTUSGGA_ID`) REFERENCES `usage_ga_ret` (`RTUSGGA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_rtusgga: ~2 rows (approximately)
/*!40000 ALTER TABLE `his_rtusgga` DISABLE KEYS */;
INSERT INTO `his_rtusgga` (`HISRTUSGGA_ID`, `RTUSGGA_ID`, `HISRTUSGGA_STS`, `HISRTUSGGA_OLD`, `HISRTUSGGA_NEW`, `HISRTUSGGA_INFO`, `HISRTUSGGA_DATE`, `HISRTUSGGA_UPCOUNT`) VALUES
	(1, 1, 'Void By System', 'None', 'None', 'Create By System', '2018-04-04', '0'),
	(2, 2, 'Void By System', 'None', 'None', 'Create By System', '2018-04-04', '0');
/*!40000 ALTER TABLE `his_rtusgga` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_usg
DROP TABLE IF EXISTS `his_usg`;
CREATE TABLE IF NOT EXISTS `his_usg` (
  `HISUSG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USG_ID` int(11) DEFAULT NULL,
  `HISUSG_STS` char(30) DEFAULT NULL,
  `HISUSG_OLD` char(30) DEFAULT NULL,
  `HISUSG_NEW` char(30) DEFAULT NULL,
  `HISUSG_INFO` varchar(1024) DEFAULT NULL,
  `HISUSG_DATE` date DEFAULT NULL,
  `HISUSG_UPCOUNT` char(1) DEFAULT NULL,
  PRIMARY KEY (`HISUSG_ID`),
  KEY `FK_R91` (`USG_ID`),
  CONSTRAINT `FK_R91` FOREIGN KEY (`USG_ID`) REFERENCES `trx_usage` (`USG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_usg: ~6 rows (approximately)
/*!40000 ALTER TABLE `his_usg` DISABLE KEYS */;
INSERT INTO `his_usg` (`HISUSG_ID`, `USG_ID`, `HISUSG_STS`, `HISUSG_OLD`, `HISUSG_NEW`, `HISUSG_INFO`, `HISUSG_DATE`, `HISUSG_UPCOUNT`) VALUES
	(1, 13, 'Void By System', 'None', 'None', 'Create By System', '2018-03-19', '0'),
	(2, 13, 'Posted by User kaisha', 'Void By System', 'Posted By User kaisha', 'Original Save by Pemakaian Logistik form', '2018-03-19', '1'),
	(3, 13, 'Open by User kaisha', 'Posted by User kaisha', 'Open By User kaisha', 'Open Record by Pemakaian Logistik form', '2018-03-19', '2'),
	(4, 13, 'Posted by User kaisha', 'Open by User kaisha', 'Posted By User kaisha', 'Update by kaisha from Pemakaian Logistik form', '2018-03-19', '2'),
	(5, 14, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0'),
	(6, 15, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0'),
	(7, 16, 'Void By System', 'None', 'None', 'Create By System', '2018-04-03', '0');
/*!40000 ALTER TABLE `his_usg` ENABLE KEYS */;

-- Dumping structure for table mtpd2.his_usgga
DROP TABLE IF EXISTS `his_usgga`;
CREATE TABLE IF NOT EXISTS `his_usgga` (
  `HISUSGGA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USGGA_ID` int(11) DEFAULT NULL,
  `HISUSGGA_STS` char(50) DEFAULT NULL,
  `HISUSGGA_OLD` char(50) DEFAULT NULL,
  `HISUSGGA_NEW` char(50) DEFAULT NULL,
  `HISUSGGA_INFO` char(200) DEFAULT NULL,
  `HISUSGGA_DATE` date DEFAULT NULL,
  `HISUSGGA_UPCOUNT` char(50) DEFAULT NULL,
  PRIMARY KEY (`HISUSGGA_ID`),
  KEY `FKHISUSGGA1` (`USGGA_ID`),
  CONSTRAINT `FKHISUSGGA1` FOREIGN KEY (`USGGA_ID`) REFERENCES `trx_usage_ga` (`USGGA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.his_usgga: ~2 rows (approximately)
/*!40000 ALTER TABLE `his_usgga` DISABLE KEYS */;
INSERT INTO `his_usgga` (`HISUSGGA_ID`, `USGGA_ID`, `HISUSGGA_STS`, `HISUSGGA_OLD`, `HISUSGGA_NEW`, `HISUSGGA_INFO`, `HISUSGGA_DATE`, `HISUSGGA_UPCOUNT`) VALUES
	(1, 8, 'Void By System', 'None', 'None', 'Create By System', '2018-04-04', '0'),
	(2, 9, 'Void By System', 'None', 'None', 'Create By System', '2018-04-04', '0');
/*!40000 ALTER TABLE `his_usgga` ENABLE KEYS */;

-- Dumping structure for table mtpd2.invoice_type
DROP TABLE IF EXISTS `invoice_type`;
CREATE TABLE IF NOT EXISTS `invoice_type` (
  `INC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INC_CODE` char(30) DEFAULT NULL,
  `INC_NAME` char(150) DEFAULT NULL,
  `INC_ACCRCV` char(150) DEFAULT NULL,
  `INC_ACCRCVNAME` char(150) DEFAULT NULL,
  `INC_ACCINC` char(150) DEFAULT NULL,
  `INC_ACCINCNAME` char(150) DEFAULT NULL,
  `INC_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`INC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.invoice_type: ~2 rows (approximately)
/*!40000 ALTER TABLE `invoice_type` DISABLE KEYS */;
INSERT INTO `invoice_type` (`INC_ID`, `INC_CODE`, `INC_NAME`, `INC_ACCRCV`, `INC_ACCRCVNAME`, `INC_ACCINC`, `INC_ACCINCNAME`, `INC_DTSTS`) VALUES
	(1, 'IVT-00001', 'Outdoor', '6', '004001-Piutang Usaha Outdoor', '9', '005001-Pendapatan Outdoor Diterima Dimuka', '1'),
	(2, 'IVT-00002', 'Media', '8', '004003-Piutang Usaha Media', '11', '005003-Pendapatan Media Diterima Dimuka', '1'),
	(3, 'IVT-00003', 'Pajak Reklame', '7', '004002-Piutang Usaha Pajak Reklame', '10', '005002-Pendapatan Pajak Reklame  Diterima Dimuka', '1'),
	(4, 'IVT-00004', 'Tes', '1', '001001-Kas Surabaya', '2', '001002-Kas Jakarta', '0'),
	(5, 'IVT-00005', 'a', '1', '001001-Kas Surabaya', '2', '001002-Kas Jakarta', '0');
/*!40000 ALTER TABLE `invoice_type` ENABLE KEYS */;

-- Dumping structure for table mtpd2.inv_details
DROP TABLE IF EXISTS `inv_details`;
CREATE TABLE IF NOT EXISTS `inv_details` (
  `INVDET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INV_ID` int(11) DEFAULT NULL,
  `APPR_ID` int(11) DEFAULT '0',
  `INVDET_TERMID` int(11) DEFAULT '0',
  `INVDET_TERM` char(50) DEFAULT '0',
  `INVDET_SUB` bigint(20) DEFAULT NULL,
  `INVDET_AMOUNT` bigint(20) DEFAULT '0',
  `INVDET_PPNAM` bigint(20) DEFAULT NULL,
  `INVDET_PPHAM` bigint(20) DEFAULT NULL,
  `INVDET_TERMBRCID` int(11) DEFAULT '0',
  `INVDET_BRCTERM` char(50) DEFAULT '0',
  `INVDET_BRCSUB` bigint(20) DEFAULT NULL,
  `INVDET_BRCAMOUNT` bigint(20) DEFAULT '0',
  `INVDET_PPNBRCAM` bigint(20) DEFAULT NULL,
  `INVDET_PPHBRCAM` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`INVDET_ID`),
  KEY `FK_INVDET1` (`APPR_ID`),
  KEY `FK_INVDET2` (`INV_ID`),
  CONSTRAINT `FK_INVDET1` FOREIGN KEY (`APPR_ID`) REFERENCES `trx_approvalbill` (`APPR_ID`),
  CONSTRAINT `FK_INVDET2` FOREIGN KEY (`INV_ID`) REFERENCES `trx_invoice` (`INV_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.inv_details: ~9 rows (approximately)
/*!40000 ALTER TABLE `inv_details` DISABLE KEYS */;
INSERT INTO `inv_details` (`INVDET_ID`, `INV_ID`, `APPR_ID`, `INVDET_TERMID`, `INVDET_TERM`, `INVDET_SUB`, `INVDET_AMOUNT`, `INVDET_PPNAM`, `INVDET_PPHAM`, `INVDET_TERMBRCID`, `INVDET_BRCTERM`, `INVDET_BRCSUB`, `INVDET_BRCAMOUNT`, `INVDET_PPNBRCAM`, `INVDET_PPHBRCAM`) VALUES
	(3, 3, 16, 21, 'Termin 1', 125000000, 137500000, 12500000, 0, 0, '', 0, 0, 0, 0),
	(4, 5, 16, 21, 'Termin 1', 10000000, 10000000, 0, 0, 0, '', 0, 0, 0, 0),
	(10, 6, 16, 22, 'Termin 2', 10000000, 10000000, 0, 0, 0, '', 0, 0, 0, 0),
	(11, 7, 12, 19, 'term1', 3500000, 3500000, 0, 0, 0, '', 0, 0, 0, 0),
	(12, 8, 12, 19, 'term1', 60000000, 66000000, 6000000, 0, 0, '', 0, 0, 0, 0),
	(14, 10, 17, 24, 'Termin 1', 80000000, 88000000, 8000000, 0, 0, '', 0, 0, 0, 0),
	(15, 11, 19, 25, 'T1', 15000000, 15000000, 0, 0, 0, '', 0, 0, 0, 0),
	(16, 19, 32, 28, '1', 50000000, 55000000, 5000000, NULL, 0, '', 0, 0, 0, NULL),
	(17, 20, 32, 28, '1', 7500000, 7500000, 0, NULL, 0, '', 0, 0, 0, NULL);
/*!40000 ALTER TABLE `inv_details` ENABLE KEYS */;

-- Dumping structure for table mtpd2.jou_credit
DROP TABLE IF EXISTS `jou_credit`;
CREATE TABLE IF NOT EXISTS `jou_credit` (
  `JOUCR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COA_ID` int(11) DEFAULT NULL,
  `JOU_ID` int(11) DEFAULT NULL,
  `JOUCR_CODE` char(30) DEFAULT NULL,
  `JOUCR_DATE` date DEFAULT NULL,
  `JOUCR_INFO` varchar(1024) DEFAULT NULL,
  `JOUCR_REFF` char(200) DEFAULT NULL,
  `JOUCR_AMOUNT` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`JOUCR_ID`),
  KEY `FK_R129` (`JOU_ID`),
  KEY `FK_R131` (`COA_ID`),
  CONSTRAINT `FK_R129` FOREIGN KEY (`JOU_ID`) REFERENCES `account_journal` (`JOU_ID`),
  CONSTRAINT `FK_R131` FOREIGN KEY (`COA_ID`) REFERENCES `chart_of_account` (`COA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.jou_credit: ~0 rows (approximately)
/*!40000 ALTER TABLE `jou_credit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jou_credit` ENABLE KEYS */;

-- Dumping structure for table mtpd2.jou_debit
DROP TABLE IF EXISTS `jou_debit`;
CREATE TABLE IF NOT EXISTS `jou_debit` (
  `JOUDB_ID` int(11) NOT NULL AUTO_INCREMENT,
  `JOU_ID` int(11) DEFAULT NULL,
  `COA_ID` int(11) DEFAULT NULL,
  `JOUDB_CODE` char(30) DEFAULT NULL,
  `JOUDB_DATE` date DEFAULT NULL,
  `JOUDB_INFO` varchar(1024) DEFAULT NULL,
  `JOUDB_REFF` char(200) DEFAULT NULL,
  `JOUDB_AMOUNT` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`JOUDB_ID`),
  KEY `FK_R128` (`JOU_ID`),
  KEY `FK_R130` (`COA_ID`),
  CONSTRAINT `FK_R128` FOREIGN KEY (`JOU_ID`) REFERENCES `account_journal` (`JOU_ID`),
  CONSTRAINT `FK_R130` FOREIGN KEY (`COA_ID`) REFERENCES `chart_of_account` (`COA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.jou_debit: ~0 rows (approximately)
/*!40000 ALTER TABLE `jou_debit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jou_debit` ENABLE KEYS */;

-- Dumping structure for table mtpd2.jou_details
DROP TABLE IF EXISTS `jou_details`;
CREATE TABLE IF NOT EXISTS `jou_details` (
  `JOUDET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `JOU_ID` int(11) NOT NULL DEFAULT '0',
  `COA_ID` int(11) NOT NULL DEFAULT '0',
  `JOUDET_DEBIT` decimal(18,2) NOT NULL DEFAULT '0.00',
  `JOUDET_CREDIT` decimal(18,2) NOT NULL DEFAULT '0.00',
  `JOUDET_STS` char(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`JOUDET_ID`),
  KEY `FKJOUDET1` (`JOU_ID`),
  KEY `FKJOUDET2` (`COA_ID`),
  CONSTRAINT `FKJOUDET1` FOREIGN KEY (`JOU_ID`) REFERENCES `account_journal` (`JOU_ID`),
  CONSTRAINT `FKJOUDET2` FOREIGN KEY (`COA_ID`) REFERENCES `chart_of_account` (`COA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.jou_details: ~119 rows (approximately)
/*!40000 ALTER TABLE `jou_details` DISABLE KEYS */;
INSERT INTO `jou_details` (`JOUDET_ID`, `JOU_ID`, `COA_ID`, `JOUDET_DEBIT`, `JOUDET_CREDIT`, `JOUDET_STS`) VALUES
	(3, 1, 12, 100000.00, 0.00, '0'),
	(4, 1, 1, 0.00, 100000.00, '0'),
	(5, 2, 12, 50000.00, 0.00, '0'),
	(6, 2, 1, 0.00, 50000.00, '0'),
	(7, 3, 12, 30000.00, 0.00, '0'),
	(8, 3, 1, 0.00, 30000.00, '0'),
	(9, 4, 2, 0.00, 100000.00, '0'),
	(10, 4, 12, 100000.00, 0.00, '0'),
	(11, 5, 5, 100000.00, 0.00, '0'),
	(12, 5, 1, 0.00, 100000.00, '0'),
	(13, 6, 1, 0.00, 200000.00, '0'),
	(14, 6, 5, 100000.00, 0.00, '0'),
	(15, 6, 12, 100000.00, 0.00, '0'),
	(16, 8, 1, 100000.00, 0.00, '0'),
	(17, 8, 3, 0.00, 100000.00, '0'),
	(18, 9, 13, 100000.00, 0.00, '0'),
	(19, 9, 1, 0.00, 100000.00, '0'),
	(20, 10, 11, 0.00, 100000.00, '0'),
	(21, 10, 1, 100000.00, 0.00, '0'),
	(22, 11, 5, 100000.00, 0.00, '0'),
	(23, 11, 1, 0.00, 100000.00, '0'),
	(24, 12, 14, 100000.00, 0.00, '0'),
	(25, 12, 11, 0.00, 100000.00, '0'),
	(26, 13, 1, 0.00, 75000.00, '0'),
	(27, 13, 12, 75000.00, 0.00, '0'),
	(28, 14, 13, 275000.00, 0.00, '0'),
	(29, 14, 1, 0.00, 275000.00, '0'),
	(30, 15, 1, 0.00, 1000000.00, '0'),
	(31, 15, 5, 1000000.00, 0.00, '0'),
	(41, 21, 6, 137500000.00, 0.00, '0'),
	(42, 21, 9, 0.00, 137500000.00, '0'),
	(43, 22, 7, 10000000.00, 0.00, '0'),
	(44, 22, 10, 0.00, 10000000.00, '0'),
	(47, 23, 7, 10000000.00, 0.00, '0'),
	(48, 23, 10, 0.00, 10000000.00, '0'),
	(53, 27, 1, 9000000.00, 0.00, '0'),
	(54, 27, 7, 0.00, 9000000.00, '0'),
	(55, 27, 1, 1000000.00, 0.00, '0'),
	(56, 27, 7, 0.00, 1000000.00, '0'),
	(57, 28, 7, 3500000.00, 0.00, '0'),
	(58, 28, 10, 0.00, 3500000.00, '0'),
	(59, 29, 6, 66000000.00, 0.00, '0'),
	(60, 29, 9, 0.00, 66000000.00, '0'),
	(61, 32, 1, 0.00, 100000.00, '0'),
	(62, 32, 13, 100000.00, 0.00, '0'),
	(69, 33, 6, 88000000.00, 0.00, '0'),
	(70, 33, 9, 0.00, 88000000.00, '0'),
	(77, 34, 7, 15000000.00, 0.00, '0'),
	(78, 34, 10, 0.00, 15000000.00, '0'),
	(79, 35, 1, 15000000.00, 0.00, '0'),
	(80, 35, 11, 0.00, 15000000.00, '0'),
	(85, 36, 22, 5500000.00, 0.00, '0'),
	(86, 36, 23, 0.00, 5500000.00, '0'),
	(99, 39, 22, 175000.00, 0.00, '0'),
	(100, 39, 23, 0.00, 175000.00, '0'),
	(103, 40, 1, 10000000.00, 0.00, '0'),
	(104, 40, 7, 0.00, 10000000.00, '0'),
	(105, 41, 1, 0.00, 100000.00, '0'),
	(106, 41, 24, 100000.00, 0.00, '0'),
	(107, 42, 1, 0.00, 5500000.00, '0'),
	(108, 42, 24, 5500000.00, 0.00, '0'),
	(111, 43, 1, 0.00, 10000.00, '0'),
	(112, 43, 24, 10000.00, 0.00, '0'),
	(113, 44, 1, 10000.00, 0.00, '0'),
	(114, 44, 24, 0.00, 10000.00, '0'),
	(115, 45, 3, 100000.00, 0.00, '0'),
	(116, 45, 1, 0.00, 100000.00, '0'),
	(119, 46, 3, 0.00, 100000.00, '0'),
	(120, 46, 24, 100000.00, 0.00, '0'),
	(125, 47, 22, 15000.00, 0.00, '0'),
	(126, 47, 23, 0.00, 15000.00, '0'),
	(133, 49, 1, 0.00, 100000.00, '0'),
	(134, 49, 25, 100000.00, 0.00, '0'),
	(135, 48, 1, 100000.00, 0.00, '0'),
	(136, 48, 25, 0.00, 100000.00, '0'),
	(137, 50, 1, 0.00, 50000.00, '0'),
	(138, 50, 25, 50000.00, 0.00, '0'),
	(139, 51, 1, 0.00, 100000.00, '0'),
	(140, 51, 25, 100000.00, 0.00, '0'),
	(143, 52, 3, 15000000.00, 0.00, '0'),
	(144, 52, 6, 0.00, 15000000.00, '0'),
	(145, 53, 3, 1000000.00, 0.00, '0'),
	(146, 53, 6, 0.00, 1000000.00, '0'),
	(147, 54, 3, 0.00, 1000000.00, '0'),
	(148, 54, 24, 1000000.00, 0.00, '0'),
	(149, 55, 3, 0.00, 500000.00, '0'),
	(150, 55, 24, 500000.00, 0.00, '0'),
	(155, 57, 3, 0.00, 1000000.00, '0'),
	(156, 57, 24, 1000000.00, 0.00, '0'),
	(159, 59, 1, 100000.00, 0.00, '0'),
	(160, 59, 25, 0.00, 100000.00, '0'),
	(161, 60, 1, 0.00, 100000.00, '0'),
	(162, 60, 25, 100000.00, 0.00, '0'),
	(163, 61, 28, 0.00, 100000.00, '0'),
	(164, 61, 25, 100000.00, 0.00, '0'),
	(165, 62, 28, 100000.00, 0.00, '0'),
	(166, 62, 25, 0.00, 100000.00, '0'),
	(171, 56, 27, 0.00, 1000000.00, '0'),
	(172, 56, 3, 1000000.00, 0.00, '0'),
	(173, 58, 26, 0.00, 1000000.00, '0'),
	(174, 58, 3, 1000000.00, 0.00, '0'),
	(195, 63, 23, 0.00, 5075000.00, '0'),
	(196, 63, 22, 4000000.00, 0.00, '0'),
	(197, 63, 30, 500000.00, 0.00, '0'),
	(198, 63, 31, 450000.00, 0.00, '0'),
	(199, 63, 29, 125000.00, 0.00, '0'),
	(209, 65, 23, 0.00, 115000.00, '0'),
	(210, 65, 22, 100000.00, 0.00, '0'),
	(211, 65, 29, 15000.00, 0.00, '0'),
	(221, 66, 6, 55000000.00, 0.00, '0'),
	(222, 66, 9, 0.00, 50000000.00, '0'),
	(223, 66, 32, 0.00, 5000000.00, '0'),
	(224, 67, 7, 7500000.00, 0.00, '0'),
	(225, 67, 10, 0.00, 7500000.00, '0'),
	(229, 64, 23, 0.00, 1200000.00, '0'),
	(230, 64, 22, 1000000.00, 0.00, '0'),
	(231, 64, 31, 200000.00, 0.00, '0'),
	(232, 68, 23, 0.00, 2500000.00, '0'),
	(233, 68, 22, 2500000.00, 0.00, '0');
/*!40000 ALTER TABLE `jou_details` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_bank
DROP TABLE IF EXISTS `master_bank`;
CREATE TABLE IF NOT EXISTS `master_bank` (
  `BANK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COA_ID` int(11) DEFAULT NULL,
  `BANK_CODE` char(30) DEFAULT NULL,
  `BANK_NAME` char(100) DEFAULT NULL,
  `BANK_ACC` char(100) DEFAULT NULL,
  `BANK_ACCNAME` char(100) DEFAULT NULL,
  `BANK_PRODTYPE` char(100) DEFAULT NULL,
  `BANK_BRANCH` varchar(1024) DEFAULT NULL,
  `BANK_CURR` char(100) DEFAULT NULL,
  `BANK_INFO` varchar(1024) DEFAULT NULL,
  `BANK_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`BANK_ID`),
  KEY `FK_R103` (`COA_ID`),
  CONSTRAINT `FK_R103` FOREIGN KEY (`COA_ID`) REFERENCES `chart_of_account` (`COA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_bank: ~2 rows (approximately)
/*!40000 ALTER TABLE `master_bank` DISABLE KEYS */;
INSERT INTO `master_bank` (`BANK_ID`, `COA_ID`, `BANK_CODE`, `BANK_NAME`, `BANK_ACC`, `BANK_ACCNAME`, `BANK_PRODTYPE`, `BANK_BRANCH`, `BANK_CURR`, `BANK_INFO`, `BANK_DTSTS`) VALUES
	(1, 3, 'BNK-00001', 'Bank BCA Surabaya', NULL, NULL, NULL, NULL, NULL, 'Rek 019281910', '1'),
	(2, 4, 'BNK-00002', 'Bank BCA Jakarta', '05120201', 'Match Ad', 'Tahapan', 'Pierre Tendean Jakarta Utara', 'IDR', 'Infooo', '1');
/*!40000 ALTER TABLE `master_bank` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_bboard
DROP TABLE IF EXISTS `master_bboard`;
CREATE TABLE IF NOT EXISTS `master_bboard` (
  `BB_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BB_CODE` char(30) DEFAULT NULL,
  `BB_NAME` char(100) DEFAULT NULL,
  `BB_INFO` varchar(1024) DEFAULT NULL,
  `BB_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`BB_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_bboard: ~2 rows (approximately)
/*!40000 ALTER TABLE `master_bboard` DISABLE KEYS */;
INSERT INTO `master_bboard` (`BB_ID`, `BB_CODE`, `BB_NAME`, `BB_INFO`, `BB_DTSTS`) VALUES
	(1, 'BBO-00001', 'Billboard', 'Info billboard', '1'),
	(2, 'BBO-00002', 'Videotron', 'Info videotron', '1');
/*!40000 ALTER TABLE `master_bboard` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_branch
DROP TABLE IF EXISTS `master_branch`;
CREATE TABLE IF NOT EXISTS `master_branch` (
  `BRANCH_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BRANCH_CODE` char(30) DEFAULT NULL,
  `BRANCH_NAME` char(200) DEFAULT NULL,
  `BRANCH_STATUS` char(100) DEFAULT NULL,
  `BRANCH_ADDRESS` varchar(1024) DEFAULT NULL,
  `BRANCH_CITY` char(100) DEFAULT NULL,
  `BRANCH_INIT` char(10) DEFAULT NULL,
  `BRANCH_PHONE` char(30) DEFAULT NULL,
  `BRANCH_FAX` char(30) DEFAULT NULL,
  `BRANCH_LOGO` char(30) DEFAULT NULL,
  `BRANCH_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`BRANCH_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_branch: ~5 rows (approximately)
/*!40000 ALTER TABLE `master_branch` DISABLE KEYS */;
INSERT INTO `master_branch` (`BRANCH_ID`, `BRANCH_CODE`, `BRANCH_NAME`, `BRANCH_STATUS`, `BRANCH_ADDRESS`, `BRANCH_CITY`, `BRANCH_INIT`, `BRANCH_PHONE`, `BRANCH_FAX`, `BRANCH_LOGO`, `BRANCH_DTSTS`) VALUES
	(1, 'BRC-00001', 'Match Ad Pusat Surabaya', '0', 'JL. Lesti No.42', 'Surabaya', '', '0987654', '987654', 'logo_BRC-00001_1.png', '1'),
	(2, 'BRC-00002', 'Match Ad Cabang Surabaya', '1', 'JL. Lesti No.42', 'Surabaya', 'SBY', '098765', '98765', 'logo_1528100231_BRC-00002.png', '1'),
	(3, 'BRC-00003', 'Match Ad Cabang Jakarta', '1', 'JL Balikpapan', 'Jakarta', 'JKT', '0987654', '098765', 'logo_BRC-00003_.png', '1'),
	(4, 'BRC-00004', 'a', '0', 'a', 'a', 'a', '1', '1', NULL, '1'),
	(5, 'BRC-00005', 'b', '1', 'b', 'b', 'b', '2', '2', 'logo_BRC-00005_.jpg', '1');
/*!40000 ALTER TABLE `master_branch` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_currency
DROP TABLE IF EXISTS `master_currency`;
CREATE TABLE IF NOT EXISTS `master_currency` (
  `CURR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CURR_CODE` char(30) DEFAULT NULL,
  `CURR_SYMBOL` char(20) DEFAULT NULL,
  `CURR_NAME` char(100) DEFAULT NULL,
  `CURR_RATE` int(11) DEFAULT NULL,
  `CURR_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`CURR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_currency: ~2 rows (approximately)
/*!40000 ALTER TABLE `master_currency` DISABLE KEYS */;
INSERT INTO `master_currency` (`CURR_ID`, `CURR_CODE`, `CURR_SYMBOL`, `CURR_NAME`, `CURR_RATE`, `CURR_DTSTS`) VALUES
	(1, 'CUR-00001', 'Rp', 'Rupiah', 1, '1'),
	(2, 'CUR-00002', '$', 'US Dollar', 13000, '1');
/*!40000 ALTER TABLE `master_currency` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_customer
DROP TABLE IF EXISTS `master_customer`;
CREATE TABLE IF NOT EXISTS `master_customer` (
  `CUST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COA_ID` int(11) DEFAULT NULL,
  `CUST_CODE` char(30) DEFAULT NULL,
  `CUST_NAME` varchar(500) DEFAULT NULL,
  `CUST_ADDRESS` varchar(1024) DEFAULT NULL,
  `CUST_CITY` char(50) DEFAULT NULL,
  `CUST_POSTAL` char(30) DEFAULT NULL,
  `CUST_PROV` char(100) DEFAULT NULL,
  `CUST_PHONE` char(30) DEFAULT NULL,
  `CUST_FAX` char(30) DEFAULT NULL,
  `CUST_ACC` varchar(1024) DEFAULT NULL,
  `CUST_NPWPNAME` char(200) DEFAULT NULL,
  `CUST_NPWPACC` char(30) DEFAULT NULL,
  `CUST_NPWPADD` char(200) DEFAULT NULL,
  `CUST_NPKP` char(30) DEFAULT NULL,
  `CUST_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`),
  KEY `FK_R136` (`COA_ID`),
  CONSTRAINT `FK_R136` FOREIGN KEY (`COA_ID`) REFERENCES `chart_of_account` (`COA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_customer: ~5 rows (approximately)
/*!40000 ALTER TABLE `master_customer` DISABLE KEYS */;
INSERT INTO `master_customer` (`CUST_ID`, `COA_ID`, `CUST_CODE`, `CUST_NAME`, `CUST_ADDRESS`, `CUST_CITY`, `CUST_POSTAL`, `CUST_PROV`, `CUST_PHONE`, `CUST_FAX`, `CUST_ACC`, `CUST_NPWPNAME`, `CUST_NPWPACC`, `CUST_NPWPADD`, `CUST_NPKP`, `CUST_DTSTS`) VALUES
	(1, NULL, 'CST-00001', 'PT XWW', 'Margorejo Indah', 'Surabaya', '67890', 'Jawa Timur', '0987654', '098765', 'TBD', 'Suryono', '2345678', 'Surabaya', '2345679', '1'),
	(2, NULL, 'CST-00002', 'PT YZXE', 'Driyorejo Indah', 'Gresik', '45678', 'Jawa Timur', '45678080', '5678900', 'TBD', 'Bambang', '3456789', 'Gresik', '4567808', '1'),
	(3, NULL, 'CST-00003', 'PT Maju Sekali', 'JL Lesti No.55', 'Surabaya', '60241', 'Jawa Timur', '097189201', '083619101', 'PT Maju Sekali Acc', 'Brandon', '80886712831628', 'Surabaya', '88888888888888', '1'),
	(4, NULL, 'CST-00004', 'PT Jaya Sekali', 'Driyorejo Indah No.66', 'Gresik', '60898', 'Jawa Timur', '098765488', '09876567', 'PT Jaya Sekali Acc', 'Jaya', '981729102918', 'Gresik', '833102999999', '1');
/*!40000 ALTER TABLE `master_customer` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_cust_intern
DROP TABLE IF EXISTS `master_cust_intern`;
CREATE TABLE IF NOT EXISTS `master_cust_intern` (
  `CSTIN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PERSON_ID` int(11) DEFAULT NULL,
  `CSTIN_CODE` char(30) DEFAULT NULL,
  `CSTIN_INFO` varchar(1024) DEFAULT NULL,
  `CSTIN_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`CSTIN_ID`),
  KEY `FKCSTINT1` (`PERSON_ID`),
  CONSTRAINT `FKCSTINT1` FOREIGN KEY (`PERSON_ID`) REFERENCES `master_person` (`PERSON_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_cust_intern: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_cust_intern` DISABLE KEYS */;
INSERT INTO `master_cust_intern` (`CSTIN_ID`, `PERSON_ID`, `CSTIN_CODE`, `CSTIN_INFO`, `CSTIN_DTSTS`) VALUES
	(1, 2, 'CSTI-00001', 'tes', '1');
/*!40000 ALTER TABLE `master_cust_intern` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_dept
DROP TABLE IF EXISTS `master_dept`;
CREATE TABLE IF NOT EXISTS `master_dept` (
  `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEPT_CODE` char(30) DEFAULT NULL,
  `DEPT_NAME` char(30) DEFAULT NULL,
  `DEPT_INFO` varchar(1024) DEFAULT NULL,
  `DEPT_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_dept: ~2 rows (approximately)
/*!40000 ALTER TABLE `master_dept` DISABLE KEYS */;
INSERT INTO `master_dept` (`DEPT_ID`, `DEPT_CODE`, `DEPT_NAME`, `DEPT_INFO`, `DEPT_DTSTS`) VALUES
	(1, 'DPT-00001', 'IT', 'Departemen IT', '1'),
	(2, 'DPT-00002', 'GA', 'Departemen GA', '1'),
	(3, 'DPT-00003', 'qqq', 'aaaa', '1');
/*!40000 ALTER TABLE `master_dept` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_goods
DROP TABLE IF EXISTS `master_goods`;
CREATE TABLE IF NOT EXISTS `master_goods` (
  `GD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUPP_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `GD_CODE` char(30) DEFAULT NULL,
  `GD_NAME` char(100) DEFAULT NULL,
  `GD_UNIT` char(20) DEFAULT NULL,
  `GD_MEASURE` char(20) DEFAULT NULL,
  `GD_PRICE` int(11) DEFAULT NULL,
  `GD_INFO` varchar(1024) DEFAULT NULL,
  `GD_STS` char(10) DEFAULT NULL,
  `GD_TYPE` char(10) DEFAULT NULL,
  `GD_TYPESTOCK` char(10) DEFAULT NULL,
  `GD_STOCK` int(11) DEFAULT NULL,
  `GD_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`GD_ID`),
  KEY `FK_R19` (`SUPP_ID`),
  KEY `FKGD1` (`BRANCH_ID`),
  CONSTRAINT `FKGD1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R19` FOREIGN KEY (`SUPP_ID`) REFERENCES `master_supplier` (`SUPP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_goods: ~10 rows (approximately)
/*!40000 ALTER TABLE `master_goods` DISABLE KEYS */;
INSERT INTO `master_goods` (`GD_ID`, `SUPP_ID`, `BRANCH_ID`, `GD_CODE`, `GD_NAME`, `GD_UNIT`, `GD_MEASURE`, `GD_PRICE`, `GD_INFO`, `GD_STS`, `GD_TYPE`, `GD_TYPESTOCK`, `GD_STOCK`, `GD_DTSTS`) VALUES
	(1, 1, 1, 'BRG-00001', 'Pipa Siku', '1', 'Meter', 10000, 'Harga satuan pipa siku', 'Baru', 'Barang', '0', 40, '1'),
	(2, 2, 1, 'BRG-00002', 'Bolpen Pilot', '1', 'Pcs', 2000, 'Bolpen pilot', 'Baru', 'Barang', '0', 30, '1'),
	(3, 2, 1, 'BRG-00003', 'recovering 4mx8m', '1', 'kali', 1000000, 'inf', 'Baru', 'Jasa', '1', 1, '1'),
	(4, 3, 1, 'BRG-00004', 'Recovering lokasi Surabaya', '1', 'Kali', 5000000, 'Info recovering vendor Frengky', 'Baru', 'Jasa', '1', 0, '1'),
	(5, 1, NULL, 'BRG-00005', 'aa', 'aaa', 'aaa', 0, 'aaa', 'Bekas', 'Jasa', '1', 0, '0'),
	(6, 1, NULL, 'BRG-00006', 'aaa', 'aaa', 'aa', 111, 'aaa', 'Baru', 'Barang', '0', 0, '0'),
	(7, 1, 1, 'BRG-00007', 'Kertas HVS', '1', 'Rim', 35000, 'Harga kertas hvs 1 rim', 'Baru', 'Barang', '0', 15, '1'),
	(8, 3, 1, 'BRG-00008', 'a', 'a', 'a', 1111, 'a', 'Baru', 'Barang', '0', 0, '0'),
	(12, 2, 1, 'BRG-00009', 'v', 'v', 'v', 1, 'v ', 'Baru', 'Barang', '0', 0, '0'),
	(13, 1, 1, 'BRG-00010', 'a', 'a', 'a', 1, 'a', 'Baru', 'Barang', '0', 0, '0');
/*!40000 ALTER TABLE `master_goods` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_gov_type
DROP TABLE IF EXISTS `master_gov_type`;
CREATE TABLE IF NOT EXISTS `master_gov_type` (
  `GOV_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GOV_CODE` char(30) DEFAULT NULL,
  `GOV_NAME` varchar(100) DEFAULT NULL,
  `GOV_INFO` varchar(1024) DEFAULT NULL,
  `GOV_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`GOV_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_gov_type: ~2 rows (approximately)
/*!40000 ALTER TABLE `master_gov_type` DISABLE KEYS */;
INSERT INTO `master_gov_type` (`GOV_ID`, `GOV_CODE`, `GOV_NAME`, `GOV_INFO`, `GOV_DTSTS`) VALUES
	(1, 'GOV-00001', 'Pertamanan', 'Info pertamanan', '1'),
	(2, 'GOV-00002', 'Dishub Surabaya', 'Info dishub', '1');
/*!40000 ALTER TABLE `master_gov_type` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_location
DROP TABLE IF EXISTS `master_location`;
CREATE TABLE IF NOT EXISTS `master_location` (
  `LOC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GOV_ID` int(11) DEFAULT NULL,
  `LOC_CODE` char(30) DEFAULT NULL,
  `LOC_NAME` varchar(256) DEFAULT NULL,
  `LOC_ADDRESS` varchar(1024) DEFAULT NULL,
  `LOC_CITY` char(200) DEFAULT NULL,
  `LOC_INFO` varchar(1024) DEFAULT NULL,
  `LOC_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`LOC_ID`),
  KEY `FK_R7` (`GOV_ID`),
  CONSTRAINT `FK_R7` FOREIGN KEY (`GOV_ID`) REFERENCES `master_gov_type` (`GOV_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_location: ~2 rows (approximately)
/*!40000 ALTER TABLE `master_location` DISABLE KEYS */;
INSERT INTO `master_location` (`LOC_ID`, `GOV_ID`, `LOC_CODE`, `LOC_NAME`, `LOC_ADDRESS`, `LOC_CITY`, `LOC_INFO`, `LOC_DTSTS`) VALUES
	(1, 2, 'LOC-00001', 'Indragiri 61', 'JL Indragiri No.61', 'Surabaya', 'Info lokasi', '1'),
	(2, 1, 'LOC-00002', 'Hayam Wuruk 1', 'JL Hayam Wuruk No.01', 'Surabaya', 'Info lokasi', '1'),
	(3, 2, 'LOC-00003', 'Adityawarman 41', 'JL Adityawarman 41', 'Surabaya', 'Info lokasi', '1');
/*!40000 ALTER TABLE `master_location` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_menu
DROP TABLE IF EXISTS `master_menu`;
CREATE TABLE IF NOT EXISTS `master_menu` (
  `MENU_CODE` char(50) NOT NULL,
  `MENU_NAME` char(100) DEFAULT NULL,
  `MENU_STS` int(11) DEFAULT NULL,
  PRIMARY KEY (`MENU_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_menu: ~21 rows (approximately)
/*!40000 ALTER TABLE `master_menu` DISABLE KEYS */;
INSERT INTO `master_menu` (`MENU_CODE`, `MENU_NAME`, `MENU_STS`) VALUES
	('ACC', 'Accounting', 1),
	('BNK', 'Bank', 0),
	('BRC', 'Cabang', 0),
	('COA', 'Chart of Account', 0),
	('CURR', 'Currency', 0),
	('CUST', 'Customer', 0),
	('DEPT', 'Departemen', 0),
	('FIN', 'Finance', 1),
	('GA', 'General Affairs', 1),
	('GD', 'Barang', 0),
	('INVT', 'Jenis Invoice', 0),
	('LOC', 'Location', 0),
	('LOG', 'Logistik', 1),
	('MKT', 'Marketing', 1),
	('PAT', 'Permit', 0),
	('PMT', 'Permit', 1),
	('REK', 'Reklame', 0),
	('SLS', 'Salesforce', 0),
	('SUPP', 'Supplier', 0),
	('TRX', 'Transaction', 1),
	('USR', 'User', 0);
/*!40000 ALTER TABLE `master_menu` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_menumaster
DROP TABLE IF EXISTS `master_menumaster`;
CREATE TABLE IF NOT EXISTS `master_menumaster` (
  `MST_CODE` char(20) NOT NULL,
  `MST_NAME` char(100) DEFAULT NULL,
  PRIMARY KEY (`MST_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_menumaster: ~12 rows (approximately)
/*!40000 ALTER TABLE `master_menumaster` DISABLE KEYS */;
INSERT INTO `master_menumaster` (`MST_CODE`, `MST_NAME`) VALUES
	('BANK', 'Bank'),
	('BRC', 'Cabang'),
	('COA', 'Chart of Account'),
	('CURR', 'Currency'),
	('CUST', 'Customer'),
	('DEPT', 'Departemen'),
	('GD', 'Barang'),
	('INV', 'Jenis Invoice'),
	('LOC', 'Location'),
	('PAT', 'Permit'),
	('RKL', 'Reklame'),
	('SLS', 'Salesforce'),
	('SUPP', 'Supplier'),
	('USER', 'User');
/*!40000 ALTER TABLE `master_menumaster` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_menutrx
DROP TABLE IF EXISTS `master_menutrx`;
CREATE TABLE IF NOT EXISTS `master_menutrx` (
  `TRX_CODE` char(20) NOT NULL,
  `TRX_NAME` char(100) DEFAULT NULL,
  PRIMARY KEY (`TRX_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_menutrx: ~6 rows (approximately)
/*!40000 ALTER TABLE `master_menutrx` DISABLE KEYS */;
INSERT INTO `master_menutrx` (`TRX_CODE`, `TRX_NAME`) VALUES
	('ACC', 'Accounting'),
	('FIN', 'Finance'),
	('GA', 'General Affairs'),
	('LOG', 'Logistik'),
	('MKT', 'Marketing'),
	('PRM', 'Permit'),
	('TRN', 'Transaction');
/*!40000 ALTER TABLE `master_menutrx` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_permit
DROP TABLE IF EXISTS `master_permit`;
CREATE TABLE IF NOT EXISTS `master_permit` (
  `PERMIT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOC_ID` int(11) DEFAULT NULL,
  `PRMTTYP_ID` int(11) DEFAULT NULL,
  `PERMIT_CODE` char(30) DEFAULT NULL,
  `PERMIT_NAME` varchar(256) DEFAULT NULL,
  `PERMIT_DESC` varchar(1024) DEFAULT NULL,
  `PERMIT_RECEIVE_NUMB` char(10) DEFAULT NULL,
  `PERMIT_RECEIVE_DATE` date DEFAULT NULL,
  `PERMIT_START_DATE` date DEFAULT NULL,
  `PERMIT_END_DATE` date DEFAULT NULL,
  `PERMIT_COST` int(11) DEFAULT NULL,
  PRIMARY KEY (`PERMIT_ID`),
  KEY `FK_R6` (`PRMTTYP_ID`),
  KEY `FK_R8` (`LOC_ID`),
  CONSTRAINT `FK_R6` FOREIGN KEY (`PRMTTYP_ID`) REFERENCES `master_permit_type` (`PRMTTYP_ID`),
  CONSTRAINT `FK_R8` FOREIGN KEY (`LOC_ID`) REFERENCES `master_location` (`LOC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_permit: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_permit` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_permit` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_permit_type
DROP TABLE IF EXISTS `master_permit_type`;
CREATE TABLE IF NOT EXISTS `master_permit_type` (
  `PRMTTYP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRMTTYP_CODE` char(30) DEFAULT NULL,
  `PRMTTYP_NAME` varchar(300) DEFAULT NULL,
  `PRMTTYP_INFO` varchar(1024) DEFAULT NULL,
  `PRMTTYP_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`PRMTTYP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_permit_type: ~2 rows (approximately)
/*!40000 ALTER TABLE `master_permit_type` DISABLE KEYS */;
INSERT INTO `master_permit_type` (`PRMTTYP_ID`, `PRMTTYP_CODE`, `PRMTTYP_NAME`, `PRMTTYP_INFO`, `PRMTTYP_DTSTS`) VALUES
	(1, 'PMT-00001', 'Sewa Lahan Persil', 'Kwitansi\r\nSurat Tidak Keberatan', '1'),
	(2, 'PMT-00002', 'Sewa Lahan KAI', 'Perjanjian dengan KAI', '1'),
	(3, 'PMT-00003', 'Sewa Lahan Pemkot', 'Info sewa lahan pemkot', '1');
/*!40000 ALTER TABLE `master_permit_type` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_person
DROP TABLE IF EXISTS `master_person`;
CREATE TABLE IF NOT EXISTS `master_person` (
  `PERSON_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PERSON_CODE` char(30) DEFAULT NULL,
  `PERSON_NAME` varchar(200) DEFAULT NULL,
  `PERSON_ADDRESS` varchar(1024) DEFAULT NULL,
  `PERSON_PHONE` char(30) DEFAULT NULL,
  `PERSON_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`PERSON_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_person: ~2 rows (approximately)
/*!40000 ALTER TABLE `master_person` DISABLE KEYS */;
INSERT INTO `master_person` (`PERSON_ID`, `PERSON_CODE`, `PERSON_NAME`, `PERSON_ADDRESS`, `PERSON_PHONE`, `PERSON_DTSTS`) VALUES
	(1, 'KRY-00001', 'Kaisha', 'Semolowaru', '0987654', '1'),
	(2, 'KRY-00002', 'Surya', 'Putat Gede', '0986543', '1'),
	(3, 'KRY-00003', 'Ratna', 'Ketintang', '098754', '1'),
	(4, 'KRY-00004', 'Dzaky', 'Tandes', '0987654', '1'),
	(5, 'KRY-00005', 'diana', 'sdfghjk', '4567890', '1'),
	(6, 'KRY-00006', 'Kaisha', 'aaa', '9876', '0');
/*!40000 ALTER TABLE `master_person` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_placement
DROP TABLE IF EXISTS `master_placement`;
CREATE TABLE IF NOT EXISTS `master_placement` (
  `PLC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PLC_CODE` char(30) DEFAULT NULL,
  `PLC_NAME` char(200) DEFAULT NULL,
  `PLC_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`PLC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_placement: ~2 rows (approximately)
/*!40000 ALTER TABLE `master_placement` DISABLE KEYS */;
INSERT INTO `master_placement` (`PLC_ID`, `PLC_CODE`, `PLC_NAME`, `PLC_DTSTS`) VALUES
	(1, 'PLC-00001', 'Halaman Persil', '1'),
	(2, 'PLC-00002', 'Dishub', '1');
/*!40000 ALTER TABLE `master_placement` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_sales
DROP TABLE IF EXISTS `master_sales`;
CREATE TABLE IF NOT EXISTS `master_sales` (
  `SALES_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `PERSON_ID` int(11) DEFAULT NULL,
  `SALES_CODE` char(30) DEFAULT NULL,
  `SALES_PHONE` char(30) DEFAULT NULL,
  `SALES_EMAIL` char(200) DEFAULT NULL,
  `SALES_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`SALES_ID`),
  KEY `FK_R2` (`PERSON_ID`),
  KEY `FK_R4` (`BRANCH_ID`),
  CONSTRAINT `FK_R2` FOREIGN KEY (`PERSON_ID`) REFERENCES `master_person` (`PERSON_ID`),
  CONSTRAINT `FK_R4` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_sales: ~2 rows (approximately)
/*!40000 ALTER TABLE `master_sales` DISABLE KEYS */;
INSERT INTO `master_sales` (`SALES_ID`, `BRANCH_ID`, `PERSON_ID`, `SALES_CODE`, `SALES_PHONE`, `SALES_EMAIL`, `SALES_DTSTS`) VALUES
	(1, 2, 2, 'SLF-00001', '098654', 'surya@mail.com', '1'),
	(2, 3, 3, 'SLF-00002', '09876543', 'ratna@mail.com', '1');
/*!40000 ALTER TABLE `master_sales` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_supplier
DROP TABLE IF EXISTS `master_supplier`;
CREATE TABLE IF NOT EXISTS `master_supplier` (
  `SUPP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COA_ID` int(11) DEFAULT NULL,
  `SUPP_CODE` char(30) DEFAULT NULL,
  `SUPP_NAME` char(200) DEFAULT NULL,
  `SUPP_ADDRESS` varchar(1024) DEFAULT NULL,
  `SUPP_CITY` char(100) DEFAULT NULL,
  `SUPP_POSTAL` char(10) DEFAULT NULL,
  `SUPP_PHONE` char(20) DEFAULT NULL,
  `SUPP_FAX` char(20) DEFAULT NULL,
  `SUPP_OTHERCTC` char(200) DEFAULT NULL,
  `SUPP_DUE` char(200) DEFAULT NULL,
  `SUPP_NPWPNAME` char(200) DEFAULT NULL,
  `SUPP_NPWPADD` varchar(1024) DEFAULT NULL,
  `SUPP_NPWPCODE` char(100) DEFAULT NULL,
  `SUPP_NPPKPCODE` char(100) DEFAULT NULL,
  `SUPP_ACC` char(200) DEFAULT NULL,
  `SUPP_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`SUPP_ID`),
  KEY `FKMSUPP1` (`COA_ID`),
  CONSTRAINT `FKMSUPP1` FOREIGN KEY (`COA_ID`) REFERENCES `chart_of_account` (`COA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_supplier: ~3 rows (approximately)
/*!40000 ALTER TABLE `master_supplier` DISABLE KEYS */;
INSERT INTO `master_supplier` (`SUPP_ID`, `COA_ID`, `SUPP_CODE`, `SUPP_NAME`, `SUPP_ADDRESS`, `SUPP_CITY`, `SUPP_POSTAL`, `SUPP_PHONE`, `SUPP_FAX`, `SUPP_OTHERCTC`, `SUPP_DUE`, `SUPP_NPWPNAME`, `SUPP_NPWPADD`, `SUPP_NPWPCODE`, `SUPP_NPPKPCODE`, `SUPP_ACC`, `SUPP_DTSTS`) VALUES
	(1, NULL, 'SUP-00001', 'PT Maju Jaya', 'Margomulyo', 'Surabaya', '67890', '0987654', '0987654', 'Heru 0987654', NULL, NULL, NULL, NULL, NULL, 'TBD', '1'),
	(2, NULL, 'SUP-00002', 'PT Guna Jaya', 'Margorejo', 'Surabaya', '67890', '0987654', '9876565', 'Hendro 09876543', NULL, NULL, NULL, NULL, NULL, 'TBD', '1'),
	(3, NULL, 'SUP-00003', 'Frengky', 'Tandes', 'Surabaya', '60989', '09876543', '09876543', 'Contact lain : 09876543', 'Pembayaran dilakukan setelah recovering', 'Frengky', 'Tandes, Surabaya', '23456789', '3456789', 'TBD', '1');
/*!40000 ALTER TABLE `master_supplier` ENABLE KEYS */;

-- Dumping structure for table mtpd2.master_user
DROP TABLE IF EXISTS `master_user`;
CREATE TABLE IF NOT EXISTS `master_user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `PERSON_ID` int(11) DEFAULT NULL,
  `USER_CODE` char(30) DEFAULT NULL,
  `USER_NAME` varchar(1024) DEFAULT NULL,
  `USER_PASSWORD` char(200) DEFAULT NULL,
  `USER_LEVEL` char(1) DEFAULT NULL,
  `USER_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  KEY `FK_R1` (`PERSON_ID`),
  KEY `FK_R3` (`BRANCH_ID`),
  CONSTRAINT `FK_R1` FOREIGN KEY (`PERSON_ID`) REFERENCES `master_person` (`PERSON_ID`),
  CONSTRAINT `FK_R3` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.master_user: ~3 rows (approximately)
/*!40000 ALTER TABLE `master_user` DISABLE KEYS */;
INSERT INTO `master_user` (`USER_ID`, `BRANCH_ID`, `PERSON_ID`, `USER_CODE`, `USER_NAME`, `USER_PASSWORD`, `USER_LEVEL`, `USER_DTSTS`) VALUES
	(1, 1, 1, 'USR-00001', 'kaisha', '827ccb0eea8a706c4c34a16891f84e7b', '1', '1'),
	(2, 2, 2, 'USR-00002', 'surya', '827ccb0eea8a706c4c34a16891f84e7b', '3', '1'),
	(3, 3, 3, 'USR-00003', 'ratna', '827ccb0eea8a706c4c34a16891f84e7b', '3', '1'),
	(4, 1, 4, 'USR-00004', 'dzaky', '827ccb0eea8a706c4c34a16891f84e7b', '2', '1'),
	(5, 1, 5, 'USR-00005', 'diana', '827ccb0eea8a706c4c34a16891f84e7b', '2', '1'),
	(6, 3, 1, 'USR-00006', 'kaisha_jkt', '827ccb0eea8a706c4c34a16891f84e7b', '1', '1'),
	(7, 1, 1, 'USR-00007', 'kaisha', '827ccb0eea8a706c4c34a16891f84e7b', '1', '1');
/*!40000 ALTER TABLE `master_user` ENABLE KEYS */;

-- Dumping structure for table mtpd2.other_settings
DROP TABLE IF EXISTS `other_settings`;
CREATE TABLE IF NOT EXISTS `other_settings` (
  `OS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRINT_BANKINVOICE` varchar(1024) DEFAULT NULL,
  `PRC_COA` int(11) DEFAULT NULL,
  `PRC_COAAG` int(11) DEFAULT NULL,
  `PRC_COADISC` int(11) DEFAULT NULL,
  `PRC_COAPPN` int(11) DEFAULT NULL,
  `PRC_COACOST` int(11) DEFAULT NULL,
  `PRC_COANAME` char(200) DEFAULT NULL,
  `PRC_COANAMEAG` char(200) DEFAULT NULL,
  `PRC_COANAMEDISC` char(200) DEFAULT NULL,
  `PRC_COANAMEPPN` char(200) DEFAULT NULL,
  `PRC_COANAMECOST` char(200) DEFAULT NULL,
  `NOTAFIN_ACC` int(11) DEFAULT NULL,
  `NOTAFIN_ACCNAME` char(200) DEFAULT NULL,
  `ACCRCVGIRO_ACC` int(11) DEFAULT NULL,
  `ACCRCVGIRO_ACCNAME` char(200) DEFAULT NULL,
  `DEBTGIRO_ACC` int(11) DEFAULT NULL,
  `DEBTGIRO_ACCNAME` char(200) DEFAULT NULL,
  `INV_COAPPN` int(11) DEFAULT NULL,
  `INV_COANAMEPPN` char(200) DEFAULT NULL,
  `PRCGA_COASUPPLY` int(11) DEFAULT NULL,
  `PRCGA_COADEBT` int(11) DEFAULT NULL,
  `PRCGA_COAPPN` int(11) DEFAULT NULL,
  `PRCGA_COACOST` int(11) DEFAULT NULL,
  `PRCGA_COADISC` int(11) DEFAULT NULL,
  `PRCGA_COANAMESUPPLY` char(200) DEFAULT NULL,
  `PRCGA_COANAMEDEBT` char(200) DEFAULT NULL,
  `PRCGA_COANAMEPPN` char(200) DEFAULT NULL,
  `PRCGA_COANAMECOST` char(200) DEFAULT NULL,
  `PRCGA_COANAMEDISC` char(200) DEFAULT NULL,
  PRIMARY KEY (`OS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.other_settings: ~0 rows (approximately)
/*!40000 ALTER TABLE `other_settings` DISABLE KEYS */;
INSERT INTO `other_settings` (`OS_ID`, `PRINT_BANKINVOICE`, `PRC_COA`, `PRC_COAAG`, `PRC_COADISC`, `PRC_COAPPN`, `PRC_COACOST`, `PRC_COANAME`, `PRC_COANAMEAG`, `PRC_COANAMEDISC`, `PRC_COANAMEPPN`, `PRC_COANAMECOST`, `NOTAFIN_ACC`, `NOTAFIN_ACCNAME`, `ACCRCVGIRO_ACC`, `ACCRCVGIRO_ACCNAME`, `DEBTGIRO_ACC`, `DEBTGIRO_ACCNAME`, `INV_COAPPN`, `INV_COANAMEPPN`, `PRCGA_COASUPPLY`, `PRCGA_COADEBT`, `PRCGA_COAPPN`, `PRCGA_COACOST`, `PRCGA_COADISC`, `PRCGA_COANAMESUPPLY`, `PRCGA_COANAMEDEBT`, `PRCGA_COANAMEPPN`, `PRCGA_COANAMECOST`, `PRCGA_COANAMEDISC`) VALUES
	(1, 'Bank BCA Jakarta Pierre Tendean Jakarta Utara A/C 05120201 A/N Match Ad', 22, 23, 30, 31, 29, 'HPP/PEMBELIAN', 'Hutang Usaha', 'POTONGAN PEMBELIAN', 'PPN MASUKAN BELUM DIFAKTURKAN', 'ONGKOS KIRIM PEMBELIAN', 25, 'NOTA GANTUNG', 27, 'PIUTANG GIRO', 26, 'HUTANG GIRO', 32, 'HUTANG PAJAK PPN KELUARAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `other_settings` ENABLE KEYS */;

-- Dumping structure for table mtpd2.parent_chart
DROP TABLE IF EXISTS `parent_chart`;
CREATE TABLE IF NOT EXISTS `parent_chart` (
  `PAR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARTP_ID` int(11) DEFAULT NULL,
  `PAR_ACC` char(30) DEFAULT NULL,
  `PAR_ACCNAME` char(100) DEFAULT NULL,
  `PAR_TYPE` char(100) DEFAULT NULL,
  `PAR_INFO` varchar(1024) DEFAULT NULL,
  `PAR_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`PAR_ID`),
  KEY `FKPAR1` (`PARTP_ID`),
  CONSTRAINT `FKPAR1` FOREIGN KEY (`PARTP_ID`) REFERENCES `parent_type` (`PARTP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.parent_chart: ~15 rows (approximately)
/*!40000 ALTER TABLE `parent_chart` DISABLE KEYS */;
INSERT INTO `parent_chart` (`PAR_ID`, `PARTP_ID`, `PAR_ACC`, `PAR_ACCNAME`, `PAR_TYPE`, `PAR_INFO`, `PAR_DTSTS`) VALUES
	(1, 1, '1110000', 'Kas', 'aktiva', 'Info kas induk', '1'),
	(2, 1, '002', 'Bank', 'aktiva', 'Info bank induk\r\n', '1'),
	(3, 7, '003', 'Gaji', 'kewajiban', 'info gaji', '1'),
	(4, 8, '004', 'Piutang', 'aktiva', 'Info piutang', '1'),
	(5, 6, '005', 'Pendapatan', 'pendapatan', 'Info Pendapatan', '1'),
	(6, 7, '006', 'Pengeluaran', 'kewajiban', 'Info pengeluaran', '1'),
	(7, 5, '007', 'Administrasi Umum', 'biaya', 'Info administrasi umum', '1'),
	(8, 4, '008', 'Biaya Pajak Dibayar Dimuka', '4', 'Infoaaaaaaaasss', '1'),
	(9, 1, '009', 'tests', NULL, 'aaaa', '0'),
	(10, 9, '12345', 'kas dan bank', NULL, 'wertyhjhtrt', '1'),
	(11, 5, '5100000', 'Beban Pokok Pendapatan', NULL, 'aaaa', '1'),
	(12, 10, '2120000', 'Hutang Usaha', NULL, 'Hutang usaha', '1'),
	(13, 5, '5120000', 'Biaya Kantor', NULL, 'Info', '1'),
	(14, 1, '1130000', 'PIUTANG LAIN-LAIN', NULL, 'tes', '1'),
	(15, 9, '1190000', 'BIAYA DIBAYAR DIMUKA', NULL, 'AAA', '1');
/*!40000 ALTER TABLE `parent_chart` ENABLE KEYS */;

-- Dumping structure for table mtpd2.parent_type
DROP TABLE IF EXISTS `parent_type`;
CREATE TABLE IF NOT EXISTS `parent_type` (
  `PARTP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARTP_NAME` char(200) DEFAULT NULL,
  `PARTP_STS` char(1) DEFAULT NULL,
  `PARTP_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`PARTP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.parent_type: ~8 rows (approximately)
/*!40000 ALTER TABLE `parent_type` DISABLE KEYS */;
INSERT INTO `parent_type` (`PARTP_ID`, `PARTP_NAME`, `PARTP_STS`, `PARTP_DTSTS`) VALUES
	(1, 'Aktiva', '1', '1'),
	(2, 'Biaya Operasional', '2', '1'),
	(3, 'Biaya Pajak', '2', '1'),
	(4, 'Biaya Dibayar Dimuka', '2', '1'),
	(5, 'Biaya', '2', '1'),
	(6, 'Pendapatan', '4', '1'),
	(7, 'Kewajiban', '2', '1'),
	(8, 'Piutang', '1', '1'),
	(9, 'aktiva lancar', '1', '1'),
	(10, 'Kewajiban Lancar', '3', '1');
/*!40000 ALTER TABLE `parent_type` ENABLE KEYS */;

-- Dumping structure for table mtpd2.permitdoc_det
DROP TABLE IF EXISTS `permitdoc_det`;
CREATE TABLE IF NOT EXISTS `permitdoc_det` (
  `PDOC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PAPPR_ID` int(11) DEFAULT NULL,
  `PDOC_CODE` char(30) DEFAULT NULL,
  `PDOC_DATESTART` date DEFAULT NULL,
  `PDOC_DATEEND` date DEFAULT NULL,
  `PDOC_DATERCV` date DEFAULT NULL,
  `PDOC_RCVNUM` char(100) DEFAULT NULL,
  `PDOC_DTSTS` char(1) DEFAULT NULL,
  `PDOC_INFO` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`PDOC_ID`),
  KEY `FK_R117` (`PAPPR_ID`),
  CONSTRAINT `FK_R117` FOREIGN KEY (`PAPPR_ID`) REFERENCES `trx_permitappr` (`PAPPR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.permitdoc_det: ~4 rows (approximately)
/*!40000 ALTER TABLE `permitdoc_det` DISABLE KEYS */;
INSERT INTO `permitdoc_det` (`PDOC_ID`, `PAPPR_ID`, `PDOC_CODE`, `PDOC_DATESTART`, `PDOC_DATEEND`, `PDOC_DATERCV`, `PDOC_RCVNUM`, `PDOC_DTSTS`, `PDOC_INFO`) VALUES
	(5, 7, NULL, '2018-01-24', '2018-04-30', '2018-01-24', '987654', NULL, NULL),
	(6, 8, NULL, '2018-01-31', '2018-12-31', '2018-01-31', '0839102', NULL, NULL),
	(7, 9, NULL, '2018-02-20', '2019-02-20', '2018-02-20', '09800000', NULL, NULL),
	(8, 10, NULL, '2018-02-20', '2018-03-20', '2018-02-20', '77777', NULL, NULL),
	(9, 11, NULL, '2018-03-20', '2018-05-31', '2018-03-20', '345678', NULL, NULL);
/*!40000 ALTER TABLE `permitdoc_det` ENABLE KEYS */;

-- Dumping structure for table mtpd2.permitpay_det
DROP TABLE IF EXISTS `permitpay_det`;
CREATE TABLE IF NOT EXISTS `permitpay_det` (
  `PPAY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COA_ID` int(11) DEFAULT NULL,
  `PAPPR_ID` int(11) DEFAULT NULL,
  `PPAY_CODE` char(30) DEFAULT NULL,
  `PPAY_INFO` varchar(1024) DEFAULT NULL,
  `PPAY_AMOUNT` bigint(20) DEFAULT NULL,
  `PPAY_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`PPAY_ID`),
  KEY `FK_R118` (`PAPPR_ID`),
  KEY `FK_RELATIONSHIP_121` (`COA_ID`),
  CONSTRAINT `FK_R118` FOREIGN KEY (`PAPPR_ID`) REFERENCES `trx_permitappr` (`PAPPR_ID`),
  CONSTRAINT `FK_RELATIONSHIP_121` FOREIGN KEY (`COA_ID`) REFERENCES `chart_of_account` (`COA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.permitpay_det: ~4 rows (approximately)
/*!40000 ALTER TABLE `permitpay_det` DISABLE KEYS */;
INSERT INTO `permitpay_det` (`PPAY_ID`, `COA_ID`, `PAPPR_ID`, `PPAY_CODE`, `PPAY_INFO`, `PPAY_AMOUNT`, `PPAY_DTSTS`) VALUES
	(5, 15, 7, NULL, 'info biaya', 100000, NULL),
	(6, 15, 8, NULL, 'Bayar sewa lahan', 35000000, NULL),
	(7, 1, 9, NULL, 'Biaya', 1000000, NULL),
	(8, 15, 10, NULL, 'ket', 1000000, NULL),
	(9, 1, 11, NULL, 'Biaya Pajak', 2000000, NULL);
/*!40000 ALTER TABLE `permitpay_det` ENABLE KEYS */;

-- Dumping structure for table mtpd2.poga_details
DROP TABLE IF EXISTS `poga_details`;
CREATE TABLE IF NOT EXISTS `poga_details` (
  `PGDET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `POGA_ID` int(11) DEFAULT NULL,
  `GD_ID` int(11) DEFAULT NULL,
  `PGDET_QTYUNIT` int(11) DEFAULT NULL,
  `PGDET_SUB` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PGDET_ID`),
  KEY `FK_R60` (`GD_ID`),
  KEY `FK_R61` (`POGA_ID`),
  CONSTRAINT `FK_R60` FOREIGN KEY (`GD_ID`) REFERENCES `master_goods` (`GD_ID`),
  CONSTRAINT `FK_R61` FOREIGN KEY (`POGA_ID`) REFERENCES `trx_po_ga` (`POGA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.poga_details: ~6 rows (approximately)
/*!40000 ALTER TABLE `poga_details` DISABLE KEYS */;
INSERT INTO `poga_details` (`PGDET_ID`, `POGA_ID`, `GD_ID`, `PGDET_QTYUNIT`, `PGDET_SUB`) VALUES
	(4, 6, 1, 3, 30000),
	(5, 7, 2, 10, 25000),
	(6, 8, 2, 2, 5000),
	(7, 9, 7, 1, 35000),
	(8, 10, 7, 5, 175000),
	(9, 10, 1, 3, 30000),
	(10, 13, 7, 5, 175000),
	(11, 15, 2, 5, 10000);
/*!40000 ALTER TABLE `poga_details` ENABLE KEYS */;

-- Dumping structure for table mtpd2.po_details
DROP TABLE IF EXISTS `po_details`;
CREATE TABLE IF NOT EXISTS `po_details` (
  `PODET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PO_ID` int(11) DEFAULT NULL,
  `GD_ID` int(11) DEFAULT NULL,
  `PODET_QTYUNIT` decimal(10,2) DEFAULT NULL,
  `PODET_SUB` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PODET_ID`),
  KEY `FK_R20` (`PO_ID`),
  KEY `FK_R21` (`GD_ID`),
  CONSTRAINT `FK_R20` FOREIGN KEY (`PO_ID`) REFERENCES `trx_po` (`PO_ID`),
  CONSTRAINT `FK_R21` FOREIGN KEY (`GD_ID`) REFERENCES `master_goods` (`GD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.po_details: ~13 rows (approximately)
/*!40000 ALTER TABLE `po_details` DISABLE KEYS */;
INSERT INTO `po_details` (`PODET_ID`, `PO_ID`, `GD_ID`, `PODET_QTYUNIT`, `PODET_SUB`) VALUES
	(8, 6, 1, 2.00, 20000),
	(9, 7, 2, 2.00, 5000),
	(10, 8, 1, 5.00, 50000),
	(11, 10, 3, 1.00, 1000000),
	(12, 11, 4, 1.00, 5000000),
	(13, 12, 4, 1.00, 5000000),
	(14, 13, 2, 10.00, 25000),
	(15, 14, 4, 1.00, 5000000),
	(16, 15, 2, 10.00, 25000),
	(17, 19, 4, 1.00, 5000000),
	(18, 20, 4, 1.00, 5000000),
	(19, 21, 3, 1.00, 1000000),
	(20, 22, 1, 10.00, 100000),
	(21, 23, 4, 0.50, 2500000);
/*!40000 ALTER TABLE `po_details` ENABLE KEYS */;

-- Dumping structure for table mtpd2.prcga_details
DROP TABLE IF EXISTS `prcga_details`;
CREATE TABLE IF NOT EXISTS `prcga_details` (
  `PRCGADET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRCGA_ID` int(11) DEFAULT NULL,
  `GD_ID` int(11) DEFAULT NULL,
  `PRCGADET_QTY` int(11) DEFAULT NULL,
  `PRCGADET_SUB` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PRCGADET_ID`),
  KEY `FK_R65` (`PRCGA_ID`),
  KEY `FK_R66` (`GD_ID`),
  CONSTRAINT `FK_R65` FOREIGN KEY (`PRCGA_ID`) REFERENCES `trx_prc_ga` (`PRCGA_ID`),
  CONSTRAINT `FK_R66` FOREIGN KEY (`GD_ID`) REFERENCES `master_goods` (`GD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.prcga_details: ~6 rows (approximately)
/*!40000 ALTER TABLE `prcga_details` DISABLE KEYS */;
INSERT INTO `prcga_details` (`PRCGADET_ID`, `PRCGA_ID`, `GD_ID`, `PRCGADET_QTY`, `PRCGADET_SUB`) VALUES
	(3, 1, 1, 3, 30000),
	(4, 2, 2, 10, 25000),
	(5, 5, 2, 2, 5000),
	(6, 6, 1, 3, 30000),
	(7, 6, 7, 5, 175000),
	(9, 10, 7, 5, 175000),
	(11, 11, 2, 5, 10000);
/*!40000 ALTER TABLE `prcga_details` ENABLE KEYS */;

-- Dumping structure for table mtpd2.prcga_ret
DROP TABLE IF EXISTS `prcga_ret`;
CREATE TABLE IF NOT EXISTS `prcga_ret` (
  `RTPRCGA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `CURR_ID` int(11) DEFAULT NULL,
  `PRCGA_ID` int(11) DEFAULT NULL,
  `RTPRCGA_CODE` char(30) DEFAULT NULL,
  `RTPRCGA_DATE` date DEFAULT NULL,
  `RTPRCGA_INFO` varchar(1024) DEFAULT NULL,
  `RTPRCGA_STS` char(1) DEFAULT NULL,
  `RTPRCGA_SUB` bigint(20) DEFAULT NULL,
  `RTPRCGA_DISC` int(11) DEFAULT NULL,
  `RTPRCGA_PPN` int(11) DEFAULT NULL,
  `RTPRCGA_COST` int(11) DEFAULT NULL,
  `RTPRCGA_GTOTAL` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`RTPRCGA_ID`),
  KEY `FK_R67` (`PRCGA_ID`),
  KEY `FK_R68` (`USER_ID`),
  KEY `FK_R69` (`CURR_ID`),
  KEY `FKRTPRCGA1` (`BRANCH_ID`),
  CONSTRAINT `FKRTPRCGA1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R67` FOREIGN KEY (`PRCGA_ID`) REFERENCES `trx_prc_ga` (`PRCGA_ID`),
  CONSTRAINT `FK_R68` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FK_R69` FOREIGN KEY (`CURR_ID`) REFERENCES `master_currency` (`CURR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.prcga_ret: ~2 rows (approximately)
/*!40000 ALTER TABLE `prcga_ret` DISABLE KEYS */;
INSERT INTO `prcga_ret` (`RTPRCGA_ID`, `USER_ID`, `BRANCH_ID`, `CURR_ID`, `PRCGA_ID`, `RTPRCGA_CODE`, `RTPRCGA_DATE`, `RTPRCGA_INFO`, `RTPRCGA_STS`, `RTPRCGA_SUB`, `RTPRCGA_DISC`, `RTPRCGA_PPN`, `RTPRCGA_COST`, `RTPRCGA_GTOTAL`) VALUES
	(1, NULL, 1, NULL, NULL, 'RBG/1804/000001', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
	(2, NULL, 3, NULL, NULL, 'RBG/1804/000001', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `prcga_ret` ENABLE KEYS */;

-- Dumping structure for table mtpd2.prc_details
DROP TABLE IF EXISTS `prc_details`;
CREATE TABLE IF NOT EXISTS `prc_details` (
  `PRCDET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRC_ID` int(11) DEFAULT NULL,
  `GD_ID` int(11) DEFAULT NULL,
  `PRCDET_QTY` decimal(10,2) DEFAULT NULL,
  `PRCDET_SUB` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PRCDET_ID`),
  KEY `FK_R27` (`PRC_ID`),
  KEY `FK_R28` (`GD_ID`),
  CONSTRAINT `FK_R27` FOREIGN KEY (`PRC_ID`) REFERENCES `trx_procurement` (`PRC_ID`),
  CONSTRAINT `FK_R28` FOREIGN KEY (`GD_ID`) REFERENCES `master_goods` (`GD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.prc_details: ~13 rows (approximately)
/*!40000 ALTER TABLE `prc_details` DISABLE KEYS */;
INSERT INTO `prc_details` (`PRCDET_ID`, `PRC_ID`, `GD_ID`, `PRCDET_QTY`, `PRCDET_SUB`) VALUES
	(1, 3, 1, 2.00, 20000),
	(2, 4, 2, 2.00, 5000),
	(3, 5, 1, 5.00, 50000),
	(4, 6, 3, 1.00, 1000000),
	(9, 11, 4, 1.00, 5000000),
	(13, 12, 2, 10.00, 25000),
	(14, 13, 4, 1.00, 5000000),
	(15, 14, 4, 1.00, 5000000),
	(16, 15, 2, 10.00, 25000),
	(17, 19, 4, 1.00, 5000000),
	(18, 20, 4, 1.00, 5000000),
	(20, 21, 3, 1.00, 1000000),
	(21, 22, 1, 10.00, 100000),
	(22, 23, 4, 0.50, 2500000);
/*!40000 ALTER TABLE `prc_details` ENABLE KEYS */;

-- Dumping structure for table mtpd2.procurement_ret
DROP TABLE IF EXISTS `procurement_ret`;
CREATE TABLE IF NOT EXISTS `procurement_ret` (
  `RTPRC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CURR_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `PRC_ID` int(11) DEFAULT NULL,
  `RTPRC_CODE` char(30) DEFAULT NULL,
  `RTPRC_DATE` date DEFAULT NULL,
  `RTPRC_TERM` char(30) DEFAULT NULL,
  `RTPRC_INFO` varchar(1024) DEFAULT NULL,
  `RTPRC_STS` char(1) DEFAULT NULL,
  `RTPRC_SUB` bigint(20) DEFAULT NULL,
  `RTPRC_DISC` int(11) DEFAULT NULL,
  `RTPRC_PPN` int(11) DEFAULT NULL,
  `RTPRC_COST` int(11) DEFAULT NULL,
  `RTPRC_GTOTAL` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`RTPRC_ID`),
  KEY `FK_R29` (`PRC_ID`),
  KEY `FK_R32` (`CURR_ID`),
  KEY `FK_R35` (`USER_ID`),
  KEY `FKRTPRC1` (`BRANCH_ID`),
  CONSTRAINT `FKRTPRC1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R29` FOREIGN KEY (`PRC_ID`) REFERENCES `trx_procurement` (`PRC_ID`),
  CONSTRAINT `FK_R32` FOREIGN KEY (`CURR_ID`) REFERENCES `master_currency` (`CURR_ID`),
  CONSTRAINT `FK_R35` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.procurement_ret: ~7 rows (approximately)
/*!40000 ALTER TABLE `procurement_ret` DISABLE KEYS */;
INSERT INTO `procurement_ret` (`RTPRC_ID`, `CURR_ID`, `USER_ID`, `BRANCH_ID`, `PRC_ID`, `RTPRC_CODE`, `RTPRC_DATE`, `RTPRC_TERM`, `RTPRC_INFO`, `RTPRC_STS`, `RTPRC_SUB`, `RTPRC_DISC`, `RTPRC_PPN`, `RTPRC_COST`, `RTPRC_GTOTAL`) VALUES
	(1, 1, 1, 1, 12, 'RB/1802/000001', '2018-02-27', NULL, 'Info', '1', 5000, 0, 0, 0, 5000),
	(3, 1, 1, 1, 15, 'RB/1803/000001', '2018-03-16', '0', 'Langsung', '1', 5000, 0, 0, 0, 5000),
	(8, NULL, NULL, 3, NULL, 'RB/1804/000001', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
	(9, NULL, NULL, 1, NULL, 'RB/1804/000001', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
	(10, NULL, NULL, 1, NULL, 'RB/1804/000002', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
	(11, NULL, NULL, NULL, NULL, 'RB/0404/59687', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
	(12, NULL, NULL, NULL, NULL, 'RB/0404/39568', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
	(13, NULL, NULL, NULL, NULL, 'RB/2507/47251', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `procurement_ret` ENABLE KEYS */;

-- Dumping structure for table mtpd2.retprcga_details
DROP TABLE IF EXISTS `retprcga_details`;
CREATE TABLE IF NOT EXISTS `retprcga_details` (
  `RTPRCGADET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GD_ID` int(11) DEFAULT NULL,
  `RTPRCGA_ID` int(11) DEFAULT NULL,
  `RTPRCGADET_QTY` int(11) DEFAULT NULL,
  `RTPRCGADET_SUB` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`RTPRCGADET_ID`),
  KEY `FK_R70` (`RTPRCGA_ID`),
  KEY `FK_R71` (`GD_ID`),
  CONSTRAINT `FK_R70` FOREIGN KEY (`RTPRCGA_ID`) REFERENCES `prcga_ret` (`RTPRCGA_ID`),
  CONSTRAINT `FK_R71` FOREIGN KEY (`GD_ID`) REFERENCES `master_goods` (`GD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.retprcga_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `retprcga_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `retprcga_details` ENABLE KEYS */;

-- Dumping structure for table mtpd2.retprc_details
DROP TABLE IF EXISTS `retprc_details`;
CREATE TABLE IF NOT EXISTS `retprc_details` (
  `RETPRCDET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RTPRC_ID` int(11) DEFAULT NULL,
  `GD_ID` int(11) DEFAULT NULL,
  `RETPRCDET_QTY` int(11) DEFAULT NULL,
  `RETPRCDET_SUB` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`RETPRCDET_ID`),
  KEY `FK_R30` (`RTPRC_ID`),
  KEY `FK_R31` (`GD_ID`),
  CONSTRAINT `FK_R30` FOREIGN KEY (`RTPRC_ID`) REFERENCES `procurement_ret` (`RTPRC_ID`),
  CONSTRAINT `FK_R31` FOREIGN KEY (`GD_ID`) REFERENCES `master_goods` (`GD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.retprc_details: ~1 rows (approximately)
/*!40000 ALTER TABLE `retprc_details` DISABLE KEYS */;
INSERT INTO `retprc_details` (`RETPRCDET_ID`, `RTPRC_ID`, `GD_ID`, `RETPRCDET_QTY`, `RETPRCDET_SUB`) VALUES
	(1, 1, 2, 2, 5000),
	(3, 3, 2, 2, 5000);
/*!40000 ALTER TABLE `retprc_details` ENABLE KEYS */;

-- Dumping structure for table mtpd2.retusgga_details
DROP TABLE IF EXISTS `retusgga_details`;
CREATE TABLE IF NOT EXISTS `retusgga_details` (
  `RTUSGGADET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GD_ID` int(11) DEFAULT NULL,
  `RTUSGGA_ID` int(11) DEFAULT NULL,
  `RTUSGGADET_QTY` int(11) DEFAULT NULL,
  `RTUSGGADET_SUB` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`RTUSGGADET_ID`),
  KEY `FK_R77` (`RTUSGGA_ID`),
  KEY `FK_R78` (`GD_ID`),
  CONSTRAINT `FK_R77` FOREIGN KEY (`RTUSGGA_ID`) REFERENCES `usage_ga_ret` (`RTUSGGA_ID`),
  CONSTRAINT `FK_R78` FOREIGN KEY (`GD_ID`) REFERENCES `master_goods` (`GD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.retusgga_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `retusgga_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `retusgga_details` ENABLE KEYS */;

-- Dumping structure for table mtpd2.retusg_details
DROP TABLE IF EXISTS `retusg_details`;
CREATE TABLE IF NOT EXISTS `retusg_details` (
  `RETUSGDET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RTUSG_ID` int(11) DEFAULT NULL,
  `GD_ID` int(11) DEFAULT NULL,
  `RETUSGDET_QTY` int(11) DEFAULT NULL,
  `RETUSGDET_SUB` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`RETUSGDET_ID`),
  KEY `FK_R43` (`GD_ID`),
  KEY `FK_R44` (`RTUSG_ID`),
  CONSTRAINT `FK_R43` FOREIGN KEY (`GD_ID`) REFERENCES `master_goods` (`GD_ID`),
  CONSTRAINT `FK_R44` FOREIGN KEY (`RTUSG_ID`) REFERENCES `usage_ret` (`RTUSG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.retusg_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `retusg_details` DISABLE KEYS */;
INSERT INTO `retusg_details` (`RETUSGDET_ID`, `RTUSG_ID`, `GD_ID`, `RETUSGDET_QTY`, `RETUSGDET_SUB`) VALUES
	(2, 1, 7, 1, NULL);
/*!40000 ALTER TABLE `retusg_details` ENABLE KEYS */;

-- Dumping structure for table mtpd2.tax_inv_details
DROP TABLE IF EXISTS `tax_inv_details`;
CREATE TABLE IF NOT EXISTS `tax_inv_details` (
  `TINVDET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TINV_ID` int(11) DEFAULT NULL,
  `INVDET_ID` int(11) DEFAULT NULL,
  `TINVDET_SUB` bigint(20) DEFAULT NULL,
  `TINVDET_PPN` bigint(20) DEFAULT NULL,
  `TINVDET_PPH` bigint(20) DEFAULT NULL,
  `TINVDET_SUM` bigint(20) DEFAULT NULL,
  `TINVDET_STS` char(1) DEFAULT NULL,
  `TINVDET_INFO` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`TINVDET_ID`),
  KEY `FKTINVDET1` (`TINV_ID`),
  KEY `FKTINVDET2` (`INVDET_ID`),
  CONSTRAINT `FKTINVDET1` FOREIGN KEY (`TINV_ID`) REFERENCES `trx_tax_invoice` (`TINV_ID`),
  CONSTRAINT `FKTINVDET2` FOREIGN KEY (`INVDET_ID`) REFERENCES `inv_details` (`INVDET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.tax_inv_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `tax_inv_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_inv_details` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_adjustment
DROP TABLE IF EXISTS `trx_adjustment`;
CREATE TABLE IF NOT EXISTS `trx_adjustment` (
  `ADJ_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `GD_ID` int(11) DEFAULT NULL,
  `ADJ_CODE` char(30) DEFAULT NULL,
  `ADJ_DATE` date DEFAULT NULL,
  `ADJ_INFO` varchar(1024) DEFAULT NULL,
  `ADJ_OLDQTY` int(11) DEFAULT NULL,
  `ADJ_CURQTY` int(11) DEFAULT NULL,
  `ADJ_DIFF` int(11) DEFAULT NULL,
  `ADJ_PLUS` int(11) DEFAULT NULL,
  `ADJ_MINUS` int(11) DEFAULT NULL,
  `ADJ_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`ADJ_ID`),
  KEY `FK_R45` (`GD_ID`),
  KEY `FK_R81` (`USER_ID`),
  KEY `FKADJ1` (`BRANCH_ID`),
  CONSTRAINT `FKADJ1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R45` FOREIGN KEY (`GD_ID`) REFERENCES `master_goods` (`GD_ID`),
  CONSTRAINT `FK_R81` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_adjustment: ~3 rows (approximately)
/*!40000 ALTER TABLE `trx_adjustment` DISABLE KEYS */;
INSERT INTO `trx_adjustment` (`ADJ_ID`, `USER_ID`, `BRANCH_ID`, `GD_ID`, `ADJ_CODE`, `ADJ_DATE`, `ADJ_INFO`, `ADJ_OLDQTY`, `ADJ_CURQTY`, `ADJ_DIFF`, `ADJ_PLUS`, `ADJ_MINUS`, `ADJ_DTSTS`) VALUES
	(2, NULL, NULL, NULL, 'PS/1802/000002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
	(3, NULL, 1, NULL, 'PS/1804/000001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
	(4, NULL, 3, NULL, 'PS/1804/000001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
	(5, NULL, 3, NULL, 'PS/1804/000002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
/*!40000 ALTER TABLE `trx_adjustment` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_adj_ga
DROP TABLE IF EXISTS `trx_adj_ga`;
CREATE TABLE IF NOT EXISTS `trx_adj_ga` (
  `ADJGA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `GD_ID` int(11) DEFAULT NULL,
  `ADJGA_CODE` char(30) DEFAULT NULL,
  `ADJGA_DATE` date DEFAULT NULL,
  `ADJGA_INFO` varchar(1024) DEFAULT NULL,
  `ADJGA_OLDQTY` int(11) DEFAULT NULL,
  `ADJGA_CURQTY` int(11) DEFAULT NULL,
  `ADJGA_PLUS` int(11) DEFAULT NULL,
  `ADJGA_MINUS` int(11) DEFAULT NULL,
  `ADJGA_DIFF` int(11) DEFAULT NULL,
  `ADJGA_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`ADJGA_ID`),
  KEY `FK_R79` (`GD_ID`),
  KEY `FK_R80` (`USER_ID`),
  KEY `FKADJGA1` (`BRANCH_ID`),
  CONSTRAINT `FKADJGA1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R79` FOREIGN KEY (`GD_ID`) REFERENCES `master_goods` (`GD_ID`),
  CONSTRAINT `FK_R80` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_adj_ga: ~4 rows (approximately)
/*!40000 ALTER TABLE `trx_adj_ga` DISABLE KEYS */;
INSERT INTO `trx_adj_ga` (`ADJGA_ID`, `USER_ID`, `BRANCH_ID`, `GD_ID`, `ADJGA_CODE`, `ADJGA_DATE`, `ADJGA_INFO`, `ADJGA_OLDQTY`, `ADJGA_CURQTY`, `ADJGA_PLUS`, `ADJGA_MINUS`, `ADJGA_DIFF`, `ADJGA_DTSTS`) VALUES
	(2, 1, 1, 2, 'PSG/1802/000001', '2019-02-18', 'Penyesuaian Bolpen pilot', 10, 11, 1, 0, 1, '1'),
	(3, 1, 1, 7, 'PSG/1802/000002', '2018-02-20', 'ket', 4, 7, 3, 0, 3, '1'),
	(4, NULL, 1, NULL, 'PSG/1804/000001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
	(5, NULL, 3, NULL, 'PSG/1804/000001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
/*!40000 ALTER TABLE `trx_adj_ga` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_approvalbill
DROP TABLE IF EXISTS `trx_approvalbill`;
CREATE TABLE IF NOT EXISTS `trx_approvalbill` (
  `APPR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `PLC_ID` int(11) DEFAULT NULL,
  `BB_ID` int(11) DEFAULT NULL,
  `LOC_ID` int(11) DEFAULT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `SALES_ID` int(11) DEFAULT NULL,
  `CURR_ID` int(11) DEFAULT NULL,
  `APPR_CODE` char(30) DEFAULT NULL,
  `APPR_STS` char(1) DEFAULT NULL,
  `APPR_OWN` char(20) DEFAULT NULL,
  `APPR_BRANCHID` int(11) DEFAULT NULL,
  `APPR_BRANCH` char(50) DEFAULT NULL,
  `APPR_BRCNAME` char(100) DEFAULT NULL,
  `APPR_PO` char(50) DEFAULT NULL,
  `APPR_DATE` date DEFAULT NULL,
  `APPR_RECOV` varchar(1024) DEFAULT NULL,
  `APPR_INFO` varchar(2048) DEFAULT NULL,
  `APPR_HEIGHT` decimal(10,2) DEFAULT NULL,
  `APPR_WIDTH` decimal(10,2) DEFAULT NULL,
  `APPR_LENGTH` decimal(10,2) DEFAULT NULL,
  `APPR_SUMSIZE` decimal(10,2) DEFAULT NULL,
  `APPR_SIDE` char(10) DEFAULT NULL,
  `APPR_PLCSUM` char(10) DEFAULT NULL,
  `APPR_CONTRACT_START` date DEFAULT NULL,
  `APPR_CONTRACT_END` date DEFAULT NULL,
  `APPR_VISUAL` varchar(1024) DEFAULT NULL,
  `APPR_PAYMENT_TYPE` char(100) DEFAULT NULL,
  `APPR_BRANCH_INCOME` bigint(20) DEFAULT NULL,
  `APPR_DPP_INCOME` bigint(20) DEFAULT NULL,
  `APPR_BBTAX` bigint(20) DEFAULT NULL,
  `APPR_DISC_PERC1` decimal(10,2) DEFAULT NULL,
  `APPR_DISC_PERC2` decimal(10,2) DEFAULT NULL,
  `APPR_DISC_SUM1` int(11) DEFAULT NULL,
  `APPR_DISC_SUM2` int(11) DEFAULT NULL,
  `APPR_PPN_PERC` decimal(10,2) DEFAULT NULL,
  `APPR_PPH_PERC` decimal(10,2) DEFAULT NULL,
  `APPR_PPN_SUM` int(11) DEFAULT NULL,
  `APPR_PPH_SUM` int(11) DEFAULT NULL,
  `APPR_TOT_INCOME` bigint(20) DEFAULT NULL,
  `APPR_JOBDESC` varchar(3072) DEFAULT NULL,
  `APPR_SUB_DSC` bigint(20) DEFAULT NULL,
  `APPR_SUB_PPN` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`APPR_ID`),
  KEY `FK_R10` (`CURR_ID`),
  KEY `FK_R11` (`USER_ID`),
  KEY `FK_R12` (`SALES_ID`),
  KEY `FK_R13` (`LOC_ID`),
  KEY `FK_R14` (`CUST_ID`),
  KEY `FK_R18` (`BB_ID`),
  KEY `FK_R59` (`PLC_ID`),
  KEY `FKAPPR1` (`BRANCH_ID`),
  CONSTRAINT `FKAPPR1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R10` FOREIGN KEY (`CURR_ID`) REFERENCES `master_currency` (`CURR_ID`),
  CONSTRAINT `FK_R11` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FK_R12` FOREIGN KEY (`SALES_ID`) REFERENCES `master_sales` (`SALES_ID`),
  CONSTRAINT `FK_R13` FOREIGN KEY (`LOC_ID`) REFERENCES `master_location` (`LOC_ID`),
  CONSTRAINT `FK_R14` FOREIGN KEY (`CUST_ID`) REFERENCES `master_customer` (`CUST_ID`),
  CONSTRAINT `FK_R18` FOREIGN KEY (`BB_ID`) REFERENCES `master_bboard` (`BB_ID`),
  CONSTRAINT `FK_R59` FOREIGN KEY (`PLC_ID`) REFERENCES `master_placement` (`PLC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_approvalbill: ~24 rows (approximately)
/*!40000 ALTER TABLE `trx_approvalbill` DISABLE KEYS */;
INSERT INTO `trx_approvalbill` (`APPR_ID`, `USER_ID`, `BRANCH_ID`, `PLC_ID`, `BB_ID`, `LOC_ID`, `CUST_ID`, `SALES_ID`, `CURR_ID`, `APPR_CODE`, `APPR_STS`, `APPR_OWN`, `APPR_BRANCHID`, `APPR_BRANCH`, `APPR_BRCNAME`, `APPR_PO`, `APPR_DATE`, `APPR_RECOV`, `APPR_INFO`, `APPR_HEIGHT`, `APPR_WIDTH`, `APPR_LENGTH`, `APPR_SUMSIZE`, `APPR_SIDE`, `APPR_PLCSUM`, `APPR_CONTRACT_START`, `APPR_CONTRACT_END`, `APPR_VISUAL`, `APPR_PAYMENT_TYPE`, `APPR_BRANCH_INCOME`, `APPR_DPP_INCOME`, `APPR_BBTAX`, `APPR_DISC_PERC1`, `APPR_DISC_PERC2`, `APPR_DISC_SUM1`, `APPR_DISC_SUM2`, `APPR_PPN_PERC`, `APPR_PPH_PERC`, `APPR_PPN_SUM`, `APPR_PPH_SUM`, `APPR_TOT_INCOME`, `APPR_JOBDESC`, `APPR_SUB_DSC`, `APPR_SUB_PPN`) VALUES
	(1, 1, 1, 1, 1, 1, 1, 1, 1, 'AB/1712/000001', '1', '0', 0, '', 'Match Ad Surabaya Pusat', 'PO/1212/21345', '2017-12-20', 'Free cetak 1x dan Free pasang 1x', 'Penggunaan billboard', 1.00, 4.00, 6.00, 24.00, 'Depan', '1', '2017-12-20', '2018-03-20', 'Visual baru', NULL, NULL, 100000000, 1000000, 10.00, 0.00, 10000000, 0, 10.00, 0.00, 9000000, 0, 100000000, NULL, 90000000, 100000000),
	(2, 2, 2, 1, 1, 1, 1, 2, 1, 'AB/1712/000002', '1', '1', 0, '', 'Match Ad Surabaya Cabang', 'PO/1212/212444', '2017-12-21', 'Free Cetak 1x dan Free ', 'Pemakaian media selama periode', 1.00, 6.00, 4.00, 24.00, 'Depan', '1', '2017-12-21', '2018-03-21', 'Visual materi', NULL, NULL, 120000000, 1000000, 0.00, 0.00, 0, 0, 10.00, 0.00, 12000000, 0, 133000000, NULL, 120000000, 133000000),
	(3, 1, 1, 1, 1, 1, 1, 2, 1, 'AB/1712/000003', '1', '0', 2, 'AB/1712/000002', 'Match Ad Surabaya Pusat', 'PO/1212/212444', '2018-01-02', 'Free Cetak 1x dan Free ', 'Pemakaian media selama periode', 1.00, 6.00, 4.00, 24.00, 'Depan', '1', '2017-12-21', '2018-03-21', 'Visual materi', NULL, 120000000, 100000000, 1000000, 0.00, 0.00, 0, 0, 10.00, 0.00, 10000000, 0, 111000000, NULL, 100000000, 111000000),
	(4, 1, 1, 1, 1, 2, 2, 1, 1, 'AB/1801/000001', '1', '0', 0, '', 'Match Ad Pusat Surabaya', 'po08764', '2018-01-25', 'Free 2 Kali', 'Tambahan keterangan', 0.00, 6.00, 4.00, 24.00, 'Depan', '1', '2018-01-25', '2018-03-31', 'Visual Baru', NULL, 0, 300000000, 10000000, 10.00, 10.00, 30000000, 27000000, 10.00, 10.00, 24300000, 24300000, 253000000, NULL, 243000000, 277300000),
	(5, 1, 1, 1, 1, 1, 3, 1, 1, 'AB/1801/000002', '1', '0', 0, '', 'Match Ad Pusat Surabaya', 'PO092222', '2018-01-31', 'Free Cetak dan Pasang 3 kali', 'Pemasangan media iklan selama 3 bulan', 0.00, 4.00, 6.00, 24.00, 'Depan', '1', '2018-01-31', '2018-04-30', 'Visual Baru', NULL, 0, 350000000, 70000000, 10.00, 0.00, 35000000, 0, 10.00, 0.00, 31500000, 0, 416500000, NULL, 315000000, 416500000),
	(6, 1, 1, 1, 1, 1, 4, 2, 1, 'AB/1801/000003', '1', '0', 0, '', 'Match Ad Pusat Surabaya', 'so9999', '2018-01-31', 'free 3 x cetak', '', 0.00, 4.00, 6.00, 24.00, 'depan', '', '2018-01-31', '2018-01-31', 'materi', NULL, 0, 350000000, 70000000, 10.00, 0.00, 35000000, 0, 10.00, 0.00, 31500000, 0, 416500000, NULL, 315000000, 416500000),
	(7, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'AB/1802/000001', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'AB/1802/000002', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'AB/1802/000003', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 1, 1, 1, 1, 3, 4, 1, 1, 'AB/1802/000004', '1', '0', 0, '', 'Match Ad Pusat Surabaya', 'PO0987654', '2018-02-05', 'Free cetak dan pasang 2 kali', 'Pemakaian billboard selama 3 bulan', NULL, 4.00, 6.00, 24.00, 'Depan', '1', '2018-02-05', '2018-05-05', 'Visual baru', NULL, 0, 125000000, 0, 0.00, 0.00, 0, 0, 10.00, 0.00, 12500000, 0, 137500000, NULL, 125000000, 137500000),
	(11, 1, 1, 1, 1, 3, 4, 1, 1, 'AB/1802/000005', '1', '0', 0, '', 'Match Ad Pusat Surabaya', 'PO2345678', '2018-02-07', 'Free Cetak 2 Kali', 'Pemakaian media selama 3 bulan', NULL, 0.00, 0.00, 0.00, 'Depan', '1', '2018-02-07', '2018-05-07', 'Visual Baru', NULL, 0, 125000000, 0, 0.00, 0.00, 0, 0, 10.00, 0.00, 12500000, 0, 137500000, NULL, 125000000, 137500000),
	(12, 1, 1, 1, 1, 3, 4, 1, 1, 'AB/1802/000006', '1', '0', 0, '', 'Match Ad Pusat Surabaya', '6666', '2018-02-08', 'ggg', 'nnnn', NULL, 6.00, 4.00, 24.00, 'd', '1', '2018-02-08', '2018-02-08', '', NULL, 0, 120000000, 7000000, 0.00, 0.00, 0, 0, 10.00, 0.00, 12000000, 0, 139000000, NULL, 120000000, 139000000),
	(13, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'AB/1802/000007', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(14, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'AB/1802/000008', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(15, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'AB/1802/000009', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(16, 1, 1, 1, 1, 3, 4, 1, 1, 'AB/1802/000010', '1', '0', 0, '', 'Match Ad Pusat Surabaya', 'PO0987654', '2018-02-08', 'Free cetak 1 kali', 'Pemakaian media selama 3 bulan', NULL, 4.00, 6.00, 24.00, 'Depan', '1', '2018-02-08', '2018-04-08', 'Visual baru', NULL, 0, 250000000, 20000000, 0.00, 0.00, 0, 0, 10.00, 0.00, 25000000, 0, 295000000, NULL, 250000000, 295000000),
	(17, 1, 1, 1, 1, 3, 4, 1, 1, 'AB/1802/000011', '1', '0', 0, '', 'Match Ad Pusat Surabaya', 'po3456', '2018-02-08', 'Free cetak 2 kali', 'Pemakaian media', NULL, 6.00, 4.00, 24.00, 'Depan', '1', '2018-02-19', '2018-05-19', 'Visual', NULL, 0, 80000000, 0, 0.00, 0.00, 0, 0, 10.00, 0.00, 8000000, 0, 88000000, NULL, 80000000, 88000000),
	(18, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'AB/1802/000012', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(19, 4, 1, 1, 1, 3, 4, 1, 1, 'AB/1803/000001', '1', '0', 0, '', 'Match Ad Pusat Surabaya', 'PO098654', '2018-04-04', 'Testing Percobaan', 'Testing percobaan', NULL, 8.00, 4.00, 32.00, 'depan', '1', '2018-03-08', '2018-06-28', 'Visual percobaan', NULL, 0, 125000000, 15000000, 0.00, 0.00, 0, 0, 10.00, 0.00, 12500000, 0, 152500000, NULL, 125000000, 152500000),
	(20, 1, 1, 1, 1, 3, 1, 1, 1, 'AB/1803/000002', '1', '0', 0, '', 'Match Ad Pusat Surabaya', '', '2018-04-05', 'aaa', 'aaaaaaaaa', NULL, 2.00, 1.00, 2.00, 'depan', '1', '2018-04-01', '2018-07-31', 'aaaa', NULL, 0, 200000000, 10000000, 3.33, 0.00, 6660000, 0, 10.00, 0.00, 19334000, 0, 222674000, NULL, 193340000, 222674000),
	(28, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'AB/1804/000001', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(29, 1, 1, NULL, NULL, NULL, 2, 1, 1, 'AB/1804/000002', '0', '0', 0, '', 'Match Ad Pusat Surabaya', '', '2018-04-05', '', '', NULL, 0.00, 0.00, 0.00, '', '', '2018-04-05', '2018-04-05', '', NULL, 0, 0, 0, 0.00, 0.00, 0, 0, 0.00, 0.00, 0, 0, 0, NULL, 0, 0),
	(30, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'AB/1804/000001', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(31, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'AB/1804/000001', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(32, 1, 1, 1, 1, 3, 4, 2, 1, 'AB/1807/000001', '1', '0', 0, '', 'Match Ad Pusat Surabaya', '', '2018-07-05', 'Tidak', 'Tidak ada', NULL, 8.00, 4.00, 32.00, 'depan', '1', '2018-07-05', '2018-09-05', 'Visual billboard', NULL, 0, 100000000, 15000000, 0.00, 0.00, 0, 0, 10.00, 0.00, 10000000, 0, 125000000, NULL, 100000000, 125000000);
/*!40000 ALTER TABLE `trx_approvalbill` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_bankin
DROP TABLE IF EXISTS `trx_bankin`;
CREATE TABLE IF NOT EXISTS `trx_bankin` (
  `BNK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CURR_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `BANK_ID` int(11) DEFAULT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `CSTIN_ID` int(11) DEFAULT NULL,
  `COA_ID` int(11) DEFAULT NULL,
  `BNK_CODE` char(30) DEFAULT NULL,
  `BNK_DATE` date DEFAULT NULL,
  `BNK_INFO` varchar(1024) DEFAULT NULL,
  `BNK_STS` char(10) DEFAULT NULL,
  `BNK_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`BNK_ID`),
  KEY `FK_R125` (`COA_ID`),
  KEY `FK_R85` (`USER_ID`),
  KEY `FK_R86` (`CURR_ID`),
  KEY `FK_R87` (`CUST_ID`),
  KEY `FK_R99` (`BANK_ID`),
  KEY `FKBNKIN1` (`BRANCH_ID`),
  KEY `FKBNKIN2` (`CSTIN_ID`),
  CONSTRAINT `FKBNKIN1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FKBNKIN2` FOREIGN KEY (`CSTIN_ID`) REFERENCES `master_cust_intern` (`CSTIN_ID`),
  CONSTRAINT `FK_R125` FOREIGN KEY (`COA_ID`) REFERENCES `chart_of_account` (`COA_ID`),
  CONSTRAINT `FK_R85` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FK_R86` FOREIGN KEY (`CURR_ID`) REFERENCES `master_currency` (`CURR_ID`),
  CONSTRAINT `FK_R87` FOREIGN KEY (`CUST_ID`) REFERENCES `master_customer` (`CUST_ID`),
  CONSTRAINT `FK_R99` FOREIGN KEY (`BANK_ID`) REFERENCES `master_bank` (`BANK_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_bankin: ~14 rows (approximately)
/*!40000 ALTER TABLE `trx_bankin` DISABLE KEYS */;
INSERT INTO `trx_bankin` (`BNK_ID`, `CURR_ID`, `USER_ID`, `BRANCH_ID`, `BANK_ID`, `CUST_ID`, `CSTIN_ID`, `COA_ID`, `BNK_CODE`, `BNK_DATE`, `BNK_INFO`, `BNK_STS`, `BNK_DTSTS`) VALUES
	(1, 1, 1, 1, 1, 2, NULL, 13, 'BM/1801/000001', '2018-01-20', 'hmgnfhdgsfdfg', '1', NULL),
	(2, 1, 1, 1, 2, 1, NULL, 9, 'BM/1801/000002', '2018-01-21', 'dfghkjgfdsfdgfd', '1', NULL),
	(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BM/1802/000001', NULL, NULL, '0', NULL),
	(8, 1, NULL, 1, 2, 4, NULL, 14, 'BM/1802/000002', '2018-02-20', 'asfdgfhgjhjhfgdfsd', '1', NULL),
	(9, 1, NULL, 1, 2, 3, NULL, 11, 'BM/1802/000003', '2018-02-20', 'test', '1', NULL),
	(10, 1, NULL, 1, 1, 2, NULL, 14, 'BM/1802/000004', '2018-02-20', 'test', '1', NULL),
	(11, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'BM/1804/000001', NULL, NULL, '0', NULL),
	(12, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'BM/1804/000001', NULL, NULL, '0', NULL),
	(13, NULL, NULL, 3, NULL, NULL, NULL, NULL, 'BM/1804/000002', NULL, NULL, '0', NULL),
	(14, 1, 1, 1, 1, NULL, 1, 3, 'BM/1804/000002', '2018-04-23', 'tes bank masuk', '0', NULL),
	(15, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'BM/1804/000003', NULL, NULL, '0', NULL),
	(16, 1, 1, 1, 1, 4, NULL, 3, 'BM/1805/000001', '2018-05-15', 'tes bank masuk edit', '1', NULL),
	(17, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'BM/1805/000002', NULL, NULL, '0', NULL),
	(18, 1, 1, 1, 1, NULL, 1, 3, 'BM/1805/000003', '2018-05-15', 'Tes bank masuk tipe giro', '1', NULL);
/*!40000 ALTER TABLE `trx_bankin` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_bankout
DROP TABLE IF EXISTS `trx_bankout`;
CREATE TABLE IF NOT EXISTS `trx_bankout` (
  `BNKO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `BANK_ID` int(11) DEFAULT NULL,
  `DEPT_ID` int(11) DEFAULT NULL,
  `CURR_ID` int(11) DEFAULT NULL,
  `COA_ID` int(11) DEFAULT NULL,
  `BNKO_CODE` char(30) DEFAULT NULL,
  `BNKO_DATE` date DEFAULT NULL,
  `BNKO_INFO` varchar(1024) DEFAULT NULL,
  `BNKO_STS` char(1) DEFAULT NULL,
  `BNKO_DTSTS` char(1) DEFAULT NULL,
  `BNKO_TAXHEADCODE` char(10) DEFAULT NULL,
  `BNKO_TAXCODE` char(30) DEFAULT NULL,
  `BNKO_APPR` char(30) DEFAULT NULL,
  `BNKO_LOC` char(30) DEFAULT NULL,
  `BNKO_SUPP` char(30) DEFAULT NULL,
  `BNKO_BUDGET` char(30) DEFAULT NULL,
  PRIMARY KEY (`BNKO_ID`),
  KEY `FK_R105` (`DEPT_ID`),
  KEY `FK_R123` (`USER_ID`),
  KEY `FK_R124` (`CURR_ID`),
  KEY `FK_R126` (`COA_ID`),
  KEY `FKBO1` (`BANK_ID`),
  KEY `FKBNKO1` (`BRANCH_ID`),
  CONSTRAINT `FKBNKO1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FKBO1` FOREIGN KEY (`BANK_ID`) REFERENCES `master_bank` (`BANK_ID`),
  CONSTRAINT `FK_R105` FOREIGN KEY (`DEPT_ID`) REFERENCES `master_dept` (`DEPT_ID`),
  CONSTRAINT `FK_R123` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FK_R124` FOREIGN KEY (`CURR_ID`) REFERENCES `master_currency` (`CURR_ID`),
  CONSTRAINT `FK_R126` FOREIGN KEY (`COA_ID`) REFERENCES `chart_of_account` (`COA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_bankout: ~18 rows (approximately)
/*!40000 ALTER TABLE `trx_bankout` DISABLE KEYS */;
INSERT INTO `trx_bankout` (`BNKO_ID`, `USER_ID`, `BRANCH_ID`, `BANK_ID`, `DEPT_ID`, `CURR_ID`, `COA_ID`, `BNKO_CODE`, `BNKO_DATE`, `BNKO_INFO`, `BNKO_STS`, `BNKO_DTSTS`, `BNKO_TAXHEADCODE`, `BNKO_TAXCODE`, `BNKO_APPR`, `BNKO_LOC`, `BNKO_SUPP`, `BNKO_BUDGET`) VALUES
	(1, 1, 1, NULL, NULL, 1, 12, 'BK/1801/000001', '2018-01-18', 'jghfgdfsdghfgfhdgsgdfgdfd', '1', NULL, NULL, NULL, NULL, NULL, '1', NULL),
	(2, 1, 1, NULL, NULL, 1, 5, 'BK/1801/000002', '2018-01-19', 'hfjgkhjfhdgsfgdfg', '1', NULL, NULL, NULL, NULL, NULL, '1', NULL),
	(3, NULL, 1, NULL, NULL, NULL, NULL, 'BK/1802/000001', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, NULL, 1, NULL, NULL, NULL, NULL, 'BK/1802/000002', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, NULL, 1, NULL, NULL, NULL, NULL, 'BK/1802/000003', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, NULL, 1, NULL, NULL, NULL, NULL, 'BK/1802/000004', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, NULL, 1, NULL, NULL, NULL, NULL, 'BK/1802/000005', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, NULL, 1, NULL, NULL, NULL, NULL, 'BK/1802/000006', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, NULL, 1, 1, NULL, 1, 12, 'BK/1802/000007', '2018-02-20', 'dfhghghfdgfsdfghgfbdv', '1', NULL, NULL, NULL, NULL, NULL, '2', NULL),
	(10, NULL, 1, 2, NULL, 1, 14, 'BK/1802/000008', '2018-02-21', 'test', '1', NULL, NULL, NULL, NULL, NULL, '2', NULL),
	(11, NULL, 1, 1, NULL, 1, 15, 'BK/1802/000009', '2018-02-21', 'test', '1', NULL, '', '', NULL, NULL, '2', NULL),
	(12, NULL, 1, 1, NULL, 1, 3, 'BK/1802/000010', '2018-02-23', 'test', '1', NULL, '', '', NULL, NULL, '2', NULL),
	(13, NULL, 3, NULL, NULL, NULL, NULL, 'BK/1804/000001', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(14, NULL, 1, NULL, NULL, NULL, NULL, 'BK/1804/000001', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(15, NULL, 1, NULL, NULL, NULL, NULL, 'BK/1804/000002', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(16, 1, 1, 1, 3, 1, 3, 'BK/1804/000003', '2018-04-25', 'tes bank keluar', '1', NULL, '123', '456789', '20', '3', '3', NULL),
	(17, 1, 1, 1, NULL, 1, 3, 'BK/1805/000001', '2018-05-15', 'tes bank keluar tipe transfer', '1', NULL, '', '', NULL, NULL, NULL, NULL),
	(18, 1, 1, 1, 1, 1, 3, 'BK/1805/000002', '2018-05-15', 'Tes bank keluar tipe giro', '1', NULL, '', '', NULL, NULL, NULL, NULL),
	(19, 1, 1, 1, 1, 1, 3, 'BK/1806/000001', '2018-06-07', 'tes bank keluar giro', '1', NULL, '', '', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `trx_bankout` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_bapp
DROP TABLE IF EXISTS `trx_bapp`;
CREATE TABLE IF NOT EXISTS `trx_bapp` (
  `BAPP_CODE` char(30) DEFAULT NULL,
  `BAPP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPR_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `BAPP_DATE` date DEFAULT NULL,
  `BAPP_DATESTART` date DEFAULT NULL,
  `BAPP_DATEEND` date DEFAULT NULL,
  `BAPP_STS` char(1) DEFAULT NULL,
  `BAPP_DOC` varchar(1024) DEFAULT NULL,
  `BAPP_TYPE` varchar(1024) DEFAULT NULL,
  `BAPP_OLDTXT` char(250) DEFAULT NULL,
  `BAPP_NEWTXT` char(250) DEFAULT NULL,
  `BAPP_FINDATE` date DEFAULT NULL,
  `BAPP_PERIODSTART` date DEFAULT NULL,
  `BAPP_PERIODEND` date DEFAULT NULL,
  `BAPP_INFO` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`BAPP_ID`),
  KEY `FK_R46` (`USER_ID`),
  KEY `FK_R47` (`APPR_ID`),
  KEY `FKBAPP1` (`BRANCH_ID`),
  CONSTRAINT `FKBAPP1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R46` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FK_R47` FOREIGN KEY (`APPR_ID`) REFERENCES `trx_approvalbill` (`APPR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_bapp: ~10 rows (approximately)
/*!40000 ALTER TABLE `trx_bapp` DISABLE KEYS */;
INSERT INTO `trx_bapp` (`BAPP_CODE`, `BAPP_ID`, `APPR_ID`, `USER_ID`, `BRANCH_ID`, `BAPP_DATE`, `BAPP_DATESTART`, `BAPP_DATEEND`, `BAPP_STS`, `BAPP_DOC`, `BAPP_TYPE`, `BAPP_OLDTXT`, `BAPP_NEWTXT`, `BAPP_FINDATE`, `BAPP_PERIODSTART`, `BAPP_PERIODEND`, `BAPP_INFO`) VALUES
	('BA/1712/000001', 1, 1, 1, 1, '2017-12-20', '2017-12-22', '2017-12-29', '1', 'Dokumen BAPP', NULL, 'Visual Lama', 'Visual Baru', '2017-12-20', '2017-12-22', '2017-12-29', 'Info tambahan BAPP'),
	('BA/1801/000001', 2, 5, 1, 1, '2018-01-31', '2018-01-31', '2018-02-02', '1', 'Dokumen BAPP', NULL, 'Teks reklame lama', 'Teks reklame baru', '2018-02-02', '2018-01-31', '2018-04-30', 'Pengerjaan bapp'),
	('BA/1801/000002', 3, 6, 1, 1, '2018-02-02', '2018-02-02', '2018-02-07', '1', '', NULL, 'baru', 'lama', '2018-02-07', '2018-01-31', '2018-01-31', 'kwt'),
	('BA/1802/000001', 15, NULL, NULL, 1, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BA/1802/000002', 16, NULL, NULL, 1, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BA/1803/000001', 18, 19, 1, 1, '2018-03-13', '2018-03-13', '2018-03-13', '1', 'sdfghjk9999', NULL, 'sdfghjkl', 'dkl', '2018-03-30', '2018-03-08', '2018-06-28', 'dfgh'),
	('BA/1804/000001', 19, NULL, NULL, 1, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BA/1804/000001', 20, NULL, NULL, 3, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BA/1804/000001', 21, NULL, NULL, 2, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BA/1804/000002', 22, NULL, NULL, 1, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `trx_bapp` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_bapplog
DROP TABLE IF EXISTS `trx_bapplog`;
CREATE TABLE IF NOT EXISTS `trx_bapplog` (
  `BALG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `LOC_ID` int(11) DEFAULT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `BALG_CODE` char(30) DEFAULT NULL,
  `BALG_CODEPRINT` char(30) DEFAULT NULL,
  `BALG_DATE` date DEFAULT NULL,
  `BALG_STS` char(1) DEFAULT NULL,
  `BALG_DEALER` char(200) DEFAULT NULL,
  `BALG_SIZE` char(200) DEFAULT NULL,
  `BALG_WORK` varchar(1024) DEFAULT NULL,
  `BALG_NOTE` varchar(1024) DEFAULT NULL,
  `BALG_WORKDATE` date DEFAULT NULL,
  `BALG_CONTRACTOR` char(50) DEFAULT NULL,
  `BALG_LOGISTIC` char(50) DEFAULT NULL,
  `BALG_PROD` char(50) DEFAULT NULL,
  `BALG_PRINTTYPE` char(50) DEFAULT NULL,
  PRIMARY KEY (`BALG_ID`),
  KEY `FKBALG1` (`USER_ID`),
  KEY `FKBALG2` (`BRANCH_ID`),
  KEY `FKBALG3` (`LOC_ID`),
  KEY `FKBALG4` (`CUST_ID`),
  CONSTRAINT `FKBALG1` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FKBALG2` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FKBALG3` FOREIGN KEY (`LOC_ID`) REFERENCES `master_location` (`LOC_ID`),
  CONSTRAINT `FKBALG4` FOREIGN KEY (`CUST_ID`) REFERENCES `master_customer` (`CUST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_bapplog: ~1 rows (approximately)
/*!40000 ALTER TABLE `trx_bapplog` DISABLE KEYS */;
INSERT INTO `trx_bapplog` (`BALG_ID`, `USER_ID`, `BRANCH_ID`, `LOC_ID`, `CUST_ID`, `BALG_CODE`, `BALG_CODEPRINT`, `BALG_DATE`, `BALG_STS`, `BALG_DEALER`, `BALG_SIZE`, `BALG_WORK`, `BALG_NOTE`, `BALG_WORKDATE`, `BALG_CONTRACTOR`, `BALG_LOGISTIC`, `BALG_PROD`, `BALG_PRINTTYPE`) VALUES
	(1, 1, 1, 3, 3, 'B1/1804/000001', NULL, '2018-04-09', '1', 'dealer', '4m x 5m', 'recovering', 'catatan', '2018-04-09', 'frengky', 'ratna', 'dhani', 'Recovering');
/*!40000 ALTER TABLE `trx_bapplog` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_brc_ppn
DROP TABLE IF EXISTS `trx_brc_ppn`;
CREATE TABLE IF NOT EXISTS `trx_brc_ppn` (
  `BPPN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `BPPN_CODE` char(30) DEFAULT NULL,
  `BPPN_DATE` date DEFAULT NULL,
  `BPPN_STARTDATE` date DEFAULT NULL,
  `BPPN_ENDDATE` date DEFAULT NULL,
  `BPPN_INFO` varchar(1024) DEFAULT NULL,
  `BPPN_STS` char(1) DEFAULT NULL,
  PRIMARY KEY (`BPPN_ID`),
  KEY `FKBPPN1` (`USER_ID`),
  CONSTRAINT `FKBPPN1` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_brc_ppn: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_brc_ppn` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_brc_ppn` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_budget
DROP TABLE IF EXISTS `trx_budget`;
CREATE TABLE IF NOT EXISTS `trx_budget` (
  `BUD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CURR_ID` int(11) DEFAULT NULL,
  `DEPT_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `BUD_CODE` char(30) DEFAULT NULL,
  `BUD_DATE` date DEFAULT NULL,
  `BUD_ADDRESS` varchar(1024) DEFAULT NULL,
  `BUD_LOC` char(30) DEFAULT NULL,
  `BUD_APPR` char(30) DEFAULT NULL,
  `BUD_PROJECT` char(10) DEFAULT NULL,
  `BUD_INFO` varchar(1024) DEFAULT NULL,
  `BUD_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`BUD_ID`),
  KEY `FK_R108` (`USER_ID`),
  KEY `FK_R109` (`CURR_ID`),
  KEY `FK_R110` (`DEPT_ID`),
  KEY `FKBDG1` (`BRANCH_ID`),
  CONSTRAINT `FKBDG1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R108` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FK_R109` FOREIGN KEY (`CURR_ID`) REFERENCES `master_currency` (`CURR_ID`),
  CONSTRAINT `FK_R110` FOREIGN KEY (`DEPT_ID`) REFERENCES `master_dept` (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_budget: ~6 rows (approximately)
/*!40000 ALTER TABLE `trx_budget` DISABLE KEYS */;
INSERT INTO `trx_budget` (`BUD_ID`, `CURR_ID`, `DEPT_ID`, `USER_ID`, `BRANCH_ID`, `BUD_CODE`, `BUD_DATE`, `BUD_ADDRESS`, `BUD_LOC`, `BUD_APPR`, `BUD_PROJECT`, `BUD_INFO`, `BUD_DTSTS`) VALUES
	(1, NULL, NULL, 1, NULL, 'RA/1801/000001', '2018-01-31', 'Indragiri 61', '1', '5', NULL, 'hgfdgfssfdfgnfbd', '0'),
	(2, NULL, NULL, 1, NULL, 'RA/1801/000002', '2018-01-31', 'Hayam Wuruk 1', '2', '4', NULL, 'sdfgjhkjhfgdfsfdg', '0'),
	(3, NULL, NULL, 1, NULL, 'RA/1802/000001', '2018-02-06', 'Indragiri 61', '1', '6', NULL, 'jhgjhfgdfghkjgh', '0'),
	(4, NULL, NULL, 1, NULL, 'RA/1802/000002', '2018-02-13', 'Adityawarman 41', '3', '16', NULL, 'test', '0'),
	(5, NULL, NULL, NULL, 1, 'RA/1804/000001', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
	(6, NULL, NULL, NULL, 3, 'RA/1804/000001', NULL, NULL, NULL, NULL, NULL, NULL, '0'),
	(7, NULL, NULL, NULL, 3, 'RA/1804/000002', NULL, NULL, NULL, NULL, NULL, NULL, '0');
/*!40000 ALTER TABLE `trx_budget` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_cash_in
DROP TABLE IF EXISTS `trx_cash_in`;
CREATE TABLE IF NOT EXISTS `trx_cash_in` (
  `CSH_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `COA_ID` int(11) DEFAULT NULL,
  `CURR_ID` int(11) DEFAULT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `CSTIN_ID` int(11) DEFAULT NULL,
  `CSH_CODE` char(30) DEFAULT NULL,
  `CSH_DATE` date DEFAULT NULL,
  `CSH_INFO` varchar(1024) DEFAULT NULL,
  `CSH_STS` char(10) DEFAULT NULL,
  `CSH_DTSTS` char(1) DEFAULT NULL,
  `CSH_ACC` char(200) DEFAULT NULL,
  PRIMARY KEY (`CSH_ID`),
  KEY `FK_R82` (`USER_ID`),
  KEY `FK_R83` (`CURR_ID`),
  KEY `FK_R84` (`CUST_ID`),
  KEY `FK_R92` (`COA_ID`),
  KEY `FKCSHIN1` (`BRANCH_ID`),
  KEY `FKCSHIN2` (`CSTIN_ID`),
  CONSTRAINT `FKCSHIN1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FKCSHIN2` FOREIGN KEY (`CSTIN_ID`) REFERENCES `master_cust_intern` (`CSTIN_ID`),
  CONSTRAINT `FK_R82` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FK_R83` FOREIGN KEY (`CURR_ID`) REFERENCES `master_currency` (`CURR_ID`),
  CONSTRAINT `FK_R84` FOREIGN KEY (`CUST_ID`) REFERENCES `master_customer` (`CUST_ID`),
  CONSTRAINT `FK_R92` FOREIGN KEY (`COA_ID`) REFERENCES `chart_of_account` (`COA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_cash_in: ~11 rows (approximately)
/*!40000 ALTER TABLE `trx_cash_in` DISABLE KEYS */;
INSERT INTO `trx_cash_in` (`CSH_ID`, `USER_ID`, `BRANCH_ID`, `COA_ID`, `CURR_ID`, `CUST_ID`, `CSTIN_ID`, `CSH_CODE`, `CSH_DATE`, `CSH_INFO`, `CSH_STS`, `CSH_DTSTS`, `CSH_ACC`) VALUES
	(12, 1, 1, 15, 1, 1, NULL, 'KM/1801/000001', '2018-01-31', 'zdfsdafsdds', '1', NULL, NULL),
	(13, 1, 1, 13, 1, 2, NULL, 'KM/1801/000002', '2018-01-31', 'sdfghlkgjfhdgsfdf', '1', NULL, NULL),
	(14, 1, 1, 11, 1, 4, NULL, 'KM/1802/000001', '2018-02-06', 'rtrjyjthwrwertr', '1', NULL, NULL),
	(15, 1, 1, 9, 1, 2, NULL, 'KM/1802/000002', '2018-02-06', 'tghjggfsfggnfds', '1', NULL, NULL),
	(16, NULL, 1, NULL, NULL, NULL, NULL, 'KM/1802/000003', NULL, NULL, '0', NULL, NULL),
	(17, 1, 1, 11, 1, 3, NULL, 'KM/1802/000004', '2018-02-13', '', '1', NULL, NULL),
	(18, 1, 1, 14, 1, 3, NULL, 'KM/1802/000005', '2018-02-27', 'test', '1', NULL, NULL),
	(19, NULL, 1, NULL, NULL, NULL, NULL, 'KM/1802/000006', NULL, NULL, '0', NULL, NULL),
	(31, NULL, 1, NULL, NULL, NULL, NULL, 'KM/1804/000001', NULL, NULL, '0', NULL, NULL),
	(32, NULL, 3, NULL, NULL, NULL, NULL, 'KM/1804/000001', NULL, NULL, '0', NULL, NULL),
	(33, 1, 1, 1, 1, 4, NULL, 'KM/1804/000002', '2018-04-12', 'asdfgh', '1', NULL, '001001 - Kas Surabaya'),
	(34, NULL, 1, NULL, NULL, NULL, NULL, 'KM/1804/000003', NULL, NULL, '0', NULL, NULL),
	(35, 1, 1, 1, 1, 4, NULL, 'KM/1804/000004', '2018-04-18', 'tes kas masuk', '1', NULL, '001001 - Kas Surabaya'),
	(36, 1, 1, 1, 1, NULL, 1, 'KM/1804/000005', '2018-04-20', 'tesssss', '1', NULL, '001001 - Kas Surabaya'),
	(37, 1, 1, 1, 1, NULL, 1, 'KM/1805/000001', '2018-04-19', 'tes nota gantung masuk', '1', NULL, '001001 - Kas Surabaya'),
	(38, 1, 1, 1, 1, NULL, 1, 'KM/1806/000001', '2018-06-11', 'Tes kas masuk juni 001', '1', NULL, '001001 - Kas Surabaya'),
	(39, 1, 1, 28, 1, NULL, 1, 'KM/1806/000002', '2018-06-12', 'Tes kas baru kas masuk', '1', NULL, '1110009 - KAS BARU');
/*!40000 ALTER TABLE `trx_cash_in` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_cash_out
DROP TABLE IF EXISTS `trx_cash_out`;
CREATE TABLE IF NOT EXISTS `trx_cash_out` (
  `CSHO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `DEPT_ID` int(11) DEFAULT NULL,
  `COA_ID` int(11) DEFAULT NULL,
  `CURR_ID` int(11) DEFAULT NULL,
  `CSHO_CODE` char(30) DEFAULT NULL,
  `CSHO_DATE` date DEFAULT NULL,
  `CSHO_INFO` varchar(1024) DEFAULT NULL,
  `CSHO_STS` char(1) DEFAULT NULL,
  `CSHO_DTSTS` char(1) DEFAULT NULL,
  `CSHO_TAXHEADCODE` char(10) DEFAULT NULL,
  `CSHO_TAXCODE` char(30) DEFAULT NULL,
  `CSHO_APPR` char(30) DEFAULT NULL,
  `CSHO_SUPP` char(30) DEFAULT NULL,
  `CSHO_BUDGET` char(30) DEFAULT NULL,
  PRIMARY KEY (`CSHO_ID`),
  KEY `FK_R104` (`DEPT_ID`),
  KEY `FK_R95` (`USER_ID`),
  KEY `FK_R96` (`CURR_ID`),
  KEY `FK_R97` (`COA_ID`),
  KEY `FKCSHO1` (`BRANCH_ID`),
  CONSTRAINT `FKCSHO1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R104` FOREIGN KEY (`DEPT_ID`) REFERENCES `master_dept` (`DEPT_ID`),
  CONSTRAINT `FK_R95` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FK_R96` FOREIGN KEY (`CURR_ID`) REFERENCES `master_currency` (`CURR_ID`),
  CONSTRAINT `FK_R97` FOREIGN KEY (`COA_ID`) REFERENCES `chart_of_account` (`COA_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_cash_out: ~14 rows (approximately)
/*!40000 ALTER TABLE `trx_cash_out` DISABLE KEYS */;
INSERT INTO `trx_cash_out` (`CSHO_ID`, `USER_ID`, `BRANCH_ID`, `DEPT_ID`, `COA_ID`, `CURR_ID`, `CSHO_CODE`, `CSHO_DATE`, `CSHO_INFO`, `CSHO_STS`, `CSHO_DTSTS`, `CSHO_TAXHEADCODE`, `CSHO_TAXCODE`, `CSHO_APPR`, `CSHO_SUPP`, `CSHO_BUDGET`) VALUES
	(15, 1, 1, 2, 15, 1, 'KK/1802/000001', '2018-02-06', NULL, '1', NULL, NULL, NULL, '10', NULL, '4'),
	(16, 1, 1, 1, 12, 1, 'KK/1802/000002', '2018-02-06', NULL, '1', NULL, NULL, NULL, '', NULL, NULL),
	(17, 1, 1, 2, 15, 1, 'KK/1802/000003', '2018-02-13', NULL, '1', NULL, NULL, NULL, '12', NULL, NULL),
	(18, 1, 1, 2, 15, 1, 'KK/1802/000004', '2018-02-27', NULL, '1', NULL, '', '', '16', NULL, NULL),
	(19, NULL, 1, NULL, NULL, NULL, 'KK/1802/000005', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL),
	(26, NULL, 2, NULL, NULL, NULL, 'KK/1804/000001', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL),
	(27, NULL, 1, NULL, NULL, NULL, 'KK/1804/000001', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL),
	(28, NULL, 3, NULL, NULL, NULL, 'KK/1804/000001', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL),
	(29, NULL, 1, NULL, NULL, NULL, 'KK/1804/000002', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL),
	(30, 1, 1, NULL, 1, 1, 'KK/1804/000003', '2018-04-19', NULL, '1', NULL, '(NULL)', '(NULL)', '(NULL)', '(NULL)', NULL),
	(31, 1, 1, 3, 1, 1, 'KK/1804/000004', '2018-04-20', 'tes lengkap kas keluar', '1', NULL, '123', '12345', '20', '3', '4'),
	(32, 1, 1, NULL, 1, 1, 'KK/1804/000005', '2018-04-20', 'TES', '1', NULL, '', '', NULL, NULL, NULL),
	(33, 1, 1, NULL, 1, 1, 'KK/1805/000001', '2018-04-19', 'Tes nota gantung keluar', '1', NULL, '', '', NULL, NULL, NULL),
	(34, 1, 1, NULL, 1, 1, 'KK/1805/000002', '2018-04-18', 'Tes nota gantung lagi keluar', '1', NULL, '', '', NULL, NULL, NULL),
	(35, 1, 1, NULL, 1, 1, 'KK/1701/000003', '2017-01-02', 'tes minus', '1', NULL, '', '', NULL, NULL, NULL),
	(36, 1, 1, 1, 1, 1, 'KK/1806/000001', '2018-06-11', 'Tes kas keluar juni 001', '1', NULL, '', '', NULL, NULL, NULL),
	(37, 1, 1, 1, 28, 1, 'KK/1806/000002', '2018-06-12', 'Tes kas baru kas keluar', '1', NULL, '', '', NULL, NULL, NULL);
/*!40000 ALTER TABLE `trx_cash_out` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_giro_in
DROP TABLE IF EXISTS `trx_giro_in`;
CREATE TABLE IF NOT EXISTS `trx_giro_in` (
  `GRIN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BANK_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `GRIN_CODE` char(30) DEFAULT NULL,
  `GRIN_DATE` date DEFAULT NULL,
  `GRIN_INFO` varchar(1024) DEFAULT NULL,
  `GRIN_STS` char(1) DEFAULT NULL,
  `GRIN_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`GRIN_ID`),
  KEY `FK_RELATIONSHIP_131` (`BANK_ID`),
  KEY `FKGRIN1` (`USER_ID`),
  KEY `FKGRIN2` (`BRANCH_ID`),
  CONSTRAINT `FKGRIN1` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FKGRIN2` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_RELATIONSHIP_131` FOREIGN KEY (`BANK_ID`) REFERENCES `master_bank` (`BANK_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_giro_in: ~8 rows (approximately)
/*!40000 ALTER TABLE `trx_giro_in` DISABLE KEYS */;
INSERT INTO `trx_giro_in` (`GRIN_ID`, `BANK_ID`, `USER_ID`, `BRANCH_ID`, `GRIN_CODE`, `GRIN_DATE`, `GRIN_INFO`, `GRIN_STS`, `GRIN_DTSTS`) VALUES
	(1, 1, 1, 1, 'GM/1801/000001', '0000-00-00', 'fhdgsfgdhfgjhdgsdf', '1', NULL),
	(2, 1, 1, 1, 'GM/1801/000002', '0000-00-00', 'gjfhdgfsdgdggdfg', '1', NULL),
	(3, 2, 1, 1, 'GM/1802/000001', '0000-00-00', 'sdfhghfdgsf', '1', NULL),
	(4, 1, 1, 1, 'GM/1802/000002', '0000-00-00', 'sgdfnfndgsgdf', '1', NULL),
	(5, 2, 1, 1, 'GM/1802/000003', '0000-00-00', 'test', '1', NULL),
	(6, NULL, 1, 1, 'GM/1804/000001', NULL, NULL, '0', NULL),
	(7, NULL, 3, 3, 'GM/1804/000001', NULL, NULL, '0', NULL),
	(8, 1, 1, 1, 'GM/1805/000001', '2018-05-18', 'tes giro masuk', '1', NULL);
/*!40000 ALTER TABLE `trx_giro_in` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_giro_out
DROP TABLE IF EXISTS `trx_giro_out`;
CREATE TABLE IF NOT EXISTS `trx_giro_out` (
  `GROUT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BANK_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `GROUT_CODE` char(30) DEFAULT NULL,
  `GROUT_DATE` date DEFAULT NULL,
  `GROUT_INFO` varchar(1024) DEFAULT NULL,
  `GROUT_STS` char(1) DEFAULT NULL,
  `GROUT_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`GROUT_ID`),
  KEY `FK_R135` (`BANK_ID`),
  KEY `FKGROUT1` (`USER_ID`),
  KEY `FKGROUT2` (`BRANCH_ID`),
  CONSTRAINT `FKGROUT1` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FKGROUT2` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R135` FOREIGN KEY (`BANK_ID`) REFERENCES `master_bank` (`BANK_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_giro_out: ~8 rows (approximately)
/*!40000 ALTER TABLE `trx_giro_out` DISABLE KEYS */;
INSERT INTO `trx_giro_out` (`GROUT_ID`, `BANK_ID`, `USER_ID`, `BRANCH_ID`, `GROUT_CODE`, `GROUT_DATE`, `GROUT_INFO`, `GROUT_STS`, `GROUT_DTSTS`) VALUES
	(1, 1, 1, 1, 'GK/1801/000001', '0000-00-00', 'zxfkhgjfhdgfsgdhfgf', '1', NULL),
	(2, 2, 1, 1, 'GK/1801/000002', '0000-00-00', 'gjhfgdfsdfgnfbdfsdcv', '1', NULL),
	(3, 2, 1, 1, 'GK/1802/000001', '0000-00-00', 'zdhfgfgfdaasdf', '1', NULL),
	(4, 2, 1, 1, 'GK/1802/000002', '0000-00-00', 'nfbgfzxnczfzxvzvas', '1', NULL),
	(5, 1, 1, 1, 'GK/1802/000003', '0000-00-00', 'test', '1', NULL),
	(6, NULL, 3, 3, 'GK/1804/000001', NULL, NULL, '0', NULL),
	(7, NULL, 1, 1, 'GK/1804/000001', NULL, NULL, '0', NULL),
	(8, 1, 1, 1, 'GK/1806/000001', '2018-06-07', 'tes pencairan giro keluar', '1', NULL);
/*!40000 ALTER TABLE `trx_giro_out` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_invoice
DROP TABLE IF EXISTS `trx_invoice`;
CREATE TABLE IF NOT EXISTS `trx_invoice` (
  `INV_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `INC_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `CURR_ID` int(11) DEFAULT NULL,
  `INV_CODE` char(30) DEFAULT NULL,
  `INV_DATE` date DEFAULT NULL,
  `INV_INFO` varchar(1024) DEFAULT NULL,
  `INV_TYPE` char(100) DEFAULT NULL,
  `INV_TERM` char(100) DEFAULT NULL,
  `INV_STS` char(1) DEFAULT NULL,
  `INV_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`INV_ID`),
  KEY `FK_R52` (`INC_ID`),
  KEY `FK_INV1` (`BRANCH_ID`),
  KEY `FK_INV2` (`CUST_ID`),
  KEY `FK_INV3` (`CURR_ID`),
  KEY `FK_INV4` (`USER_ID`),
  CONSTRAINT `FK_INV1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_INV2` FOREIGN KEY (`CUST_ID`) REFERENCES `master_customer` (`CUST_ID`),
  CONSTRAINT `FK_INV3` FOREIGN KEY (`CURR_ID`) REFERENCES `master_currency` (`CURR_ID`),
  CONSTRAINT `FK_INV4` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FK_R52` FOREIGN KEY (`INC_ID`) REFERENCES `invoice_type` (`INC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_invoice: ~17 rows (approximately)
/*!40000 ALTER TABLE `trx_invoice` DISABLE KEYS */;
INSERT INTO `trx_invoice` (`INV_ID`, `USER_ID`, `INC_ID`, `BRANCH_ID`, `CUST_ID`, `CURR_ID`, `INV_CODE`, `INV_DATE`, `INV_INFO`, `INV_TYPE`, `INV_TERM`, `INV_STS`, `INV_DTSTS`) VALUES
	(3, 1, 1, 1, 4, 1, 'INV/1802/000001', '2018-02-13', 'Info invoice', '0', '', '1', NULL),
	(5, 1, 3, 1, 4, 1, 'INV/1802/000002', '2018-02-13', 'Invoice Pajak Reklame', '1', '', '1', NULL),
	(6, 1, 3, 1, 4, 1, 'INV/1802/000003', '2018-02-14', 'Percobaan', '1', '', '1', NULL),
	(7, 1, 3, 1, 4, 1, 'INV/1802/000004', '2018-02-20', 'twest', '1', '', '1', NULL),
	(8, 1, 1, 1, 4, 1, 'INV/1802/000005', '2018-02-20', 'tesr', '0', '', '1', NULL),
	(9, NULL, NULL, NULL, NULL, NULL, 'INV/1802/000006', NULL, NULL, NULL, NULL, '0', NULL),
	(10, 1, 1, 1, 4, 1, 'INV/1803/000001', '2018-03-05', 'Info testing', '0', '', '1', NULL),
	(11, 1, 3, 1, 4, 1, 'INV/1803/000002', '2018-03-20', 'aaaaaaaa', '1', '1', '1', NULL),
	(12, NULL, NULL, NULL, NULL, NULL, 'INV/1803/000003', NULL, NULL, NULL, NULL, '0', NULL),
	(13, NULL, NULL, 1, NULL, NULL, 'INV/1804/000001', NULL, NULL, NULL, NULL, '0', NULL),
	(14, NULL, NULL, 3, NULL, NULL, 'INV/1804/000001', NULL, NULL, NULL, NULL, '0', NULL),
	(15, NULL, NULL, 1, NULL, NULL, 'INV/1804/000002', NULL, NULL, NULL, NULL, '0', NULL),
	(16, NULL, NULL, 1, NULL, NULL, 'INV/1804/000003', NULL, NULL, NULL, NULL, '0', NULL),
	(17, NULL, NULL, 1, NULL, NULL, 'INV/1804/000004', NULL, NULL, NULL, NULL, '0', NULL),
	(18, NULL, NULL, 1, NULL, NULL, 'INV/1804/000005', NULL, NULL, NULL, NULL, '0', NULL),
	(19, 1, 1, 1, 4, 1, 'INV/1807/000001', '2018-07-05', 'tidak ada', '0', '1', '1', NULL),
	(20, 1, 3, 1, 4, 1, 'INV/1807/000002', '2018-07-05', 'tidak ada', '1', '1', '1', NULL);
/*!40000 ALTER TABLE `trx_invoice` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_permitappr
DROP TABLE IF EXISTS `trx_permitappr`;
CREATE TABLE IF NOT EXISTS `trx_permitappr` (
  `PAPPR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `APPR_ID` int(11) DEFAULT NULL,
  `GOV_ID` int(11) DEFAULT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `BB_ID` int(11) DEFAULT NULL,
  `LOC_ID` int(11) DEFAULT NULL,
  `PLC_ID` int(11) DEFAULT NULL,
  `PRMTTYP_ID` int(11) DEFAULT NULL,
  `PAPPR_CODE` char(30) DEFAULT NULL,
  `PAPPR_DATE` date DEFAULT NULL,
  `PAPPR_URG` char(30) DEFAULT NULL,
  `PAPPR_APPRBRC` char(30) DEFAULT NULL,
  `PAPPR_PAPPRBRC` char(30) DEFAULT NULL,
  `PAPPR_LOC` char(30) DEFAULT NULL,
  `PAPPR_WIDTH` int(11) DEFAULT NULL,
  `PAPPR_LENGTH` int(11) DEFAULT NULL,
  `PAPPR_HEIGHT` int(11) DEFAULT NULL,
  `PAPPR_SUMSIZE` int(11) DEFAULT NULL,
  `PAPPR_PLCSUM` int(11) DEFAULT NULL,
  `PAPPR_SIDE` char(100) DEFAULT NULL,
  `PAPPR_DEST` char(100) DEFAULT NULL,
  `PAPPR_INFO` varchar(1024) DEFAULT NULL,
  `PAPPR_STS` char(1) DEFAULT NULL,
  PRIMARY KEY (`PAPPR_ID`),
  KEY `FK_R111` (`USER_ID`),
  KEY `FK_R112` (`APPR_ID`),
  KEY `FK_R113` (`GOV_ID`),
  KEY `FK_R114` (`CUST_ID`),
  KEY `FK_R115` (`BB_ID`),
  KEY `FK_R116` (`PRMTTYP_ID`),
  KEY `FK_PAPPR1` (`LOC_ID`),
  KEY `FKPAPPR2` (`PLC_ID`),
  KEY `FKPAPPR3` (`BRANCH_ID`),
  CONSTRAINT `FKPAPPR2` FOREIGN KEY (`PLC_ID`) REFERENCES `master_placement` (`PLC_ID`),
  CONSTRAINT `FKPAPPR3` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_PAPPR1` FOREIGN KEY (`LOC_ID`) REFERENCES `master_location` (`LOC_ID`),
  CONSTRAINT `FK_R111` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FK_R112` FOREIGN KEY (`APPR_ID`) REFERENCES `trx_approvalbill` (`APPR_ID`),
  CONSTRAINT `FK_R113` FOREIGN KEY (`GOV_ID`) REFERENCES `master_gov_type` (`GOV_ID`),
  CONSTRAINT `FK_R114` FOREIGN KEY (`CUST_ID`) REFERENCES `master_customer` (`CUST_ID`),
  CONSTRAINT `FK_R115` FOREIGN KEY (`BB_ID`) REFERENCES `master_bboard` (`BB_ID`),
  CONSTRAINT `FK_R116` FOREIGN KEY (`PRMTTYP_ID`) REFERENCES `master_permit_type` (`PRMTTYP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_permitappr: ~8 rows (approximately)
/*!40000 ALTER TABLE `trx_permitappr` DISABLE KEYS */;
INSERT INTO `trx_permitappr` (`PAPPR_ID`, `USER_ID`, `BRANCH_ID`, `APPR_ID`, `GOV_ID`, `CUST_ID`, `BB_ID`, `LOC_ID`, `PLC_ID`, `PRMTTYP_ID`, `PAPPR_CODE`, `PAPPR_DATE`, `PAPPR_URG`, `PAPPR_APPRBRC`, `PAPPR_PAPPRBRC`, `PAPPR_LOC`, `PAPPR_WIDTH`, `PAPPR_LENGTH`, `PAPPR_HEIGHT`, `PAPPR_SUMSIZE`, `PAPPR_PLCSUM`, `PAPPR_SIDE`, `PAPPR_DEST`, `PAPPR_INFO`, `PAPPR_STS`) VALUES
	(7, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 'PI/1801/000001', '2018-01-24', 'Standard', NULL, NULL, NULL, 4, 6, 1, 24, 1, 'Depan', NULL, NULL, '0'),
	(8, 1, 1, NULL, 1, 3, 1, 1, NULL, 1, 'PI/1801/000002', '2018-01-31', 'Standard', NULL, NULL, NULL, 4, 6, 0, 24, 1, 'Depan', NULL, NULL, '0'),
	(9, 1, 1, NULL, 1, 4, 1, 3, NULL, 1, 'PI/1802/000001', '2018-02-20', 'Standard', NULL, NULL, NULL, 4, 6, 0, 24, 1, 'Depan', NULL, NULL, '0'),
	(10, 1, 1, NULL, 1, 4, 1, 3, NULL, 1, 'PI/1802/000002', '2018-02-20', 'Standard', NULL, NULL, NULL, 4, 6, NULL, 24, 1, 'depan', NULL, NULL, '0'),
	(11, 1, 1, 19, 1, 4, 1, 3, NULL, 1, 'PI/1803/000001', '2018-03-20', 'Standard', NULL, NULL, NULL, 8, 4, NULL, 32, 1, 'depan', NULL, 'aaaaaaaa', '1'),
	(12, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PI/1804/000001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
	(13, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PI/1804/000001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
	(14, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PI/1804/000002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0');
/*!40000 ALTER TABLE `trx_permitappr` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_po
DROP TABLE IF EXISTS `trx_po`;
CREATE TABLE IF NOT EXISTS `trx_po` (
  `PO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `CURR_ID` int(11) DEFAULT NULL,
  `APPR_ID` int(11) DEFAULT NULL,
  `SUPP_ID` int(11) DEFAULT NULL,
  `LOC_ID` int(11) DEFAULT NULL,
  `PO_CODE` char(30) DEFAULT NULL,
  `PO_STS` char(1) DEFAULT NULL,
  `PO_DATE` date DEFAULT NULL,
  `PO_ORDNUM` char(30) DEFAULT NULL,
  `PO_TERM` char(20) DEFAULT NULL,
  `PO_INFO` varchar(1024) DEFAULT NULL,
  `PO_SUB` bigint(20) DEFAULT NULL,
  `PO_GTOTAL` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PO_ID`),
  KEY `FK_R22` (`SUPP_ID`),
  KEY `FK_R23` (`APPR_ID`),
  KEY `FK_R24` (`CURR_ID`),
  KEY `FK_R33` (`USER_ID`),
  KEY `FKPO1` (`LOC_ID`),
  KEY `FKPO2` (`BRANCH_ID`),
  CONSTRAINT `FKPO1` FOREIGN KEY (`LOC_ID`) REFERENCES `master_location` (`LOC_ID`),
  CONSTRAINT `FKPO2` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R22` FOREIGN KEY (`SUPP_ID`) REFERENCES `master_supplier` (`SUPP_ID`),
  CONSTRAINT `FK_R23` FOREIGN KEY (`APPR_ID`) REFERENCES `trx_approvalbill` (`APPR_ID`),
  CONSTRAINT `FK_R24` FOREIGN KEY (`CURR_ID`) REFERENCES `master_currency` (`CURR_ID`),
  CONSTRAINT `FK_R33` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_po: ~17 rows (approximately)
/*!40000 ALTER TABLE `trx_po` DISABLE KEYS */;
INSERT INTO `trx_po` (`PO_ID`, `USER_ID`, `BRANCH_ID`, `CURR_ID`, `APPR_ID`, `SUPP_ID`, `LOC_ID`, `PO_CODE`, `PO_STS`, `PO_DATE`, `PO_ORDNUM`, `PO_TERM`, `PO_INFO`, `PO_SUB`, `PO_GTOTAL`) VALUES
	(6, 1, 1, 1, 4, 1, 2, 'PO/1801/000001', '1', '2018-01-29', 'SO9879', '-', 'Langsung bayar', 20000, 20000),
	(7, 1, 1, 1, NULL, 2, 1, 'PO/1801/000002', '1', '2018-01-29', 'SO0567', '-', 'Langsung Bayar', 5000, 5000),
	(8, 1, 1, 1, 5, 1, 1, 'PO/1801/000003', '1', '2018-01-31', 'SO0108201', '0', 'Langsung bayar tunai', 50000, 50000),
	(9, NULL, 1, NULL, NULL, NULL, NULL, 'PO/1801/000004', '0', NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 1, 1, 1, 6, 3, 1, 'PO/1801/000005', '1', '2018-01-31', '', '0', 'tunai', 1000000, 1000000),
	(11, 1, 1, 1, 10, 3, 3, 'PO/1802/000001', '1', '2018-02-06', '', '7', 'Pembayaran setelah recovering', 5000000, 5000000),
	(12, 1, 1, 1, 16, 3, 3, 'PO/1802/000002', '1', '2018-02-13', 'soggggg', '0', 'tttt', 5000000, 5000000),
	(13, 1, 1, 1, 17, 2, 3, 'PO/1802/000003', '1', '2018-02-26', 'TESPO', '0', 'Langsung Bayar', 25000, 25000),
	(14, 1, 1, 1, 19, 3, 3, 'PO/1803/000001', '1', '2018-03-14', '', '7', 'Info testing', 5000000, 5000000),
	(15, 1, 1, 1, 19, 2, 3, 'PO/1803/000002', '1', '2018-03-16', '', '0', 'Langsung', 25000, 25000),
	(16, NULL, 1, NULL, NULL, NULL, NULL, 'PO/1804/000001', '0', NULL, NULL, NULL, NULL, NULL, NULL),
	(17, NULL, 3, NULL, NULL, NULL, NULL, 'PO/1804/000001', '0', NULL, NULL, NULL, NULL, NULL, NULL),
	(18, NULL, 2, NULL, NULL, NULL, NULL, 'PO/1804/000001', '0', NULL, NULL, NULL, NULL, NULL, NULL),
	(19, 1, 1, 1, 20, 3, 3, 'PO/1804/000002', '1', '2018-04-16', '', '7', 'Bayar 7 hari setelahnya', 5000000, 5000000),
	(20, 1, 1, 1, 32, 3, 3, 'PO/1807/000001', '1', '2018-07-05', '', '7', 'tidak ada', 5000000, 5000000),
	(21, 1, 1, 1, 32, 2, 3, 'PO/1807/000002', '1', '2018-07-05', '', '7', 'tidak ada', 1000000, 1000000),
	(22, 1, 1, 1, 32, 1, 3, 'PO/1807/000003', '1', '2018-07-05', '', '7', 'tidak ada', 100000, 100000),
	(23, 1, 1, 1, 32, 3, 3, 'PO/1808/000001', '1', '2018-08-14', '', '0', 'tes', 2500000, 2500000);
/*!40000 ALTER TABLE `trx_po` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_po_ga
DROP TABLE IF EXISTS `trx_po_ga`;
CREATE TABLE IF NOT EXISTS `trx_po_ga` (
  `POGA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUPP_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `CURR_ID` int(11) DEFAULT NULL,
  `POGA_CODE` char(30) DEFAULT NULL,
  `POGA_STS` char(1) DEFAULT NULL,
  `POGA_DATE` date DEFAULT NULL,
  `POGA_ORDNUM` char(30) DEFAULT NULL,
  `POGA_TERM` char(30) DEFAULT NULL,
  `POGA_INFO` varchar(1024) DEFAULT NULL,
  `POGA_SUB` bigint(20) DEFAULT NULL,
  `POGA_GTOTAL` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`POGA_ID`),
  KEY `FK_R56` (`CURR_ID`),
  KEY `FK_R57` (`USER_ID`),
  KEY `FK_R58` (`SUPP_ID`),
  KEY `FKPOGA1` (`BRANCH_ID`),
  CONSTRAINT `FKPOGA1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R56` FOREIGN KEY (`CURR_ID`) REFERENCES `master_currency` (`CURR_ID`),
  CONSTRAINT `FK_R57` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FK_R58` FOREIGN KEY (`SUPP_ID`) REFERENCES `master_supplier` (`SUPP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_po_ga: ~10 rows (approximately)
/*!40000 ALTER TABLE `trx_po_ga` DISABLE KEYS */;
INSERT INTO `trx_po_ga` (`POGA_ID`, `SUPP_ID`, `USER_ID`, `BRANCH_ID`, `CURR_ID`, `POGA_CODE`, `POGA_STS`, `POGA_DATE`, `POGA_ORDNUM`, `POGA_TERM`, `POGA_INFO`, `POGA_SUB`, `POGA_GTOTAL`) VALUES
	(6, 1, 1, 1, 1, 'POG/1801/000001', '1', '2018-01-30', 'SO08079', '0', 'Langsung bayar', 30000, 30000),
	(7, 2, 1, 1, 1, 'POG/1801/000002', '1', '2018-01-30', 'SO079679', '0', 'Langsung Bayar', 25000, 25000),
	(8, 2, 1, 1, 1, 'POG/1801/000003', '1', '2018-01-31', 'SO0800', '0', 'Langsung bayar', 5000, 5000),
	(9, 1, 1, 1, 1, 'POG/1802/000001', '0', '2018-02-18', '', '0', 'Langsung Bayar', 35000, 35000),
	(10, 1, 1, 1, 1, 'POG/1802/000002', '1', '2018-02-20', '', '0', 'langasung', 205000, 205000),
	(11, NULL, NULL, 1, NULL, 'POG/1804/000001', '0', NULL, NULL, NULL, NULL, NULL, NULL),
	(12, NULL, NULL, 3, NULL, 'POG/1804/000001', '0', NULL, NULL, NULL, NULL, NULL, NULL),
	(13, 1, 1, 1, 1, 'POG/1804/000002', '1', '2018-04-16', '', '7', 'Info PO', 175000, 175000),
	(14, NULL, NULL, 1, NULL, 'OB/1804/000001', '0', NULL, NULL, NULL, NULL, NULL, NULL),
	(15, 2, 1, 1, 1, 'OB/1804/000001', '1', '2018-04-27', 'SO456789', '0', 'Tes POGAa', 10000, 10000);
/*!40000 ALTER TABLE `trx_po_ga` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_prc_ga
DROP TABLE IF EXISTS `trx_prc_ga`;
CREATE TABLE IF NOT EXISTS `trx_prc_ga` (
  `PRCGA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `CURR_ID` int(11) DEFAULT NULL,
  `POGA_ID` int(11) DEFAULT NULL,
  `PRCGA_CODE` char(30) DEFAULT NULL,
  `PRCGA_DATE` date DEFAULT NULL,
  `PRCGA_INV` char(50) DEFAULT NULL,
  `PRCGA_INFO` varchar(1024) DEFAULT NULL,
  `PRCGA_STS` char(1) DEFAULT NULL,
  `PRCGA_SUB` bigint(20) DEFAULT NULL,
  `PRCGA_DISC` int(11) DEFAULT NULL,
  `PRCGA_PPN` int(11) DEFAULT NULL,
  `PRCGA_COST` int(11) DEFAULT NULL,
  `PRCGA_GTOTAL` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PRCGA_ID`),
  KEY `FK_R62` (`POGA_ID`),
  KEY `FK_R63` (`USER_ID`),
  KEY `FK_R64` (`CURR_ID`),
  KEY `FKPRCGA1` (`BRANCH_ID`),
  CONSTRAINT `FKPRCGA1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R62` FOREIGN KEY (`POGA_ID`) REFERENCES `trx_po_ga` (`POGA_ID`),
  CONSTRAINT `FK_R63` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FK_R64` FOREIGN KEY (`CURR_ID`) REFERENCES `master_currency` (`CURR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_prc_ga: ~8 rows (approximately)
/*!40000 ALTER TABLE `trx_prc_ga` DISABLE KEYS */;
INSERT INTO `trx_prc_ga` (`PRCGA_ID`, `USER_ID`, `BRANCH_ID`, `CURR_ID`, `POGA_ID`, `PRCGA_CODE`, `PRCGA_DATE`, `PRCGA_INV`, `PRCGA_INFO`, `PRCGA_STS`, `PRCGA_SUB`, `PRCGA_DISC`, `PRCGA_PPN`, `PRCGA_COST`, `PRCGA_GTOTAL`) VALUES
	(1, 1, 1, 1, 6, 'BLG/1801/000001', '2018-01-30', 'INV09876', 'Langsung bayar', '1', 30000, 0, 0, 10000, 40000),
	(2, 1, 1, 1, 7, 'BLG/1801/000002', '2018-01-30', 'INV567', 'Langsung Bayar', '1', 25000, 0, 0, 10000, 35000),
	(5, 1, 1, 1, 8, 'BLG/1802/000001', '2018-02-18', '', 'Langsung bayar', '1', 5000, 0, 0, 0, 5000),
	(6, 1, 1, 1, 10, 'BLG/1802/000002', '2018-02-20', '', 'langasung', '1', 205000, 0, 0, 10000, 215000),
	(7, NULL, 1, NULL, NULL, 'BLG/1804/000001', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
	(8, NULL, 3, NULL, NULL, 'BLG/1804/000001', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
	(10, 1, 1, 1, 13, 'BLG/1804/000002', '2018-04-16', '', 'Info PO', '1', 175000, 0, 0, 0, 175000),
	(11, 1, 1, 1, 15, 'PB/1804/000001', '2018-04-27', 'so098765', 'Tes POGAa', '1', 10000, 0, 0, 5000, 15000);
/*!40000 ALTER TABLE `trx_prc_ga` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_procurement
DROP TABLE IF EXISTS `trx_procurement`;
CREATE TABLE IF NOT EXISTS `trx_procurement` (
  `PRC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PO_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `CURR_ID` int(11) DEFAULT NULL,
  `PRC_CODE` char(30) DEFAULT NULL,
  `PRC_DATE` date DEFAULT NULL,
  `PRC_INVOICE` char(50) DEFAULT NULL,
  `PRC_INFO` varchar(1024) DEFAULT NULL,
  `PRC_STS` char(1) DEFAULT NULL,
  `PRC_SUB` bigint(20) DEFAULT NULL,
  `PRC_DISC` int(11) DEFAULT NULL,
  `PRC_PPN` int(11) DEFAULT NULL,
  `PRC_COST` int(11) DEFAULT NULL,
  `PRC_GTOTAL` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PRC_ID`),
  KEY `FK_R25` (`PO_ID`),
  KEY `FK_R26` (`CURR_ID`),
  KEY `FK_R34` (`USER_ID`),
  KEY `FKPRC1` (`BRANCH_ID`),
  CONSTRAINT `FKPRC1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R25` FOREIGN KEY (`PO_ID`) REFERENCES `trx_po` (`PO_ID`),
  CONSTRAINT `FK_R26` FOREIGN KEY (`CURR_ID`) REFERENCES `master_currency` (`CURR_ID`),
  CONSTRAINT `FK_R34` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_procurement: ~16 rows (approximately)
/*!40000 ALTER TABLE `trx_procurement` DISABLE KEYS */;
INSERT INTO `trx_procurement` (`PRC_ID`, `PO_ID`, `USER_ID`, `BRANCH_ID`, `CURR_ID`, `PRC_CODE`, `PRC_DATE`, `PRC_INVOICE`, `PRC_INFO`, `PRC_STS`, `PRC_SUB`, `PRC_DISC`, `PRC_PPN`, `PRC_COST`, `PRC_GTOTAL`) VALUES
	(3, 6, 1, 1, 1, 'BL/1801/000001', '2018-01-29', 'INV09765', 'Langsung bayar', '0', 20000, 0, 0, 10000, 30000),
	(4, 7, 1, 1, 1, 'BL/1801/000002', '2018-01-29', 'INV054111', 'Langsung Bayar', '1', 5000, 0, 0, 0, 5000),
	(5, 8, 1, 1, 1, 'BL/1801/000003', '2018-01-31', 'INV08888', 'Langsung bayar tunai', '1', 50000, 0, 0, 10000, 60000),
	(6, 10, 1, 1, 1, 'BL/1801/000004', '2018-01-31', '66655', 'tunai', '1', 1000000, 0, 0, 10000, 1010000),
	(11, 11, 1, 1, 1, 'BL/1802/000001', '2018-02-06', 'INV09875', 'Pembayaran setelah recovering', '1', 5000000, 0, 500000, 50000, 5550000),
	(12, 13, 1, 1, 1, 'BL/1802/000002', '2018-02-26', '', 'Langsung Bayar', '1', 25000, 0, 0, 0, 25000),
	(13, 14, 1, 1, 1, 'BL/1803/000001', '2018-03-15', '56789', 'Info testing', '1', 5000000, 500000, 500000, 10000, 5010000),
	(14, 12, 1, 1, 1, 'BL/1803/000002', '2018-03-15', 'aaaa', 'ttttzzzzz', '1', 5000000, 1000000, 400000, 0, 4400000),
	(15, 15, 1, 1, 1, 'BL/1803/000003', '2018-03-16', '', 'Langsung', '1', 25000, 0, 0, 0, 25000),
	(16, NULL, NULL, 1, NULL, 'BL/1804/000001', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
	(17, NULL, NULL, 3, NULL, 'BL/1804/000001', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
	(18, NULL, NULL, 3, NULL, 'BL/1804/000002', NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
	(19, 19, 1, 1, 1, 'BL/1804/000002', '2018-04-16', '', 'Bayar 7 hari setelahnya', '1', 5000000, 0, 500000, 0, 5500000),
	(20, 20, 1, 1, 1, 'BL/1807/000001', '2018-07-05', '', 'tidak ada', '1', 5000000, 500000, 450000, 125000, 5075000),
	(21, 21, 1, 1, 1, 'BL/1807/000002', '2018-07-05', '', 'tidak ada', '1', 1000000, 0, 200000, 0, 1200000),
	(22, 22, 1, 1, 1, 'BL/1807/000003', '2018-07-05', '', 'tidak ada', '1', 100000, 0, 0, 15000, 115000),
	(23, 23, 1, 1, 1, 'BL/1808/000001', '2018-08-14', '', 'tes', '1', 2500000, 0, 0, 0, 2500000);
/*!40000 ALTER TABLE `trx_procurement` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_tax_invoice
DROP TABLE IF EXISTS `trx_tax_invoice`;
CREATE TABLE IF NOT EXISTS `trx_tax_invoice` (
  `TINV_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `INV_ID` int(11) DEFAULT NULL,
  `TINV_CODE` char(30) DEFAULT NULL,
  `TINV_DATE` date DEFAULT NULL,
  `TINV_TAXHEADCODE` char(10) DEFAULT NULL,
  `TINV_TAXCODE` char(30) DEFAULT NULL,
  `TINV_STS` char(1) DEFAULT NULL,
  `TINV_INFO` varchar(1024) DEFAULT NULL,
  `TINV_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`TINV_ID`),
  KEY `FKTINV1` (`CUST_ID`),
  KEY `FKTINV2` (`INV_ID`),
  KEY `FKTINV3` (`USER_ID`),
  CONSTRAINT `FKTINV1` FOREIGN KEY (`CUST_ID`) REFERENCES `master_customer` (`CUST_ID`),
  CONSTRAINT `FKTINV2` FOREIGN KEY (`INV_ID`) REFERENCES `trx_invoice` (`INV_ID`),
  CONSTRAINT `FKTINV3` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_tax_invoice: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_tax_invoice` DISABLE KEYS */;
INSERT INTO `trx_tax_invoice` (`TINV_ID`, `USER_ID`, `CUST_ID`, `INV_ID`, `TINV_CODE`, `TINV_DATE`, `TINV_TAXHEADCODE`, `TINV_TAXCODE`, `TINV_STS`, `TINV_INFO`, `TINV_DTSTS`) VALUES
	(1, 1, 4, 10, NULL, '2018-03-05', '111', '2121', '1', 'Info testing', NULL);
/*!40000 ALTER TABLE `trx_tax_invoice` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_usage
DROP TABLE IF EXISTS `trx_usage`;
CREATE TABLE IF NOT EXISTS `trx_usage` (
  `USG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPR_ID` int(11) DEFAULT NULL,
  `LOC_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `USG_CODE` char(30) DEFAULT NULL,
  `USG_DATE` date DEFAULT NULL,
  `USG_STS` char(1) DEFAULT NULL,
  `USG_INFO` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`USG_ID`),
  KEY `FK_R37` (`USER_ID`),
  KEY `FK_R39` (`APPR_ID`),
  KEY `FKUSG1` (`LOC_ID`),
  KEY `FKUSG2` (`BRANCH_ID`),
  CONSTRAINT `FKUSG1` FOREIGN KEY (`LOC_ID`) REFERENCES `master_location` (`LOC_ID`),
  CONSTRAINT `FKUSG2` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R37` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FK_R39` FOREIGN KEY (`APPR_ID`) REFERENCES `trx_approvalbill` (`APPR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_usage: ~13 rows (approximately)
/*!40000 ALTER TABLE `trx_usage` DISABLE KEYS */;
INSERT INTO `trx_usage` (`USG_ID`, `APPR_ID`, `LOC_ID`, `USER_ID`, `BRANCH_ID`, `USG_CODE`, `USG_DATE`, `USG_STS`, `USG_INFO`) VALUES
	(4, 4, 2, 1, NULL, 'PK/1801/000001', '2018-01-30', '1', 'Pembuatan Billboard'),
	(5, NULL, 1, 1, NULL, 'PK/1801/000002', '2018-01-30', '1', 'Pembuatan kerangka'),
	(6, NULL, 1, 1, NULL, 'PK/1801/000003', '2018-01-30', '1', 'Pembuatan sesuatu'),
	(7, 5, 1, 1, NULL, 'PK/1801/000004', '2018-01-31', '1', 'Pemakaian untuk bahan konstruksi'),
	(8, NULL, NULL, NULL, NULL, 'PK/1801/000005', NULL, '0', NULL),
	(9, NULL, NULL, NULL, NULL, 'PK/1801/000006', NULL, '0', NULL),
	(10, NULL, NULL, NULL, NULL, 'PK/1802/000001', NULL, '0', NULL),
	(11, NULL, NULL, NULL, NULL, 'PK/1803/000001', NULL, '0', NULL),
	(12, NULL, NULL, NULL, NULL, 'PK/1803/000002', NULL, '0', NULL),
	(13, 19, 3, 1, NULL, 'PK/1803/000003', '2018-03-19', '1', 'Tesaaa'),
	(14, NULL, NULL, NULL, 1, 'PK/1804/000001', NULL, '0', NULL),
	(15, NULL, NULL, NULL, 3, 'PK/1804/000001', NULL, '0', NULL),
	(16, NULL, NULL, NULL, 3, 'PK/1804/000002', NULL, '0', NULL);
/*!40000 ALTER TABLE `trx_usage` ENABLE KEYS */;

-- Dumping structure for table mtpd2.trx_usage_ga
DROP TABLE IF EXISTS `trx_usage_ga`;
CREATE TABLE IF NOT EXISTS `trx_usage_ga` (
  `USGGA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `USGGA_CODE` char(30) DEFAULT NULL,
  `USGGA_DATE` date DEFAULT NULL,
  `USGGA_STS` char(1) DEFAULT NULL,
  `USGGA_INFO` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`USGGA_ID`),
  KEY `FK_R72` (`USER_ID`),
  KEY `FKUSGGA1` (`BRANCH_ID`),
  CONSTRAINT `FKUSGGA1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R72` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.trx_usage_ga: ~4 rows (approximately)
/*!40000 ALTER TABLE `trx_usage_ga` DISABLE KEYS */;
INSERT INTO `trx_usage_ga` (`USGGA_ID`, `USER_ID`, `BRANCH_ID`, `USGGA_CODE`, `USGGA_DATE`, `USGGA_STS`, `USGGA_INFO`) VALUES
	(6, 1, 1, 'PKG/1802/000001', '2018-02-18', '1', 'Pemakaian barang'),
	(7, 1, 1, 'PKG/1802/000002', '2018-02-20', '1', 'pajkai mkt,it'),
	(8, NULL, 1, 'PKG/1804/000001', NULL, '0', NULL),
	(9, NULL, 3, 'PKG/1804/000001', NULL, '0', NULL);
/*!40000 ALTER TABLE `trx_usage_ga` ENABLE KEYS */;

-- Dumping structure for table mtpd2.usage_details
DROP TABLE IF EXISTS `usage_details`;
CREATE TABLE IF NOT EXISTS `usage_details` (
  `USGDET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GD_ID` int(11) DEFAULT NULL,
  `USG_ID` int(11) DEFAULT NULL,
  `USGDET_QTY` int(11) DEFAULT NULL,
  `USGDET_SUB` int(11) DEFAULT NULL,
  PRIMARY KEY (`USGDET_ID`),
  KEY `FK_R36` (`USG_ID`),
  KEY `FK_R40` (`GD_ID`),
  CONSTRAINT `FK_R36` FOREIGN KEY (`USG_ID`) REFERENCES `trx_usage` (`USG_ID`),
  CONSTRAINT `FK_R40` FOREIGN KEY (`GD_ID`) REFERENCES `master_goods` (`GD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.usage_details: ~4 rows (approximately)
/*!40000 ALTER TABLE `usage_details` DISABLE KEYS */;
INSERT INTO `usage_details` (`USGDET_ID`, `GD_ID`, `USG_ID`, `USGDET_QTY`, `USGDET_SUB`) VALUES
	(7, 1, 4, 5, 50000),
	(8, 2, 5, 1, 2500),
	(9, 1, 5, 3, 30000),
	(14, 1, 6, 3, 30000),
	(15, 1, 7, 5, 50000),
	(16, 7, 13, 3, 105000);
/*!40000 ALTER TABLE `usage_details` ENABLE KEYS */;

-- Dumping structure for table mtpd2.usage_ga_ret
DROP TABLE IF EXISTS `usage_ga_ret`;
CREATE TABLE IF NOT EXISTS `usage_ga_ret` (
  `RTUSGGA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `USGGA_ID` int(11) DEFAULT NULL,
  `RTUSGGA_CODE` char(30) DEFAULT NULL,
  `RTUSGGA_DATE` date DEFAULT NULL,
  `RTUSGGA_STS` char(1) DEFAULT NULL,
  `RTUSGGA_INFO` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`RTUSGGA_ID`),
  KEY `FK_R75` (`USGGA_ID`),
  KEY `FK_R76` (`USER_ID`),
  KEY `FKRTUSGGA1` (`BRANCH_ID`),
  CONSTRAINT `FKRTUSGGA1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R75` FOREIGN KEY (`USGGA_ID`) REFERENCES `trx_usage_ga` (`USGGA_ID`),
  CONSTRAINT `FK_R76` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.usage_ga_ret: ~2 rows (approximately)
/*!40000 ALTER TABLE `usage_ga_ret` DISABLE KEYS */;
INSERT INTO `usage_ga_ret` (`RTUSGGA_ID`, `USER_ID`, `BRANCH_ID`, `USGGA_ID`, `RTUSGGA_CODE`, `RTUSGGA_DATE`, `RTUSGGA_STS`, `RTUSGGA_INFO`) VALUES
	(1, NULL, 1, NULL, 'RPG/1804/000001', NULL, '0', NULL),
	(2, NULL, 3, NULL, 'RPG/1804/000001', NULL, '0', NULL);
/*!40000 ALTER TABLE `usage_ga_ret` ENABLE KEYS */;

-- Dumping structure for table mtpd2.usage_ret
DROP TABLE IF EXISTS `usage_ret`;
CREATE TABLE IF NOT EXISTS `usage_ret` (
  `RTUSG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `USG_ID` int(11) DEFAULT NULL,
  `RTUSG_CODE` char(30) DEFAULT NULL,
  `RTUSG_DATE` date DEFAULT NULL,
  `RTUSG_STS` char(1) DEFAULT NULL,
  `RTUSG_INFO` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`RTUSG_ID`),
  KEY `FK_R41` (`USER_ID`),
  KEY `FK_R42` (`USG_ID`),
  KEY `FKRTUSG1` (`BRANCH_ID`),
  CONSTRAINT `FKRTUSG1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R41` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FK_R42` FOREIGN KEY (`USG_ID`) REFERENCES `trx_usage` (`USG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.usage_ret: ~3 rows (approximately)
/*!40000 ALTER TABLE `usage_ret` DISABLE KEYS */;
INSERT INTO `usage_ret` (`RTUSG_ID`, `USER_ID`, `BRANCH_ID`, `USG_ID`, `RTUSG_CODE`, `RTUSG_DATE`, `RTUSG_STS`, `RTUSG_INFO`) VALUES
	(1, 1, NULL, 13, 'RPK/1803/000001', '2018-03-19', '1', 'Tesaaazzz'),
	(2, NULL, 1, NULL, 'RPK/1804/000001', NULL, '0', NULL),
	(3, NULL, 3, NULL, 'RPK/1804/000001', NULL, '0', NULL),
	(4, NULL, 3, NULL, 'RPK/1804/000002', NULL, '0', NULL);
/*!40000 ALTER TABLE `usage_ret` ENABLE KEYS */;

-- Dumping structure for table mtpd2.usg_ga_details
DROP TABLE IF EXISTS `usg_ga_details`;
CREATE TABLE IF NOT EXISTS `usg_ga_details` (
  `USGGADET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USGGA_ID` int(11) DEFAULT NULL,
  `GD_ID` int(11) DEFAULT NULL,
  `USGGADET_QTY` int(11) DEFAULT NULL,
  `USGGADET_SUB` int(11) DEFAULT NULL,
  PRIMARY KEY (`USGGADET_ID`),
  KEY `FK_R73` (`USGGA_ID`),
  KEY `FK_R74` (`GD_ID`),
  CONSTRAINT `FK_R73` FOREIGN KEY (`USGGA_ID`) REFERENCES `trx_usage_ga` (`USGGA_ID`),
  CONSTRAINT `FK_R74` FOREIGN KEY (`GD_ID`) REFERENCES `master_goods` (`GD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpd2.usg_ga_details: ~4 rows (approximately)
/*!40000 ALTER TABLE `usg_ga_details` DISABLE KEYS */;
INSERT INTO `usg_ga_details` (`USGGADET_ID`, `USGGA_ID`, `GD_ID`, `USGGADET_QTY`, `USGGADET_SUB`) VALUES
	(6, 6, 2, 2, 5000),
	(7, 6, 1, 2, 20000),
	(8, 7, 7, 1, 35000),
	(9, 7, 2, 2, 5000);
/*!40000 ALTER TABLE `usg_ga_details` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
