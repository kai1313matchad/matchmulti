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

-- Dumping structure for table mtpdmulti.account_journal
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.account_journal: ~0 rows (approximately)
/*!40000 ALTER TABLE `account_journal` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_journal` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.appr_cost_det
DROP TABLE IF EXISTS `appr_cost_det`;
CREATE TABLE IF NOT EXISTS `appr_cost_det` (
  `CSTDT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPR_ID` int(11) DEFAULT NULL,
  `CSTDT_CODE` char(100) DEFAULT NULL,
  `CSTDT_AMOUNT` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CSTDT_ID`),
  KEY `FK_R55` (`APPR_ID`),
  CONSTRAINT `FK_R55` FOREIGN KEY (`APPR_ID`) REFERENCES `trx_approvalbill` (`APPR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.appr_cost_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `appr_cost_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `appr_cost_det` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.appr_permit_det
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.appr_permit_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `appr_permit_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `appr_permit_det` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.appr_terms_det
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.appr_terms_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `appr_terms_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `appr_terms_det` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.bankin_det
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.bankin_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `bankin_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `bankin_det` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.bankin_trxdet
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.bankin_trxdet: ~0 rows (approximately)
/*!40000 ALTER TABLE `bankin_trxdet` DISABLE KEYS */;
/*!40000 ALTER TABLE `bankin_trxdet` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.bankout_det
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.bankout_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `bankout_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `bankout_det` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.bankout_trxdet
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.bankout_trxdet: ~0 rows (approximately)
/*!40000 ALTER TABLE `bankout_trxdet` DISABLE KEYS */;
/*!40000 ALTER TABLE `bankout_trxdet` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.bapp_details
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.bapp_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `bapp_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `bapp_details` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.brcppn_details
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

-- Dumping data for table mtpdmulti.brcppn_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `brcppn_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `brcppn_details` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.budget_det
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.budget_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `budget_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget_det` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.buku_bank
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.buku_bank: ~0 rows (approximately)
/*!40000 ALTER TABLE `buku_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `buku_bank` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.buku_giro
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.buku_giro: ~0 rows (approximately)
/*!40000 ALTER TABLE `buku_giro` DISABLE KEYS */;
/*!40000 ALTER TABLE `buku_giro` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.buku_kas
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.buku_kas: ~0 rows (approximately)
/*!40000 ALTER TABLE `buku_kas` DISABLE KEYS */;
/*!40000 ALTER TABLE `buku_kas` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.cashin_det
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.cashin_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `cashin_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `cashin_det` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.cashout_det
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.cashout_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `cashout_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `cashout_det` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.chart_of_account
DROP TABLE IF EXISTS `chart_of_account`;
CREATE TABLE IF NOT EXISTS `chart_of_account` (
  `COA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PAR_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `COA_ACC` char(30) DEFAULT NULL,
  `COA_ACCNAME` char(100) DEFAULT NULL,
  `COA_OWNER` char(100) DEFAULT NULL,
  `COA_DEBIT` bigint(20) DEFAULT NULL,
  `COA_CREDIT` bigint(20) DEFAULT NULL,
  `COA_SALDO` bigint(20) DEFAULT NULL,
  `COA_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`COA_ID`),
  KEY `FK_R49` (`PAR_ID`),
  KEY `FK_chart_of_account_master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R49` FOREIGN KEY (`PAR_ID`) REFERENCES `parent_chart` (`PAR_ID`),
  CONSTRAINT `FK_chart_of_account_master_branch` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.chart_of_account: ~0 rows (approximately)
/*!40000 ALTER TABLE `chart_of_account` DISABLE KEYS */;
INSERT INTO `chart_of_account` (`COA_ID`, `PAR_ID`, `BRANCH_ID`, `COA_ACC`, `COA_ACCNAME`, `COA_OWNER`, `COA_DEBIT`, `COA_CREDIT`, `COA_SALDO`, `COA_DTSTS`) VALUES
	(1, 17, 1, '1110001', 'KAS HO', NULL, 0, 0, 0, '1');
