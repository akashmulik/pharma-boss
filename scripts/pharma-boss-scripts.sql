-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.29 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for pharma_boss
CREATE DATABASE IF NOT EXISTS `pharma_boss` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pharma_boss`;

-- Dumping structure for table pharma_boss.pb_products
CREATE TABLE IF NOT EXISTS `pb_products` (
  `PID` int(4) NOT NULL AUTO_INCREMENT,
  `PRODUCT_NAME` varchar(50) NOT NULL,
  `MANUFACTURER` varchar(20) NOT NULL,
  `SHELF` varchar(10) DEFAULT NULL,
  `PRODUCT_TYPE_ID` int(3) NOT NULL,
  `TOTAL_UNITS` int(4) NOT NULL,
  `GST` int(2) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT NULL,
  `LAST_UPDATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PID`),
  KEY `product_type` (`PRODUCT_TYPE_ID`),
  CONSTRAINT `product_type` FOREIGN KEY (`PRODUCT_TYPE_ID`) REFERENCES `pb_product_type` (`PRODUCT_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table pharma_boss.pb_products: ~2 rows (approximately)
/*!40000 ALTER TABLE `pb_products` DISABLE KEYS */;
INSERT IGNORE INTO `pb_products` (`PID`, `PRODUCT_NAME`, `MANUFACTURER`, `SHELF`, `PRODUCT_TYPE_ID`, `TOTAL_UNITS`, `GST`, `CREATED_DATE`, `LAST_UPDATED_DATE`) VALUES
	(1, 'ABCD', 'Cipla', NULL, 1, 50, NULL, NULL, '2019-08-02 21:54:50'),
	(2, 'DDAB', 'qwerty', NULL, 1, 60, NULL, NULL, '2019-08-03 01:29:14');
/*!40000 ALTER TABLE `pb_products` ENABLE KEYS */;

-- Dumping structure for table pharma_boss.pb_product_type
CREATE TABLE IF NOT EXISTS `pb_product_type` (
  `PRODUCT_TYPE_ID` int(2) NOT NULL AUTO_INCREMENT,
  `PRODUCT_TYPE_NAME` varchar(15) NOT NULL,
  PRIMARY KEY (`PRODUCT_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Holds medicine types';

-- Dumping data for table pharma_boss.pb_product_type: ~1 rows (approximately)
/*!40000 ALTER TABLE `pb_product_type` DISABLE KEYS */;
INSERT IGNORE INTO `pb_product_type` (`PRODUCT_TYPE_ID`, `PRODUCT_TYPE_NAME`) VALUES
	(1, 'TAB');
/*!40000 ALTER TABLE `pb_product_type` ENABLE KEYS */;

-- Dumping structure for table pharma_boss.pb_stock_details
CREATE TABLE IF NOT EXISTS `pb_stock_details` (
  `PID` int(11) NOT NULL,
  `BATCH_NO` varchar(20) NOT NULL,
  `MFG_DATE` date DEFAULT NULL,
  `EXP_DATE` date NOT NULL,
  `MRP` double NOT NULL,
  `RATE` double NOT NULL,
  `UNIT` int(4) NOT NULL,
  `EXTRA_UNITS` int(3) DEFAULT '0',
  `QUANTITY` int(4) NOT NULL,
  `VENDOR_ID` int(3) DEFAULT NULL,
  `VENDOR_BILL_NO` varchar(15) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT NULL,
  `LAST_UPDATED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PID`,`BATCH_NO`),
  CONSTRAINT `FK_pb_products_details_pb_products` FOREIGN KEY (`PID`) REFERENCES `pb_products` (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table pharma_boss.pb_stock_details: ~2 rows (approximately)
/*!40000 ALTER TABLE `pb_stock_details` DISABLE KEYS */;
INSERT IGNORE INTO `pb_stock_details` (`PID`, `BATCH_NO`, `MFG_DATE`, `EXP_DATE`, `MRP`, `RATE`, `UNIT`, `EXTRA_UNITS`, `QUANTITY`, `VENDOR_ID`, `VENDOR_BILL_NO`, `CREATED_DATE`, `LAST_UPDATED`) VALUES
	(1, '1234', '2019-08-02', '2019-08-02', 50, 40, 10, NULL, 5, 1, NULL, NULL, '2019-08-02 22:02:53'),
	(1, '2323', '2019-08-03', '2019-08-03', 34, 22, 4, 3, 65, NULL, NULL, NULL, '2019-08-03 01:28:29');
/*!40000 ALTER TABLE `pb_stock_details` ENABLE KEYS */;

-- Dumping structure for table pharma_boss.pb_vendor
CREATE TABLE IF NOT EXISTS `pb_vendor` (
  `VENDOR_ID` int(3) NOT NULL AUTO_INCREMENT,
  `VENDOR_NAME` varchar(30) NOT NULL DEFAULT '0',
  `CONTACT_NO` varchar(15) DEFAULT '0',
  `ADDRESS` varchar(20) DEFAULT '0',
  `EMAIL` varchar(30) DEFAULT '0',
  PRIMARY KEY (`VENDOR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Details of vendors';

-- Dumping data for table pharma_boss.pb_vendor: ~1 rows (approximately)
/*!40000 ALTER TABLE `pb_vendor` DISABLE KEYS */;
INSERT IGNORE INTO `pb_vendor` (`VENDOR_ID`, `VENDOR_NAME`, `CONTACT_NO`, `ADDRESS`, `EMAIL`) VALUES
	(1, 'XYZ', '7854653215', 'Nagar', '0');
/*!40000 ALTER TABLE `pb_vendor` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
