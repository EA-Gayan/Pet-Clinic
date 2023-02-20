-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2023 at 06:58 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aemail` varchar(255) NOT NULL,
  `apassword` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aemail`, `apassword`) VALUES
('admin@123.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appoid` int(11) NOT NULL,
  `pid` int(10) DEFAULT NULL,
  `apponum` int(3) DEFAULT NULL,
  `scheduleid` int(10) DEFAULT NULL,
  `appodate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `docid` int(11) NOT NULL,
  `docemail` varchar(255) DEFAULT NULL,
  `docname` varchar(255) DEFAULT NULL,
  `docpassword` varchar(255) DEFAULT NULL,
  `docnic` varchar(15) DEFAULT NULL,
  `doctel` varchar(15) DEFAULT NULL,
  `specialties` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`docid`, `docemail`, `docname`, `docpassword`, `docnic`, `doctel`, `specialties`) VALUES
(2, 'howardholme@gmail.com', 'Howard Holme', '123', '1111111101V', '123456789', 1),
(3, 'Ellathompson@gmail.com', 'Ella Thompson', '123', '1111111102V', '123456789', 2),
(4, 'vincentcooper@gmail.com', 'Vincent Cooper', '123', '1111111103V', '123456789', 2),
(5, 'daniellebryant@gmail.com', 'Danielle Bryant', '234', '1111111104V', '123456789', 3);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pid` int(11) NOT NULL,
  `pemail` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `ppassword` varchar(255) DEFAULT NULL,
  `paddress` varchar(255) DEFAULT NULL,
  `pnic` varchar(15) DEFAULT NULL,
  `pdob` date DEFAULT NULL,
  `ptel` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pid`, `pemail`, `pname`, `ppassword`, `paddress`, `pnic`, `pdob`, `ptel`) VALUES
(3, 'gayan@gmail.com', 'janith gayan', '123', 'kgf', '66211012344', '1999-06-28', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `rrp` decimal(7,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `price`, `rrp`, `quantity`, `img`, `category`, `date_added`) VALUES
(1, 'Bewi Dog Basic Menu 25Kg', 'WEIGHT	26 kg\r\n', '21000.00', '22000.00', 20, 'Webp.net-resizeimage.jpg', 'foods dog food', '2019-03-13 17:55:22'),
(2, 'Araton Poultry Dog Food Adult 15Kg', 'WEIGHT	16 kg', '14500.00', '15000.00', 20, 'ARATON (2).jpg', 'foods dog food', '2019-03-13 18:52:49'),
(3, 'Pedigree C&V Adult 10kg', '<p style=\"text-align:justify\">PEDIGREE complete and balanced dog food for adult dogs is a wholesome meal packed with essential nutrients vital to the healthy growth of your pet. PEDIGREE, with the goodness of cereals, chicken, meat, and the nutrients blend into a tasty and healthy treat for your furry friend. With PEDIGREE, you are sure to see the 5 Signs of Good Health in your pet upon feeding him 2 bowls (per the given feeding guidelines) a day for just 6 weeks. These signs include proven Healthier and Shinier Coat; Strong Bones and Teeth (from Ca:P ratio & levels); Digestive Health (from Dietary Fibre); Strong Muscles (from Protein); and Improved Natural Defence (from Vitamins (Vit E) and Minerals) At PEDIGREE recipes are developed based on research from the Waltham Centre for Pet Nutrition. Every product from PEDIGREE surpasses the requirements laid down by NRC 2006 of the U.S. National Academy of Science.</p>', '6300.00', '7000.00', 20, 'Webp.net-resizeimage (4).jpg', 'foods dog food', '2019-03-13 18:47:56'),
(4, 'Royal Canin Maxi Puppy 15Kg\r\n', 'Large dogs start out very small. Form the start, your dog needs the correct <p><dl>kind of balanced, complete nutrition. In this decisive growth phase, your puppy needs a supply of essential nutrients to ensure long-term health.\r\n\r\nYour puppy’s immune system is also developing. Royal Canin Maxi Puppy contains a patented complex of antioxidants, including vitamin E, to help grow and strengthen the immune system. It also contains high-quality L.I.P. proteins and prebiotics such as FOS. It ensures good digestion and balanced gut flora, supporting good stool quality.</dl></p>\r\n', '19750.00', '20000.00', 20, 'Webp.net-resizeimage (1).jpg', 'foods dog food', '2019-03-13 17:42:04'),
(5, 'ARATON Junior Dog Food Puppy 3Kg', 'WEIGHT	3.5 kg', '4000.00', '4500.00', 20, 'ARATON.jpg', 'foods dog food', '2021-09-28 14:14:24'),
(6, 'Dogland Active 15Kg', 'WEIGHT	15.8 kg\r\n', '10900.00', '11900.00', 20, 'Dogland-active.jpg', 'foods dog food', '2021-09-28 15:06:50'),
(7, 'Classic Pets Adult 15Kg', 'WEIGHT	15.8 kg', '8850.00', '9000.00', 20, 'Webp.net-resizeimage (3).jpg', 'foods dog food', '2021-09-28 15:29:54'),
(8, 'Chappi Chicken & Rice Adult 20Kg', 'WEIGHT	21 kg', '11200.00', '12200.00', 20, 'Webp.net-resizeimage (5).jpg', 'foods dog food', '2021-09-28 15:59:03'),
(9, 'Dogland Adult 15Kg', 'WEIGHT	15.8 kg\r\n', '9900.00', '10000.00', 20, 'Webp.net-resizeimage (6).jpg', 'foods dog food', '2021-09-28 16:02:04'),
(10, 'Tropidog Adult Small Breeds 2.5Kg', 'WEIGHT	2.8 kg', '4200.00', '5000.00', 20, 'Webp.net-resizeimage (7).jpg', 'foods dog food', '2021-09-28 16:05:22'),
(11, 'Happy Dog Baby Giant Lamb & Rice 4kg', 'WEIGHT	4.5 kg', '6000.00', '7000.00', 20, 'Webp.net-resizeimage (8).jpg', 'foods dog food', '2021-09-28 16:08:12'),
(12, 'Royal Canin Starter Mousse 195g', 'WEIGHT	0.5 kg\r\n', '650.00', '700.00', 20, 'Webp.net-resizeimage (9).jpg', 'foods dog food', '2021-09-28 16:10:55'),
(13, 'Araton Kitten Cat Food 1.5Kg', 'WEIGHT	2 kg\r\n', '2090.00', '3000.00', 20, 'Webp.net-resizeimage (10).jpg', 'foods food cat', '2021-09-28 16:13:38'),
(14, 'Me – O Mackeral 7Kg', '<p><dl>Me-O Cat food is a nutritionally balanced and complete cat food. It is highly digestible and cats love its great taste. Me-O Cat food is formulated to meet or surpass the nutritional levels established by the US National Research Council (NRC) and the association of American Feed Control Officials (AAFCO) for cats.\r\nWEIGHT	8.2 kg</dl></p>', '8330.00', '9000.00', 20, 'Webp.net-resizeimage (11).jpg', 'foods food cat', '2021-09-28 16:17:53'),
(15, 'Whiskas Ocen Fish 1.2Kg', 'WEIGHT	1.5 kg', '1792.00', '1850.00', 20, 'Webp.net-resizeimage (12).jpg', 'foods food cat', '2021-09-28 16:20:25'),
(16, 'Happy Cat Supreme Junior Puppy 1.4kg', '<p><dl>SUPREME JUNIOR POULTRY    Happy Cat Junior Poultry is the ideal food for young cats from 4 to 12 months. The recipe is adapted to ensure your feline friend grows up strong and healthy. This dry food contains 90% animal protein based on total protein, ensuring that your cat receives…(WEIGHT	2 kg)</dl><p>', '2990.00', '3000.00', 20, 'Webp.net-resizeimage (13).jpg', 'foods food cat', '2021-09-28 16:23:22'),
(17, 'Catpro Plus Chicken & Beef -1Kg', 'WEIGHT	1.5 kg\r\n', '1230.00', '1300.00', 20, 'Webp.net-resizeimage (14).jpg', 'foods food cat', '2021-09-28 16:26:53'),
(18, 'Me – O Chicken & Vegetable Adult 400g', '<p><dl>Cat food, creamy treats, chicken and vegetable are natural, pelleted diet provides complete nutrition . This is a premium blend of top-quality, highly digestible grains rich in essential and balanced nutrients .Naturally preserved with added vitamins and minerals essential to good health.</dl></p>', '720.00', '800.00', 20, 'Webp.net-resizeimage (15).jpg', 'foods food cat', '2021-09-28 16:32:42'),
(19, 'Drools Ocean Fish Adult 1.2Kg', '<p><dl>Drools Ocean Fish Adult Cat Dry Food is designed to support cat’s vital functions. It provides better vision, a healthy and shiny coat. This complete and balanced meal provides the essential vitamins and minerals which makes cat healthy. Prebiotics (Natural ﬁbres) protect cats from hairball formation and Probiotics keep their digestive system healthy. Omega 3 & 6 fatty acids keep the coat beautiful and lustrous.</dl></p>', '1500.00', '1600.00', 20, 'Webp.net-resizeimage (16).jpg', 'foods food cat', '2021-09-28 16:37:09'),
(20, 'Royal Canin Kitten 2Kg', 'WEIGHT	2.5 kg\r\n', '5500.00', '6000.00', 20, 'Webp.net-resizeimage (17).jpg', 'foods food cat', '2021-09-28 16:42:50'),
(21, 'Me-O Creamy Treat Bonito 15gX4', '<p><dl>Healthy digestive system. Taurine: Improves eyesight. Omega 6, Zinc & Healthy skin and coat. Recommendations: This is a snack for playing with your cats. For balanced nutrition, do not feed this treats as a meal. Always keep products resealed in the bag or in a resalable container. Store food in a cool, dry place and avoid exposure to a direct sunlight. Clean drinking water should be available for your cats all times</dl></p>', '280.00', '300.00', 20, 'Webp.net-resizeimage (18).jpg', 'foods food cat', '2021-09-28 17:10:26'),
(22, 'Fish food royal red 1.2kg\r\n', '1kg', '850.00', '900.00', 20, 'Webp.net-resizeimage (19).jpg', 'foods food fish', '2021-09-28 17:14:41'),
(23, 'Fish food royal red 110g', '500g', '475.00', '600.00', 20, 'Webp.net-resizeimage (20).jpg', 'foods food fish', '2021-09-28 17:18:38'),
(24, 'Diamond Fish Food Medium Bread 200g', '500g', '450.00', '500.00', 20, 'Webp.net-resizeimage (21).jpg', 'foods food fish', '2021-09-28 17:21:39'),
(25, 'Producer\'s Pride Rabbit Feed', '<p><dl>Quality Feed at an Everyday Great Value\r\n\r\nFinding the right feed can be both costly and confusing. By offering delicious and quality nutrition at a great price, Producer\'s Pride makes it easy to give your animals everything they need to stay happy and healthy without breaking the bank.\r\n\r\nA Healthy Rabbit = A Happy Rabbit</dl></p>', '1250.00', '1500.00', 20, 'Webp.net-resizeimage (22).jpg', 'foods food rabbit', '2021-09-28 17:26:05'),
(26, 'Science Selective 4+ Senior Rabbit Food, 70-oz bag', '<p><dl>Keep the spring in your older rabbit’s step with Science Selective 4-Year Senior Rabbit Food! Formulated with the nutritional requirements of older bunnies in mind, this senior rabbit food helps to support the immune system and promote vitality. Rich in timothy hay and containing no added sugar, these fine nuggets are also created to keep your bunny\'s teeth in great shape. Great for rabbits four years and older, this high-fiber formula is designed to help support your older bunny’s well-being!</dl></p>', '2500.00', '3000.00', 20, 'Webp.net-resizeimage (23).jpg', 'foods food rabbit', '2021-09-28 17:29:42'),
(27, 'Rabbit Origins - Vetafarm', '<p>Completely balanced diet designed by vets. High in fibre and extrusion cooked for optimum digestive and dental health. Promotes long-term health and general vitality. High fibre levels stimulate the digestive system and ensure normal gut function.Rabbits as a completely balanced diet. Also suitable for Guinea pigs (with supplemented vitamin C).Fibre Rich Fescue can be added to the rabbits diet daily to ensure optimum intake of fibre and variation in the diet.</p>', '3000.00', '3500.00', 20, 'Webp.net-resizeimage (24).jpg', 'foods food rabbit', '2021-09-28 17:33:12'),
(28, 'Kaytee Wild Bird Food', '<p>One of the most popular blends in America, Kaytee\'s Wild Bird Food Basic Blend has long been the mainstay in many backyard feeders.\r\n\r\nEconomical mix, containing black oil sunflower and millet\r\nIncludes the proper variety of ingredients to attract many types of backyard birds year-round</p>', '1250.00', '1500.00', 20, 'Webp.net-resizeimage (25).jpg', 'foods food birds', '2021-09-28 17:43:01'),
(29, 'Kaytee 100505655 Mealworms, 17.6 oz, 17.6 Ounce', '<p>Dozens of reviewers rave that bluebirds love these mealworms. As one reviewer writes, “I’ve had bird feeders for over ten years and occasionally added mealworms to the platform feeder. This year I began adding the mealworms daily, and I have a sweet little family of Eastern bluebirds visit several times a day. They love the mealworms!” Another reviewer agrees, explaining, “I keep these mealworms out every day for my family of bluebirds, and they won’t leave my property. If you want to enjoy the beauty and pleasure of bluebirds, this is the product that will keep them home year after year.” But reviewers with chickens and even lizards also appreciated this large bag of mealworms. One reviewer writes that their bearded dragon “totally loves these worms.” They ask, “The package says they are for wild birds, but really what could be the difference between one dried worm and another?”</p>', '21000.00', '2250.00', 20, 'Webp.net-resizeimage (26).jpg', 'foods food birds', '2021-09-28 17:45:53'),
(30, 'Peckish Complete Seed and Nut No Mess Wild Bird Food Mix, 2 kg', '<p><dl>A rich seed and nut mix which will bring more birds, colour and song to your garden\r\nThis is a no mess mix meaning that the seeds have had their husks removed to prevent waste\r\nThis mix contains calvita, a natural nutrient supplement containing calcium and vitamins to help improve a birds overall health\r\nSuitable to be fed to birds all year round\r\nUse this seed mix to attract the Dunnock, Robin, Blackbird, House Sparrow, Long Tailed Tit, Bullfinch, Great Tit, Chaffinch, Gold Finch, Song Thrush and many more to your garden</dl></p>', '1250.00', '1300.00', 20, 'Webp.net-resizeimage (27).jpg', 'foods food birds', '2021-09-28 17:49:49'),
(31, 'Pennington Select Birder\'s Blend, Wild Bird Seed and Feed, 40 lb. Bag ', '<p>Pennington Select Birder\'s Blend Bird Seed and Feed has been specially formulated to attract different types of birds based on scientific experimentation. The mix contains more Sunflower than traditional Economy mixes and added Safflower makes it extremely popular wit Songbirds. . Vitamins and minerals are added to the bird seed blends to create an enriched seed diet that birds love. Pennington Select Birder\'s Blend is specially formulated to attract different types of birds, including Cardinals, Blue Jays, Chickadees, Woodpeckers and much more .</p>', '990.00', '1000.00', 20, 'Webp.net-resizeimage (28).jpg', 'foods food birds', '2021-09-28 17:51:59'),
(32, 'Kitzyme 300 Tablets', '<p>They are specially formulated to contain B-complex vitamins and minerals important to your cat’s health and fitness. Helps maintain a shiny, healthy coat and skin, suitable for kittens and cats. Kitzyme Conditioning Tablets helps support natural immune system and also helps to guard against nervousness. 300 Tablets</p>', '21000.00', '2500.00', 20, 'Webp.net-resizeimage (29).jpg', 'medication', '2021-09-28 18:07:09'),
(33, 'Biotin 150g', 'WEIGHT	0.2 kg\r\n', '3200.00', '3500.00', 20, 'Webp.net-resizeimage (30).jpg', 'medication', '2021-09-28 18:10:01'),
(34, 'Bullymax Performance Chews 60 Chews 398g', 'WEIGHT	0.6 kg\r\n', '12500.00', '13000.00', 20, 'Webp.net-resizeimage (31).jpg', 'medication', '2021-09-28 18:15:40'),
(35, 'Advance 400g', 'WEIGHT	0.6 kg', '2700.00', '3000.00', 20, 'Webp.net-resizeimage (32).jpg', 'medication', '2021-09-28 18:18:16'),
(36, 'Nutri-Coat 200g', 'WEIGHT	0.2 kg', '1150.00', '2000.00', 20, 'Webp.net-resizeimage (33).jpg', 'medication', '2021-09-28 18:22:33'),
(37, 'Negasunt Powder', '<p>negasunt dusting powder is used for antibacterial wound dressing. Wounds could be maggoted wounds, foot lesions of FMD, surgical wounds, accidental wounds or navel infections.</p>\r\n\r\n', '380.00', '400.00', 20, 'Webp.net-resizeimage (34).jpg', 'medication', '2021-09-28 18:25:18'),
(38, 'Nutricoat 400g', 'WEIGHT	0.6 k', '2250.00', '3000.00', 20, 'Webp.net-resizeimage (35).jpg', 'medication', '2021-09-28 18:29:43'),
(39, 'Rapimec 10tb', 'WEIGHT	0.1 kg\r\n', '750.00', '900.00', 20, 'Webp.net-resizeimage (36).jpg', 'medication', '2021-09-28 18:34:47'),
(40, 'Soft Coat 250ml', 'WEIGHT	0.3 kg\r\n', '2495.00', '3000.00', 20, 'Webp.net-resizeimage (37).jpg', 'medication', '2021-09-28 18:37:53'),
(41, 'Vetzyme High Strength Flexible Joint 30 Tablet', 'WEIGHT	0.1 kg\r\n', '1769.00', '2000.00', 20, 'Webp.net-resizeimage (38).jpg', 'medication', '2021-09-28 18:41:11'),
(42, 'Quadra Coat 150g', 'WEIGHT	0.2 kg', '1100.00', '1200.00', 20, 'Webp.net-resizeimage (39).jpg', 'medication', '2021-09-28 18:44:47'),
(43, 'Vetzyme Conditioning 500 Tablets', 'WEIGHT	0.5 kg\r\n', '2164.00', '3000.00', 20, 'Webp.net-resizeimage (40).png', 'medication', '2021-09-28 18:50:05'),
(44, 'Trixie Salmon Oil For Dogs & Cats 500ML', 'WEIGHT	0.8 kg', '3500.00', '4000.00', 20, 'Webp.net-resizeimage (41).jpg', 'medication', '2021-09-28 18:53:18'),
(45, 'Banana Bed', 'WEIGHT	0.8 kg\r\n', '10000.00', '11000.00', 20, 'Webp.net-resizeimage (42).jpg', 'accessories', '2021-09-28 19:17:29'),
(46, 'Rugby Ball', 'WEIGHT	0.5 kg\r\n', '350.00', '400.00', 20, 'Webp.net-resizeimage (43).jpg', 'accessories', '2021-09-28 19:20:01'),
(47, 'Cat Toy', 'WEIGHT	0.1 kg\r\n', '250.00', '300.00', 20, 'Webp.net-resizeimage (44).jpg', 'accessories', '2021-09-28 19:22:18'),
(48, 'Rotate Windmill Cat Toy', 'WEIGHT	0.8 kg', '2250.00', '3000.00', 20, 'Webp.net-resizeimage (45).jpg', 'accessories', '2021-09-28 19:24:53'),
(49, 'Burger Toy', 'WEIGHT	0.5 kg\r\n', '580.00', '600.00', 20, 'Webp.net-resizeimage (46).jpg', 'accessories', '2021-09-28 19:27:10'),
(50, 'Normal Ball', 'WEIGHT	0.5 kg\r\n', '350.00', '400.00', 20, 'Webp.net-resizeimage (47).jpg', 'accessories', '2021-09-28 19:29:28'),
(51, 'Toy Bone', 'WEIGHT	0.5 kg\r\n', '380.00', '400.00', 20, 'Webp.net-resizeimage (48).jpg', 'accessories', '2021-09-28 19:31:45'),
(52, 'Wheal Cat Toy', 'WEIGHT	0.5 kg\r\n', '2250.00', '3000.00', 20, 'Webp.net-resizeimage (49).jpg', 'accessories', '2021-09-28 19:35:11'),
(53, 'Pet Double Side Comb', 'WEIGHT	0.4 kg\r\n', '850.00', '900.00', 20, 'Webp.net-resizeimage (50).jpg', 'accessories', '2021-09-28 19:38:18'),
(54, 'Cat Collar', 'WEIGHT	0.2 kg\r\n', '300.00', '350.00', 20, 'Webp.net-resizeimage (51).jpg', 'accessories', '2021-09-28 19:40:52'),
(55, 'Oval Brush', 'WEIGHT	0.5 kg\r\n', '650.00', '700.00', 20, 'Webp.net-resizeimage (52).jpg', 'accessories', '2021-09-28 19:43:34'),
(56, 'Feeding Bowl (L ) Colour Printed High Quality', 'WEIGHT	0.8 kg\r\n', '1950.00', '2000.00', 20, 'Webp.net-resizeimage (53).jpg', 'accessories', '2021-09-28 19:47:10'),
(57, 'Cat Feeding Ball', 'WEIGHT	1.3 kg\r\n', '3800.00', '4000.00', 20, 'Webp.net-resizeimage (54).jpg', 'accessories', '2021-09-28 19:49:25'),
(58, 'Dog Feeder ', 'WEIGHT	1 kg\r\n', '2500.00', '3000.00', 20, 'Webp.net-resizeimage (55).jpg', 'accessories', '2021-09-28 19:51:45'),
(59, 'Pet Bowl', 'WEIGHT	0.5 kg\r\n', '550.00', '600.00', 20, 'Webp.net-resizeimage (56).jpg', 'accessories', '2021-09-28 20:02:29'),
(60, 'Glow Brush', 'WEIGHT	0.3 kg', '750.00', '800.00', 20, 'Webp.net-resizeimage (57).jpg', 'accessories', '2021-09-28 20:06:16'),
(61, 'Chain', 'WEIGHT	0.5 kg', '450.00', '500.00', 20, 'Webp.net-resizeimage (59).jpg', 'accessories', '2021-09-28 20:11:18'),
(62, 'Cat Design Harness', 'WEIGHT	0.5 kg', '950.00', '1000.00', 20, 'Webp.net-resizeimage (58).jpg', 'accessories', '2021-09-28 20:13:54'),
(63, 'Bone', 'WEIGHT	0.1 kg\r\n', '250.00', '300.00', 20, 'Webp.net-resizeimage (60).jpg', 'accessories', '2021-09-28 20:19:38'),
(64, 'Cable Leash', 'WEIGHT	0.8 kg\r\n', '1550.00', '2000.00', 20, 'Webp.net-resizeimage (61).jpg', 'accessories', '2021-09-28 20:22:08'),
(65, 'Harness (M)', 'WEIGHT	0.8 kg', '980.00', '1000.00', 20, 'Webp.net-resizeimage (66).jpg', 'accessories', '2021-09-28 23:48:48'),
(66, 'Harness (M)', 'WEIGHT	0.8 kg', '980.00', '1000.00', 20, 'Webp.net-resizeimage (65).jpg', 'accessories', '2021-09-28 23:48:48'),
(67, 'Furggard Dog Shampoo 250 Ml', 'BRAND: FURGUARD', '398.00', '400.00', 20, 'Webp.net-resizeimage (62).jpg', 'accessories', '2021-09-28 23:59:21'),
(68, 'Aciprox Pet Soap 70g', 'BRAND: ACIPROX', '300.00', '400.00', 20, 'Webp.net-resizeimage (63).jpg', 'accessories', '2021-09-29 00:01:24'),
(69, 'Furggard Dog Soap 80 Grms', 'BRAND: FURGUARD', '320.00', '400.00', 20, 'Webp.net-resizeimage (64).jpg', 'accessories', '2021-09-29 00:04:43'),
(70, 'Cat Cage Plastic', 'WEIGHT	1.5 kg\r\n', '5000.00', '5500.00', 20, 'Webp.net-resizeimage (67).jpg', 'accessories', '2021-09-29 00:09:01'),
(71, 'Green Bio Cinamon Shampoo 200Ml', 'WEIGHT	0.4 kg\r\n', '450.00', '500.00', 20, 'Webp.net-resizeimage (68).jpg', 'accessories', '2021-09-29 00:13:40'),
(72, 'Canine Medicated Shampoo 200Ml', 'WEIGHT	0.4 kg', '850.00', '970.00', 20, 'Webp.net-resizeimage (69).jpg', 'accessories', '2021-09-29 00:15:45'),
(73, 'Green Bio Lavender Shampoo 200Ml', 'WEIGHT	0.4 kg', '350.00', '400.00', 20, 'Webp.net-resizeimage (70).jpg', 'accessories', '2021-09-29 00:19:06'),
(74, 'Wet Dog Every Day Shampoo 200 Ml', 'WEIGHT	0.3 kg', '350.00', '400.00', 20, 'Webp.net-resizeimage (71).jpg', 'accessories', '2021-09-29 00:48:42'),
(75, 'Wet Dog Medicated Pet Shampoo 200 Ml', 'WEIGHT	0.3 kg\r\n', '500.00', '600.00', 20, 'image(72).png', 'accessories', '2021-09-29 00:52:29'),
(76, 'Niltick Shampoo 150ml', 'WEIGHT	0.3 kg', '1500.00', '1600.00', 20, 'Webp.net-resizeimage (73).jpg', 'accessories', '2021-09-29 00:55:40'),
(77, 'Sebo-Rid Shampoo 100Ml\r\n', 'WEIGHT	0.3 kg\r\n', '380.00', '400.00', 20, 'Webp.net-resizeimage74.png', 'accessories', '2021-09-29 00:59:09'),
(78, 'Limpo Conditioning Shampoo 200ml', 'WEIGHT	1 kg', '1200.00', '1300.00', 20, 'Webp.net-resizeimage (75).jpg', 'accessories', '2021-09-29 01:02:22'),
(79, 'Burt\'s Bees for Dogs Natural Oatmeal Shampoo for Dogs', ' Colloidal Oat Flour & Honey - Oatmeal Dog Shampoo - Dog Grooming Supplies, Dog Bathing Supplies, Dog Shampoo, Dog Wash, Pet Shampoo', '2200.00', '25000.00', 20, 'Webp.net-resizeimage (76).jpg', 'accessories', '2021-09-29 01:06:56'),
(80, 'Cleansing Dog Shampoo for Smelly Dogs', 'Refreshing Colloidal Oatmeal Dog Shampoo for Dry Skin and Dog Bath Soap - Moisturizing Dog Shampoo Oatmeal Lavender Formula for Great Smelling Dog Wash', '2500.00', '2700.00', 20, 'Webp.net-resizeimage (77).jpg', 'accessories', '2021-09-29 01:09:24'),
(81, 'Bio-Groom Waterless Bath', 'Bio-Groom Waterless Bath is a gentle waterless shampoo that requires no wetting or rinsing removes stains and is perfect for last minute touch-ups without changing the coat appearance. Simple to use, just apply and wipe dry. Perfect to use between bathing, for spot cleaning and deodorizing, when caring for puppies and kittens, after surgery, and for old or sick pets. This product is also great for cats.\r\nTearless, alcohol-free, pH balanced\r\nHighlights natural colors\r\nSafe for dogs and cats\r\nSafe to use with topical flea and tick treatments\r\nMade in the USA.', '1250.00', '1270.00', 20, 'Webp.net-resizeimage (78).jpg', 'accessories', '2021-09-29 01:16:07'),
(82, 'Vet\'s Best Waterless Dog Bath 5oz | Dog Shampoo - Naturally For Pets', 'Vets Best Waterless Dog Bath is a no rinse foam dog shampoo that acts as a calming cleanser and moisturizer for your dogs skin and coat between baths. Waterless Dog shampoo is formulated using natural ingredients aloe vera and neem oil, and has a relaxing and calming fragrance. For use with dogs 12 weeks or older, and will not affect topical flea control products. The perfect solution when water is unavailable or in cold weather.', '3300.00', '3500.00', 20, 'Webp.net-resizeimage (79).jpg', 'accessories', '2021-09-29 01:17:47'),
(83, 'Farm To Market Natural All In One Easy Clean & Condition Waterless Bath Spray', 'A safe and effective waterless bath to remove excess oil, dirt, odor & stains. Aloe Vera has been added to enhance & maintain healthy skin & coat. Great to use between full baths. Good for III or elderly pets.', '1250.00', '1270.00', 20, 'Webp.net-resizeimage (80).jpg', 'accessories', '2021-09-29 01:21:03'),
(84, 'Naturopet Organic Waterless Bath- 200ml - Puppies and Kittens', 'Wiggles organic waterless bath is easy to use requiring no wetting or rinsing. This easy-to-use body cleanser spray cleans your pet’s body & fur and keeps it spick and span, especially after a fun play session or a walk\r\nGently removes dead skin cells & body odour without upsetting the pet\'s skin\'s pH balance and prevents skin infections too\r\nKeeps him looking fresh as it acts as a natural shield against dirt', '2500.00', '2775.00', 20, 'Naturopet_WaterlessBath_(81).png', 'accessories', '2021-09-29 01:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `scheduleid` int(11) NOT NULL,
  `docid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `scheduledate` date DEFAULT NULL,
  `scheduletime` time DEFAULT NULL,
  `nop` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`scheduleid`, `docid`, `title`, `scheduledate`, `scheduletime`, `nop`) VALUES