/*!40000 ALTER TABLE `chart_of_account` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.giroin_det
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.giroin_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `giroin_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `giroin_det` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.giroin_record
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.giroin_record: ~0 rows (approximately)
/*!40000 ALTER TABLE `giroin_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `giroin_record` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.giroout_det
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.giroout_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `giroout_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `giroout_det` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.giroout_record
DROP TABLE IF EXISTS `giroout_record`;
CREATE TABLE IF NOT EXISTS `giroout_record` (
  `GOR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BNKTRXO_ID` int(11) DEFAULT NULL,
  `GOR_REFFID` char(30) DEFAULT NULL,
  `GOR_REFFCODE` char(200) DEFAULT NULL,
  `GOR_LIQSTS` char(1) DEFAULT NULL,
  `GOR_BLCSTS` char(1) DEFAULT NULL,
  `GOR_DTSTS` char(1) DEFAULT '0',
  PRIMARY KEY (`GOR_ID`),
  KEY `FKGORC1` (`BNKTRXO_ID`),
  CONSTRAINT `FKGORC1` FOREIGN KEY (`BNKTRXO_ID`) REFERENCES `bankout_trxdet` (`BNKTRXO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.giroout_record: ~0 rows (approximately)
/*!40000 ALTER TABLE `giroout_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `giroout_record` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.goods_history
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

-- Dumping data for table mtpdmulti.goods_history: ~0 rows (approximately)
/*!40000 ALTER TABLE `goods_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_history` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.group_master
DROP TABLE IF EXISTS `group_master`;
CREATE TABLE IF NOT EXISTS `group_master` (
  `USER_ID` int(11) NOT NULL,
  `MST_CODE` char(20) NOT NULL,
  PRIMARY KEY (`USER_ID`,`MST_CODE`),
  KEY `FKGRMST2` (`MST_CODE`),
  CONSTRAINT `FKGRMST1` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FKGRMST2` FOREIGN KEY (`MST_CODE`) REFERENCES `master_menumaster` (`MST_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.group_master: ~0 rows (approximately)
/*!40000 ALTER TABLE `group_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_master` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.group_trx
DROP TABLE IF EXISTS `group_trx`;
CREATE TABLE IF NOT EXISTS `group_trx` (
  `USER_ID` int(11) NOT NULL,
  `TRX_CODE` char(20) NOT NULL,
  PRIMARY KEY (`USER_ID`,`TRX_CODE`),
  KEY `FKGRTRX2` (`TRX_CODE`),
  CONSTRAINT `FKGRTRX1` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `FKGRTRX2` FOREIGN KEY (`TRX_CODE`) REFERENCES `master_menutrx` (`TRX_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.group_trx: ~0 rows (approximately)
/*!40000 ALTER TABLE `group_trx` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_trx` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.group_user
DROP TABLE IF EXISTS `group_user`;
CREATE TABLE IF NOT EXISTS `group_user` (
  `USER_ID` int(11) NOT NULL,
  `MENU_CODE` char(50) NOT NULL,
  PRIMARY KEY (`USER_ID`,`MENU_CODE`),
  KEY `GUFK2` (`MENU_CODE`),
  CONSTRAINT `GUFK1` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`),
  CONSTRAINT `GUFK2` FOREIGN KEY (`MENU_CODE`) REFERENCES `master_menu` (`MENU_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.group_user: ~63 rows (approximately)
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
	(3, 'BNK'),
	(3, 'BRC'),
	(3, 'COA'),
	(3, 'CURR'),
	(3, 'CUST'),
	(3, 'DEPT'),
	(3, 'FIN'),
	(3, 'GA'),
	(3, 'GD'),
	(3, 'INVT'),
	(3, 'LOC'),
	(3, 'LOG'),
	(3, 'MKT'),
	(3, 'PAT'),
	(3, 'PMT'),
	(3, 'REK'),
	(3, 'SLS'),
	(3, 'SUPP'),
	(3, 'TRX'),
	(3, 'USR');
/*!40000 ALTER TABLE `group_user` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_adj
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_adj: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_adj` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_adj` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_adjga
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_adjga: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_adjga` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_adjga` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_approvalbill
DROP TABLE IF EXISTS `his_approvalbill`;
CREATE TABLE IF NOT EXISTS `his_approvalbill` (
  `HISAPPR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPR_ID` int(11) DEFAULT NULL,
  `HISAPPR_STS` char(30) DEFAULT NULL,
  `HISAPPR_OLD` char(30) DEFAULT NULL,
  `HISAPPR_NEW` char(30) DEFAULT NULL,
  `HISAPPR_INFO` varchar(1024) DEFAULT NULL,
  `HISAPPR_DATE` date DEFAULT NULL,
  `HISAPPR_TIME` time DEFAULT NULL,
  `HISAPPR_UPCOUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`HISAPPR_ID`),
  KEY `FK_R9` (`APPR_ID`),
  CONSTRAINT `FK_R9` FOREIGN KEY (`APPR_ID`) REFERENCES `trx_approvalbill` (`APPR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_approvalbill: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_approvalbill` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_approvalbill` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_bankin
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_bankin: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_bankin` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_bankin` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_bankout
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_bankout: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_bankout` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_bankout` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_bapp
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_bapp: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_bapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_bapp` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_bapplog
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_bapplog: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_bapplog` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_bapplog` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_budget
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_budget: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_budget` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_budget` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_cashin
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_cashin: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_cashin` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_cashin` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_cashout
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_cashout: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_cashout` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_cashout` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_customer
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

-- Dumping data for table mtpdmulti.his_customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_customer` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_giroin
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_giroin: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_giroin` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_giroin` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_giroout
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_giroout: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_giroout` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_giroout` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_inv
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_inv: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_inv` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_inv` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_pappr
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_pappr: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_pappr` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_pappr` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_po
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_po: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_po` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_po` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_poga
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_poga: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_poga` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_poga` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_prc
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_prc: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_prc` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_prc` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_prcga
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_prcga: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_prcga` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_prcga` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_retprc
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_retprc: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_retprc` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_retprc` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_retusg
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_retusg: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_retusg` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_retusg` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_rtprcga
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_rtprcga: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_rtprcga` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_rtprcga` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_rtusgga
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_rtusgga: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_rtusgga` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_rtusgga` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_usg
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_usg: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_usg` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_usg` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.his_usgga
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.his_usgga: ~0 rows (approximately)
/*!40000 ALTER TABLE `his_usgga` DISABLE KEYS */;
/*!40000 ALTER TABLE `his_usgga` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.invoice_type
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.invoice_type: ~0 rows (approximately)
/*!40000 ALTER TABLE `invoice_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_type` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.inv_details
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.inv_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `inv_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_details` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.jou_credit
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

-- Dumping data for table mtpdmulti.jou_credit: ~0 rows (approximately)
/*!40000 ALTER TABLE `jou_credit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jou_credit` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.jou_debit
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

-- Dumping data for table mtpdmulti.jou_debit: ~0 rows (approximately)
/*!40000 ALTER TABLE `jou_debit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jou_debit` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.jou_details
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.jou_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `jou_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `jou_details` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.master_bank
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.master_bank: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_bank` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.master_bboard
DROP TABLE IF EXISTS `master_bboard`;
CREATE TABLE IF NOT EXISTS `master_bboard` (
  `BB_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BB_CODE` char(30) DEFAULT NULL,
  `BB_NAME` char(100) DEFAULT NULL,
  `BB_INFO` varchar(1024) DEFAULT NULL,
  `BB_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`BB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.master_bboard: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_bboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_bboard` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.master_branch
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.master_branch: ~3 rows (approximately)
/*!40000 ALTER TABLE `master_branch` DISABLE KEYS */;
INSERT INTO `master_branch` (`BRANCH_ID`, `BRANCH_CODE`, `BRANCH_NAME`, `BRANCH_STATUS`, `BRANCH_ADDRESS`, `BRANCH_CITY`, `BRANCH_INIT`, `BRANCH_PHONE`, `BRANCH_FAX`, `BRANCH_LOGO`, `BRANCH_DTSTS`) VALUES
	(1, 'BRC-00001', 'Holding', '0', 'JL Lesti No.42', 'Surabaya', 'HO', NULL, NULL, NULL, '1'),
	(3, 'BRC-00002', 'Match Advertising', '1', 'JL Lesti No.42', 'Surabaya', 'M', '098765', '098765', NULL, '1'),
	(4, 'BRC-00003', 'Karya Cipta Tritunggal', '1', 'JL Raya Taman', 'Sidoarjo', 'KCT', '0987654', '09875', NULL, '1');
