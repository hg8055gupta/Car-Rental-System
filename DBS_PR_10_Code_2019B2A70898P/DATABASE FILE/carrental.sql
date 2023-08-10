SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `carrentalp`
--

-- --------------------------------------------------------

/*

--Creating database carrental--
Create database carrental;

--Using database carrental--
Use carrental;

*/

--
-- Table structure for table `cars`
--

CREATE TABLE IF NOT EXISTS `cars` (
`car_id` int(20) NOT NULL AUTO_INCREMENT,
  `car_name` varchar(50) NOT NULL,
  `car_nameplate` varchar(50) NOT NULL,
  `car_img` varchar(50) DEFAULT 'NA',
  `ac_price` float NOT NULL,
  `non_ac_price` float NOT NULL,
  `ac_price_per_day` float NOT NULL,
  `non_ac_price_per_day` float NOT NULL,
  `car_availability` varchar(10) NOT NULL,
   PRIMARY KEY (`car_id`), UNIQUE KEY `car_nameplate` (`car_nameplate`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_name`, `car_nameplate`, `car_img`, `ac_price`, `non_ac_price`, `ac_price_per_day`, `non_ac_price_per_day`, `car_availability`) VALUES
(1, 'Audi A4', 'DL8FH9876', 'assets/img/cars/audi-a4.jpg', 34, 21, 5500, 2200, 'yes'),
(2, 'Hyundai Creta', 'CH98G7645', 'assets/img/cars/creta.jpg', 23, 15, 2500, 1800, 'yes'),
(3, 'BMW 6-Series', 'RJ8Y46573', 'assets/img/cars/bmw6.jpg', 37, 29, 6600, 6000, 'yes'),
(4, 'Mercedes-Benz E-Class', 'TN8YT8762', 'assets/img/cars/mcec.jpg', 42, 33, 7450, 5300, 'yes'),
(6, 'Ford EcoSport', 'MP78F0974', 'assets/img/cars/ecosport.png', 24, 16, 3770, 2430, 'yes'),
(7, 'Honda Amaze', 'DL6KY8055', 'assets/img/cars/amaze.png', 13, 11, 2750, 2120, 'no'),
(8, 'Land
 Rover Range Rover Sport', 'RJ7UT9812', 'assets/img/cars/rangero.jpg', 32, 22, 6340, 4540, 'yes'),
(9, 'MG Hector', 'TN8U37659', 'assets/img/cars/mghector.jpg', 19, 11, 2340, 1210, 'yes'),
(10, 'Honda CR-V', 'DL12I2222', 'assets/img/cars/hondacr.jpg', 24, 18, 2340, 1430, 'yes'),
(11, 'Mahindra XUV 500', 'CH78Y4141', 'assets/img/cars/Mahindra XUV.jpg', 17, 11, 3230, 2860, 'yes'),
(12, 'Toyota Fortuner', 'UP16H9999', 'assets/img/cars/Fortuner.png', 19, 16, 3340, 2760, 'yes'),
(13, 'Hyundai Veloster', 'UP15O3473', 'assets/img/cars/hyundai0.png', 25, 17, 4420, 3520, 'yes'),
(14, 'Jaguar XF', 'DL09Y3245', 'assets/img/cars/jaguarxf.jpg', 40, 30, 6530, 4670, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `clientcars`
--

CREATE TABLE IF NOT EXISTS `clientcars` (
  `car_id` int(20) NOT NULL,
  `client_username` varchar(50) NOT NULL,
   PRIMARY KEY (`car_id`), KEY `client_username` (`client_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clientcars`
--

INSERT INTO `clientcars` (`car_id`, `client_username`) VALUES
(1, 'rohan'),
(3, 'rohan'),
(7, 'rohan'),
(8, 'rohan'),
(9, 'rohan'),
(11, 'rohan'),
(12, 'rohan'),
(2, 'krish'),
(4, 'krish'),
(6, 'krish'),
(10, 'krish'),
(13, 'krish'),
(14, 'krish');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `client_username` varchar(50) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(15) NOT NULL,
  `client_email` varchar(25) NOT NULL,
  `client_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `client_password` varchar(20) NOT NULL,
  PRIMARY KEY (`client_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_username`, `client_name`, `client_phone`, `client_email`, `client_address`, `client_password`) VALUES
('rohan', 'Rohan Pandey', '9907648315', 'rohan@gmail.com', '1221 Bhopal', 'passkey'),
('krish', 'Krish Vora', '9898923214', 'krishv@gmail.com', '1743 Satna', 'passkey'),
('arnav', 'Arnav G', '9898888812', 'arnavg@gmail.com', '4235  Ghaziabad', 'passkey');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customer_username` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_email` varchar(25) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_password` varchar(20) NOT NULL,
  PRIMARY KEY (`customer_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_username`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_password`) VALUES
('raghav', 'Raghav Kalra', '0782146580', 'raghav@gmail.com', '2432  Green Avenue', 'passkey'),
('lalit', 'Lalit', '8544441114', 'lalitj@gmail.com', '1312  Longway Drive', 'passkey'),
('rishabh', 'Rishabh Nagar', '69712341110', 'hellor@gmail.com', '3454  Hudsun Lane', 'passkey'),
('ishaan', 'Ishaan Bajaj', '0258223969', 'ishaan@gmail.com', '2444  Hello Street', 'passkey'),
('ayush', 'Ayush Bisht', '7022238500', 'ayush@gmail.com', '1234  Ruler Avenue', 'passkey');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
`driver_id` int(20) NOT NULL AUTO_INCREMENT,
  `driver_name` varchar(50) NOT NULL,
  `dl_number` varchar(50) NOT NULL,
  `driver_phone` varchar(15) NOT NULL,
  `driver_address` varchar(50) NOT NULL,
  `driver_gender` varchar(10) NOT NULL,
  `client_username` varchar(50) NOT NULL,
  `driver_availability` varchar(10) NOT NULL,
  PRIMARY KEY (`driver_id`), UNIQUE KEY `dl_number` (`dl_number`), KEY `client_username` (`client_username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `driver_name`, `dl_number`, `driver_phone`, `driver_address`, `driver_gender`, `client_username`, `driver_availability`) VALUES
(1, 'Aryan Puwar', '21635718211 ', '9567853157', '1732  Malviya Nagar', 'Male', 'rohan', 'yes'),
(2, 'Tanish Mittal', '23547689653 ', '9456233684', '4324  Inderlok', 'Male', 'rohan', 'yes'),
(3, 'Vinay Jain', '32367236453 ', '9148765682', '1206  Pitampura Road', 'Male', 'rohan', 'yes'),
(4, 'Prakhar Gupta', '04316015965 ', '98987905630', '4321  Wazirpur', 'Female', 'krish', 'no'),
(5, 'Ritik Gupta', '66787656789 ', '7544440123', 'Ashoka Road', 'Female', 'krish', 'yes'),
(6, 'Tejas Deshpande', '67543906040 ', '8121025476', '2800  Saket Court', 'Male', 'arnav', 'yes'),
(7, 'Lakshay Munjal', '44916754260 ', '7333023695', 'Green Park', 'Male', 'rohan', 'yes'),
(8, 'Mayank Agarwal', '94587627723', '5215663850', 'Faridabad', 'Male', 'krish', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `name` varchar(20) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `e_mail`, `message`) VALUES
('Harshit', 'harshit@gmail.com', 'It was a good experience.');

-- --------------------------------------------------------

--
-- Table structure for table `rentedcars`
--

CREATE TABLE IF NOT EXISTS `rentedcars` (
`id` int(100) NOT NULL AUTO_INCREMENT,
  `customer_username` varchar(50) NOT NULL,
  `car_id` int(20) NOT NULL,
  `driver_id` int(20) NOT NULL,
  `booking_date` date NOT NULL,
  `rent_start_date` date NOT NULL,
  `rent_end_date` date NOT NULL,
  `car_return_date` date DEFAULT NULL,
  `fare` double NOT NULL,
  `charge_type` varchar(25) NOT NULL DEFAULT 'days',
  `distance` double DEFAULT NULL,
  `no_of_days` int(50) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `return_status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`), KEY `customer_username` (`customer_username`), KEY `car_id` (`car_id`), KEY `driver_id` (`driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=574681260 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rentedcars`
--

INSERT INTO `rentedcars` (`id`, `customer_username`, `car_id`, `driver_id`, `booking_date`, `rent_start_date`, `rent_end_date`, `car_return_date`, `fare`, `charge_type`, `distance`, `no_of_days`, `total_amount`, `return_status`) VALUES
(574681245, 'rishabh', 4, 2, '2022-07-18', '2022-07-01', '2022-07-02', '2022-07-18', 11, 'km', 244, 1, 5884, 'R'),
(574681246, 'ishaan', 6, 6, '2022-07-18', '2022-06-01', '2022-06-28', '2022-07-18', 15, 'km', 69, 27, 5035, 'R'),
(574681247, 'raghav', 3, 1, '2022-07-18', '2022-07-19', '2022-07-22', '2022-07-20', 13, 'km', 421, 3, 5473, 'R'),
(574681248, 'rishabh', 1, 2, '2022-07-20', '2022-07-28', '2022-07-29', '2022-07-20', 10, 'km', 69, 1, 690, 'R'),
(574681249, 'ishaan', 1, 2, '2022-07-23', '2022-07-24', '2022-07-25', '2022-07-23', 10, 'km', 500, 1, 5000, 'R'),
(574681250, 'ayush', 3, 2, '2022-07-23', '2022-07-23', '2022-07-24', '2022-07-23', 2600, 'days', NULL, 1, 2600, 'R'),
(574681251, 'ishaan', 10, 1, '2022-07-23', '2022-07-25', '2022-07-30', '2022-07-23', 10, 'km', 60, 2, 600, 'R'),
(574681252, 'lalit', 11, 2, '2022-07-23', '2022-07-23', '2022-07-23', '2022-07-23', 13, 'km', 200, 0, 2600, 'R'),
(574681253, 'lalit', 6, 7, '2022-07-23', '2022-07-23', '2022-08-03', '2022-07-23', 2600, 'days', NULL, 11, 28600, 'R'),
(574681254, 'rishabh', 12, 5, '2022-07-23', '2022-07-23', '2022-07-26', '2022-07-23', 3200, 'days', NULL, 3, 9600, 'R'),
(574681255, 'lalit', 8, 5, '2022-07-23', '2022-07-23', '2022-08-08', '2022-07-23', 2400, 'days', NULL, 16, 38400, 'R'),
(574681257, 'ishaan', 7, 4, '2022-08-11', '2022-08-13', '2022-08-17', NULL, 14, 'km', NULL, NULL, NULL, 'NR'),
(574681258, 'ayush', 3, 1, '2021-03-24', '2021-03-24', '2021-03-25', '2021-03-24', 2600, 'days', NULL, 1, 2600, 'R'),
(574681259, 'ayush', 14, 8, '2021-03-24', '2021-03-24', '2021-03-26', '2021-03-24', 6100, 'days', NULL, 2, 12200, 'R');


--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `rentedcars`
--
ALTER TABLE `rentedcars`
AUTO_INCREMENT=574681260;
--
-- Constraints for table `clientcars`
--
ALTER TABLE `clientcars`
ADD CONSTRAINT `clientcars_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`),
ADD CONSTRAINT `clientcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`);

--
-- Constraints for table `rentedcars`
--
ALTER TABLE `rentedcars`
ADD CONSTRAINT `rentedcars_ibfk_1` FOREIGN KEY (`customer_username`) REFERENCES `customers` (`customer_username`),
ADD CONSTRAINT `rentedcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`),
ADD CONSTRAINT `rentedcars_ibfk_3` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


/*

--These are the queries that are executing in the .php files--

--Inserts a feedback--
INSERT INTO feedback values ('" . $name . "','" . $e_mail ."','" . $message ."')

--Selects the cars from table car where the car_id matches with the required car_id--
SELECT * FROM cars WHERE car_id = '$car_id'

--Selects the driver from the table driver depending upon the constraits as mentioned in the query--
SELECT * FROM driver d WHERE d.driver_availability = 'yes' AND d.client_username IN (SELECT cc.client_username FROM clientcars cc WHERE cc.car_id = '$car_id')

--Selects the cars from table car where the car_id matches with the required car_id--
SELECT * FROM cars WHERE car_id = '$car_id'

--Inserts a row into the rentedcars table--
INSERT into rentedcars(customer_username,car_id,driver_id,booking_date,rent_start_date,rent_end_date,fare,charge_type,return_status)  VALUES('" . $customer_username . "','" . $car_id . "','" . $driver_id . "','" . date("Y-m-d") ."','" . $rent_start_date ."','" . $rent_end_date . "','" . $fare . "','" . $charge_type . "','" . $return_status . "')

--Updates the table cars depending on the given conditions--
UPDATE cars SET car_availability = 'no' WHERE car_id = '$car_id'

--Updates the table driver depending on the given conditions--
UPDATE driver SET driver_availability = 'no' WHERE driver_id = '$driver_id'

--Selects from table cars, clients, driver and rentedcars depending on the given conditions--
SELECT * FROM  cars c, clients cl, driver d, rentedcars rc WHERE c.car_id = '$car_id' AND d.driver_id = '$driver_id' AND cl.client_username = d.client_username"

--Inserts a row into the table clients--
INSERT into clients(client_name,client_username,client_email,client_phone,client_address,client_password) VALUES('" . $client_name . "','" . $client_username . "','" . $client_email . "','" . $client_phone . "','" . $client_address ."','" . $client_password ."')

--Selects from table rentedcars, clientcars, customers and cars depending on the given conditions--
SELECT * FROM rentedcars rc, clientcars cc, customers c, cars WHERE cc.client_username = '$login_client' AND cc.car_id = rc.car_id AND rc.return_status = 'R' AND c.customer_username = rc.customer_username AND cc.car_id = cars.car_id

--Inserts a row into the table customers--
INSERT into customers(customer_name,customer_username,customer_email,customer_phone,customer_address,customer_password) VALUES('" . $customer_name . "','" . $customer_username . "','" . $customer_email . "','" . $customer_phone . "','" . $customer_address ."','" . $customer_password ."')

--Selects from the table cars depending on the given conditions--
SELECT * FROM cars WHERE car_id IN (SELECT car_id FROM clientcars WHERE client_username='$user_check')

--Inserts a row into the table cars--
INSERT into cars(car_name,car_nameplate,car_img,ac_price,non_ac_price,ac_price_per_day,non_ac_price_per_day,car_availability) VALUES('" . $car_name . "','" . $car_nameplate . "','".$target_path."','" . $ac_price . "','" . $non_ac_price . "','" . $ac_price_per_day . "','" . $non_ac_price_per_day . "','" . $car_availability ."')

--Selects from the table cars depending on the given conditions--
SELECT car_id from cars where car_nameplate = '$car_nameplate'

--Inserts a row into the table clientcars--
INSERT into clientcars(car_id,client_username) values('" . $car_id ."','" . $_SESSION['login_client'] . "')

--Selects from the table driver depending on the given conditions--
SELECT * FROM driver d WHERE d.client_username='$user_check' ORDER BY driver_name"

--Inserts a row into the table driver--
INSERT into driver(driver_name,dl_number,driver_phone,driver_address,driver_gender,client_username,driver_availability) VALUES('" . $driver_name . "','" . $dl_number . "','" . $driver_phone . "','" . $driver_address . "','" . $driver_gender ."','" . $client_username ."','" . $driver_availability ."')

--Selects from the table cars depending on the given conditions--
SELECT * FROM cars WHERE car_availability='yes'

----Selects from the table cars, rentedcars depending on the given conditions--
SELECT * FROM rentedcars rc, cars c WHERE rc.customer_username='$login_customer' AND c.car_id=rc.car_id AND rc.return_status='R'

--Selects from the table rentedcars depending on the given conditions--
SELECT c.car_name, rc.rent_start_date, rc.rent_end_date, rc.fare, rc.charge_type, rc.id FROM rentedcars rc, cars c WHERE rc.customer_username='$login_customer' AND c.car_id=rc.car_id AND rc.return_status='NR'

--Selects from the table rentedcars depending on the given conditions--
SELECT rc.id, rc.rent_end_date, rc.charge_type, rc.rent_start_date, c.car_name, c.car_nameplate FROM rentedcars rc, cars c WHERE id = '$id' AND c.car_id = rc.car_id

--Updates the rentedcars table--
UPDATE rentedcars SET car_return_date='$car_return_date', distance='$distance', no_of_days='$duration', total_amount='$total_amount', return_status='$return_status' WHERE id = '$id'

--Updates the table cars, driver and rentedcars--
UPDATE cars c, driver d, rentedcars rc SET c.car_availability='yes', d.driver_availability='yes'  WHERE rc.car_id=c.car_id AND rc.driver_id=d.driver_id AND rc.customer_username = '$login_customer' AND rc.id = '$id'

--Selects from the table rentedcars, cars and driver depending on the given conditions--
SELECT c.car_name, c.car_nameplate, rc.rent_start_date, rc.rent_end_date, rc.fare, rc.charge_type, d.driver_name, d.driver_phone FROM rentedcars rc, cars c, driver d WHERE id = '$id' AND c.car_id=rc.car_id AND d.driver_id = rc.driver_id

--Selects from the table clients depending on the given conditions--
SELECT client_username FROM clients WHERE client_username = '$user_check'

----Selects from the table customers depending on the given conditions--
SELECT customer_username FROM customers WHERE customer_username = '$user_check'

*/

/*

--Dropping the tables--
Drop Table cars;
Drop Table clientcars;
Drop Table clients;
Drop Table driver;
Drop Table rentedcars;
Drop Table customers;
Drop Table feedback;

--Dropping the database--
Drop database carrental;

*/