(1, '1', 'Test Session', '2050-01-01', '18:00:00', 50),
(2, '1', '1', '2022-06-10', '20:36:00', 1),
(3, '1', '12', '2022-06-10', '20:33:00', 1),
(4, '1', '1', '2022-06-10', '12:32:00', 1),
(5, '1', '1', '2022-06-10', '20:35:00', 1),
(6, '1', '12', '2022-06-10', '20:35:00', 1),
(7, '1', '1', '2022-06-24', '20:36:00', 1),
(8, '1', '12', '2022-06-10', '13:33:00', 1),
(9, '5', 'OPD', '2023-02-16', '16:30:00', 30);

-- --------------------------------------------------------

--
-- Table structure for table `specialties`
--

CREATE TABLE `specialties` (
  `id` int(2) NOT NULL,
  `sname` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specialties`
--

INSERT INTO `specialties` (`id`, `sname`) VALUES
(1, 'Accident and emergency (Surgeon)'),
(2, 'Sergeon'),
(3, 'OPD'),
(8, 'Clinical chemistry'),
(10, 'Clinical radiology'),
(11, 'Dental, oral and maxillo-facial surgery'),
(24, 'Laboratory medicine'),
(26, 'Microbiology'),
(40, 'Pharmacology');

-- --------------------------------------------------------

--
-- Table structure for table `webuser`
--

CREATE TABLE `webuser` (
  `email` varchar(255) NOT NULL,
  `usertype` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webuser`
--

INSERT INTO `webuser` (`email`, `usertype`) VALUES
('admin@123.com', 'a'),
('howardholme@gmail.com', 'd'),
('gayan@gmail.com', 'p'),
('emhashenudara@gmail.com', 'p'),
('Ellathompson@gmail.com', 'd'),
('vincentcooper@gmail.com', 'd'),
('daniellebryant@gmail.com', 'd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aemail`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appoid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `scheduleid` (`scheduleid`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`docid`),
  ADD KEY `specialties` (`specialties`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`scheduleid`),
  ADD KEY `docid` (`docid`);

--
-- Indexes for table `specialties`
--
ALTER TABLE `specialties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webuser`
--
ALTER TABLE `webuser`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `docid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `scheduleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