/*!40000 ALTER TABLE `master_branch` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.master_currency
DROP TABLE IF EXISTS `master_currency`;
CREATE TABLE IF NOT EXISTS `master_currency` (
  `CURR_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CURR_CODE` char(30) DEFAULT NULL,
  `CURR_SYMBOL` char(20) DEFAULT NULL,
  `CURR_NAME` char(100) DEFAULT NULL,
  `CURR_RATE` int(11) DEFAULT NULL,
  `CURR_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`CURR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.master_currency: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_currency` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.master_customer
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.master_customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_customer` DISABLE KEYS */;
INSERT INTO `master_customer` (`CUST_ID`, `COA_ID`, `CUST_CODE`, `CUST_NAME`, `CUST_ADDRESS`, `CUST_CITY`, `CUST_POSTAL`, `CUST_PROV`, `CUST_PHONE`, `CUST_FAX`, `CUST_ACC`, `CUST_NPWPNAME`, `CUST_NPWPACC`, `CUST_NPWPADD`, `CUST_NPKP`, `CUST_DTSTS`) VALUES
	(1, NULL, 'CST-00001', 'Sampoerna', '-', 'Surabaya', '-', '-', '-', '-', NULL, 'Sampoerna', '1234567890', 'Surabaya', '1234567890', '1');
