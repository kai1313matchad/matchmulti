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

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