/*!40000 ALTER TABLE `master_customer` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.master_cust_intern
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.master_cust_intern: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_cust_intern` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_cust_intern` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.master_dept
DROP TABLE IF EXISTS `master_dept`;
CREATE TABLE IF NOT EXISTS `master_dept` (
  `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEPT_CODE` char(30) DEFAULT NULL,
  `DEPT_NAME` char(30) DEFAULT NULL,
  `DEPT_INFO` varchar(1024) DEFAULT NULL,
  `DEPT_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.master_dept: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_dept` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_dept` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.master_goods
DROP TABLE IF EXISTS `master_goods`;
CREATE TABLE IF NOT EXISTS `master_goods` (
  `GD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUPP_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `GD_CODE` char(30) DEFAULT NULL,
  `GD_NAME` char(100) DEFAULT NULL,
  `GD_UNIT` char(20) DEFAULT NULL,
  `GD_MEASURE` char(20) DEFAULT NULL,
  `GD_PRICE` decimal(10,2) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.master_goods: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_goods` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.master_gov_type
DROP TABLE IF EXISTS `master_gov_type`;
CREATE TABLE IF NOT EXISTS `master_gov_type` (
  `GOV_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GOV_CODE` char(30) DEFAULT NULL,
  `GOV_NAME` varchar(100) DEFAULT NULL,
  `GOV_INFO` varchar(1024) DEFAULT NULL,
  `GOV_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`GOV_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.master_gov_type: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_gov_type` DISABLE KEYS */;
INSERT INTO `master_gov_type` (`GOV_ID`, `GOV_CODE`, `GOV_NAME`, `GOV_INFO`, `GOV_DTSTS`) VALUES
	(1, 'GOV-00001', 'Persil', 'Persil', '1');
/*!40000 ALTER TABLE `master_gov_type` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.master_location
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.master_location: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_location` DISABLE KEYS */;
INSERT INTO `master_location` (`LOC_ID`, `GOV_ID`, `LOC_CODE`, `LOC_NAME`, `LOC_ADDRESS`, `LOC_CITY`, `LOC_INFO`, `LOC_DTSTS`) VALUES
	(1, 1, 'LOC-00001', 'Indragiri 61', 'Indragiri 61', 'Surabaya', '-', '1');
/*!40000 ALTER TABLE `master_location` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.master_menu
DROP TABLE IF EXISTS `master_menu`;
CREATE TABLE IF NOT EXISTS `master_menu` (
  `MENU_CODE` char(50) NOT NULL,
  `MENU_NAME` char(100) DEFAULT NULL,
  `MENU_STS` int(11) DEFAULT NULL,
  PRIMARY KEY (`MENU_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.master_menu: ~21 rows (approximately)
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

-- Dumping structure for table mtpdmulti.master_menumaster
DROP TABLE IF EXISTS `master_menumaster`;
CREATE TABLE IF NOT EXISTS `master_menumaster` (
  `MST_CODE` char(20) NOT NULL,
  `MST_NAME` char(100) DEFAULT NULL,
  PRIMARY KEY (`MST_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.master_menumaster: ~14 rows (approximately)
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

-- Dumping structure for table mtpdmulti.master_menutrx
DROP TABLE IF EXISTS `master_menutrx`;
CREATE TABLE IF NOT EXISTS `master_menutrx` (
  `TRX_CODE` char(20) NOT NULL,
  `TRX_NAME` char(100) DEFAULT NULL,
  PRIMARY KEY (`TRX_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.master_menutrx: ~7 rows (approximately)
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

-- Dumping structure for table mtpdmulti.master_permit
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

-- Dumping data for table mtpdmulti.master_permit: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_permit` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_permit` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.master_permit_type
DROP TABLE IF EXISTS `master_permit_type`;
CREATE TABLE IF NOT EXISTS `master_permit_type` (
  `PRMTTYP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRMTTYP_CODE` char(30) DEFAULT NULL,
  `PRMTTYP_NAME` varchar(300) DEFAULT NULL,
  `PRMTTYP_INFO` varchar(1024) DEFAULT NULL,
  `PRMTTYP_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`PRMTTYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.master_permit_type: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_permit_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_permit_type` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.master_person
DROP TABLE IF EXISTS `master_person`;
CREATE TABLE IF NOT EXISTS `master_person` (
  `PERSON_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PERSON_CODE` char(30) DEFAULT NULL,
  `PERSON_NAME` varchar(200) DEFAULT NULL,
  `PERSON_ADDRESS` varchar(1024) DEFAULT NULL,
  `PERSON_PHONE` char(30) DEFAULT NULL,
  `PERSON_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`PERSON_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.master_person: ~3 rows (approximately)
/*!40000 ALTER TABLE `master_person` DISABLE KEYS */;
INSERT INTO `master_person` (`PERSON_ID`, `PERSON_CODE`, `PERSON_NAME`, `PERSON_ADDRESS`, `PERSON_PHONE`, `PERSON_DTSTS`) VALUES
	(1, 'KRY-00001', 'Kaisha', 'Semolowaru', '09876', '1'),
	(2, 'KRY-00002', 'Fitri', '-', '-', '1'),
	(3, 'KRY-00003', 'Dhani', '-', '-', '1');
/*!40000 ALTER TABLE `master_person` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.master_placement
DROP TABLE IF EXISTS `master_placement`;
CREATE TABLE IF NOT EXISTS `master_placement` (
  `PLC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PLC_CODE` char(30) DEFAULT NULL,
  `PLC_NAME` char(200) DEFAULT NULL,
  `PLC_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`PLC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.master_placement: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_placement` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_placement` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.master_sales
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.master_sales: ~3 rows (approximately)
/*!40000 ALTER TABLE `master_sales` DISABLE KEYS */;
INSERT INTO `master_sales` (`SALES_ID`, `BRANCH_ID`, `PERSON_ID`, `SALES_CODE`, `SALES_PHONE`, `SALES_EMAIL`, `SALES_DTSTS`) VALUES
	(1, 3, 2, 'SLF-00001', '-', 'a@mail.com', '1'),
	(2, 4, 3, 'SLF-00002', '-', 'a@mail.com', '1'),
	(3, 1, 1, 'SLF-00003', '-', 'a@mail.com', '1');
/*!40000 ALTER TABLE `master_sales` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.master_supplier
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.master_supplier: ~0 rows (approximately)
/*!40000 ALTER TABLE `master_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_supplier` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.master_user
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.master_user: ~3 rows (approximately)
/*!40000 ALTER TABLE `master_user` DISABLE KEYS */;
INSERT INTO `master_user` (`USER_ID`, `BRANCH_ID`, `PERSON_ID`, `USER_CODE`, `USER_NAME`, `USER_PASSWORD`, `USER_LEVEL`, `USER_DTSTS`) VALUES
	(1, 1, 1, 'USR-00001', 'kaisha', '827ccb0eea8a706c4c34a16891f84e7b', '1', '1'),
	(2, 1, 1, 'USR-00002', 'super', '827ccb0eea8a706c4c34a16891f84e7b', '2', '1'),
	(3, 1, 1, 'USR-00003', 'op', '827ccb0eea8a706c4c34a16891f84e7b', '3', '1');
/*!40000 ALTER TABLE `master_user` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.other_settings
DROP TABLE IF EXISTS `other_settings`;
CREATE TABLE IF NOT EXISTS `other_settings` (
  `OS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BRANCH_ID` int(11) NOT NULL DEFAULT '0',
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
  PRIMARY KEY (`OS_ID`),
  KEY `FK_other_settings_master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_other_settings_master_branch` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.other_settings: ~2 rows (approximately)
/*!40000 ALTER TABLE `other_settings` DISABLE KEYS */;
INSERT INTO `other_settings` (`OS_ID`, `BRANCH_ID`, `PRINT_BANKINVOICE`, `PRC_COA`, `PRC_COAAG`, `PRC_COADISC`, `PRC_COAPPN`, `PRC_COACOST`, `PRC_COANAME`, `PRC_COANAMEAG`, `PRC_COANAMEDISC`, `PRC_COANAMEPPN`, `PRC_COANAMECOST`, `NOTAFIN_ACC`, `NOTAFIN_ACCNAME`, `ACCRCVGIRO_ACC`, `ACCRCVGIRO_ACCNAME`, `DEBTGIRO_ACC`, `DEBTGIRO_ACCNAME`, `INV_COAPPN`, `INV_COANAMEPPN`, `PRCGA_COASUPPLY`, `PRCGA_COADEBT`, `PRCGA_COAPPN`, `PRCGA_COACOST`, `PRCGA_COADISC`, `PRCGA_COANAMESUPPLY`, `PRCGA_COANAMEDEBT`, `PRCGA_COANAMEPPN`, `PRCGA_COANAMECOST`, `PRCGA_COANAMEDISC`) VALUES
	(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'KAS HO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'KAS HO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `other_settings` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.parent_chart
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.parent_chart: ~0 rows (approximately)
/*!40000 ALTER TABLE `parent_chart` DISABLE KEYS */;
INSERT INTO `parent_chart` (`PAR_ID`, `PARTP_ID`, `PAR_ACC`, `PAR_ACCNAME`, `PAR_TYPE`, `PAR_INFO`, `PAR_DTSTS`) VALUES
	(17, 12, '1110000', 'KAS', NULL, 'Kas Induk', '1');
/*!40000 ALTER TABLE `parent_chart` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.parent_type
DROP TABLE IF EXISTS `parent_type`;
CREATE TABLE IF NOT EXISTS `parent_type` (
  `PARTP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARTP_NAME` char(200) DEFAULT NULL,
  `PARTP_STS` char(1) DEFAULT NULL,
  `PARTP_DTSTS` char(1) DEFAULT NULL,
  PRIMARY KEY (`PARTP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.parent_type: ~2 rows (approximately)
/*!40000 ALTER TABLE `parent_type` DISABLE KEYS */;
INSERT INTO `parent_type` (`PARTP_ID`, `PARTP_NAME`, `PARTP_STS`, `PARTP_DTSTS`) VALUES
	(12, 'AKTIVA LANCAR', '1', '1'),
	(13, 'BIAYA', '2', '1');
/*!40000 ALTER TABLE `parent_type` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.permitdoc_det
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.permitdoc_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `permitdoc_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `permitdoc_det` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.permitpay_det
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.permitpay_det: ~0 rows (approximately)
/*!40000 ALTER TABLE `permitpay_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `permitpay_det` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.poga_details
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.poga_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `poga_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `poga_details` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.po_details
DROP TABLE IF EXISTS `po_details`;
CREATE TABLE IF NOT EXISTS `po_details` (
  `PODET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PO_ID` int(11) DEFAULT NULL,
  `GD_ID` int(11) DEFAULT NULL,
  `PODET_QTYUNIT` decimal(10,2) DEFAULT NULL,
  `PODET_SUB` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`PODET_ID`),
  KEY `FK_R20` (`PO_ID`),
  KEY `FK_R21` (`GD_ID`),
  CONSTRAINT `FK_R20` FOREIGN KEY (`PO_ID`) REFERENCES `trx_po` (`PO_ID`),
  CONSTRAINT `FK_R21` FOREIGN KEY (`GD_ID`) REFERENCES `master_goods` (`GD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.po_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `po_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `po_details` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.prcga_details
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.prcga_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `prcga_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `prcga_details` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.prcga_ret
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.prcga_ret: ~0 rows (approximately)
/*!40000 ALTER TABLE `prcga_ret` DISABLE KEYS */;
/*!40000 ALTER TABLE `prcga_ret` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.prc_details
DROP TABLE IF EXISTS `prc_details`;
CREATE TABLE IF NOT EXISTS `prc_details` (
  `PRCDET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRC_ID` int(11) DEFAULT NULL,
  `GD_ID` int(11) DEFAULT NULL,
  `PRCDET_QTY` decimal(10,2) DEFAULT NULL,
  `PRCDET_SUB` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`PRCDET_ID`),
  KEY `FK_R27` (`PRC_ID`),
  KEY `FK_R28` (`GD_ID`),
  CONSTRAINT `FK_R27` FOREIGN KEY (`PRC_ID`) REFERENCES `trx_procurement` (`PRC_ID`),
  CONSTRAINT `FK_R28` FOREIGN KEY (`GD_ID`) REFERENCES `master_goods` (`GD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.prc_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `prc_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `prc_details` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.procurement_ret
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.procurement_ret: ~0 rows (approximately)
/*!40000 ALTER TABLE `procurement_ret` DISABLE KEYS */;
/*!40000 ALTER TABLE `procurement_ret` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.retprcga_details
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

-- Dumping data for table mtpdmulti.retprcga_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `retprcga_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `retprcga_details` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.retprc_details
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.retprc_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `retprc_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `retprc_details` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.retusgga_details
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

-- Dumping data for table mtpdmulti.retusgga_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `retusgga_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `retusgga_details` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.retusg_details
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.retusg_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `retusg_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `retusg_details` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.tax_inv_details
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

-- Dumping data for table mtpdmulti.tax_inv_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `tax_inv_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_inv_details` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_adjustment
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_adjustment: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_adjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_adjustment` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_adj_ga
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_adj_ga: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_adj_ga` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_adj_ga` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_approvalbill
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_approvalbill: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_approvalbill` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_approvalbill` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_bankin
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_bankin: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_bankin` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_bankin` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_bankout
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_bankout: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_bankout` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_bankout` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_bapp
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_bapp: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_bapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_bapp` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_bapplog
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_bapplog: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_bapplog` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_bapplog` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_brc_ppn
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

-- Dumping data for table mtpdmulti.trx_brc_ppn: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_brc_ppn` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_brc_ppn` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_budget
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_budget: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_budget` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_budget` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_cash_in
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_cash_in: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_cash_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_cash_in` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_cash_out
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_cash_out: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_cash_out` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_cash_out` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_giro_in
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_giro_in: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_giro_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_giro_in` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_giro_out
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_giro_out: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_giro_out` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_giro_out` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_invoice
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_invoice: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_invoice` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_permitappr
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_permitappr: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_permitappr` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_permitappr` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_po
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_po: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_po` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_po` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_po_ga
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_po_ga: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_po_ga` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_po_ga` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_prc_ga
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_prc_ga: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_prc_ga` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_prc_ga` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_procurement
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
  `PRC_SUB` decimal(20,2) DEFAULT NULL,
  `PRC_DISC` int(11) DEFAULT NULL,
  `PRC_PPN` int(11) DEFAULT NULL,
  `PRC_COST` int(11) DEFAULT NULL,
  `PRC_GTOTAL` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`PRC_ID`),
  KEY `FK_R25` (`PO_ID`),
  KEY `FK_R26` (`CURR_ID`),
  KEY `FK_R34` (`USER_ID`),
  KEY `FKPRC1` (`BRANCH_ID`),
  CONSTRAINT `FKPRC1` FOREIGN KEY (`BRANCH_ID`) REFERENCES `master_branch` (`BRANCH_ID`),
  CONSTRAINT `FK_R25` FOREIGN KEY (`PO_ID`) REFERENCES `trx_po` (`PO_ID`),
  CONSTRAINT `FK_R26` FOREIGN KEY (`CURR_ID`) REFERENCES `master_currency` (`CURR_ID`),
  CONSTRAINT `FK_R34` FOREIGN KEY (`USER_ID`) REFERENCES `master_user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_procurement: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_procurement` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_procurement` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_tax_invoice
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_tax_invoice: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_tax_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_tax_invoice` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_usage
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_usage: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_usage` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_usage` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.trx_usage_ga
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.trx_usage_ga: ~0 rows (approximately)
/*!40000 ALTER TABLE `trx_usage_ga` DISABLE KEYS */;
/*!40000 ALTER TABLE `trx_usage_ga` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.usage_details
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.usage_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `usage_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `usage_details` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.usage_ga_ret
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.usage_ga_ret: ~0 rows (approximately)
/*!40000 ALTER TABLE `usage_ga_ret` DISABLE KEYS */;
/*!40000 ALTER TABLE `usage_ga_ret` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.usage_ret
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.usage_ret: ~0 rows (approximately)
/*!40000 ALTER TABLE `usage_ret` DISABLE KEYS */;
/*!40000 ALTER TABLE `usage_ret` ENABLE KEYS */;

-- Dumping structure for table mtpdmulti.usg_ga_details
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mtpdmulti.usg_ga_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `usg_ga_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `usg_ga_details` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
