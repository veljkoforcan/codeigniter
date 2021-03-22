-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 22, 2021 at 12:07 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Cakes', '2021-03-13 11:10:15'),
(2, 'Salty Dishes', '2021-03-13 11:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 15, 'Veljko Forcan', 'test@test.com', 'Great Post', '2021-03-16 13:33:05'),
(2, 15, 'Kulinarka', 'test@test.com', 'Odli?an recept, Odli?an recept, Odli?an recept, Odli?an recept, Odli?an recept, Odli?an recept, Odli?an recept, Odli?an recept, Odli?an recept, Odli?an recept, ', '2021-03-16 13:50:03'),
(4, 15, 'Veljko Forcan', 'test@test.com', '?????????\r\nžžžžž?š?š?š?š?šš?š?š?š?', '2021-03-16 13:54:25'),
(5, 16, 'Cookies Lover', 'test@test.com', 'This is great recipe!', '2021-03-19 09:08:06'),
(6, 17, 'Sweet Cake', 'test@test.com', 'This is a very interesting recipe!', '2021-03-22 10:37:51'),
(7, 19, 'Jasmina', 'test@test.com', 'Very interesting recipe with beautiful image illustration.', '2021-03-22 11:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(17, 1, 1, 'Our First Recipe', 'Our-First-Recipe', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In luctus sapien nibh, quis mollis lectus tempus non. Vivamus hendrerit purus ex, sit amet dictum libero molestie quis. Fusce ut diam nec tellus imperdiet maximus. Phasellus ut tristique neque, nec placerat erat. Fusce vitae facilisis justo. Duis eget magna tincidunt, dapibus purus ac, ullamcorper nisi. In ac pretium tellus. Curabitur sollicitudin ornare ipsum vitae vulputate.</p>\r\n\r\n<p>Aliquam velit sem, mollis non sollicitudin vel, tincidunt nec tortor. Integer imperdiet arcu velit, in dapibus arcu mollis eget. Ut tincidunt dui felis, a commodo diam consequat eget. Pellentesque sollicitudin porta dolor gravida elementum. Vivamus tempor accumsan condimentum. Proin lacinia volutpat erat a egestas. Fusce aliquam dui at congue volutpat. Nulla blandit est congue blandit aliquam. Suspendisse pellentesque condimentum sagittis. Aliquam eros est, euismod nec turpis vel, mattis consequat turpis. Curabitur porta magna a vehicula efficitur. Nam sodales, ante sit amet congue convallis, nisi velit efficitur nibh, sit amet ornare leo orci sed ante. Nullam sed urna nec purus aliquet lobortis in ut odio. Duis ac massa aliquet lorem placerat commodo.</p>\r\n', 'noimage.jpg', '2021-03-22 10:30:14'),
(18, 2, 1, 'Our Second Recipe', 'Our-Second-Recipe', '<h1>Lorem ipsum dolor sit amet</h1>\r\n\r\n<p><br />\r\n<span class=\"marker\">EDITED:</span><br />\r\n<strong>Lorem ipsum </strong>dolor sit amet, consectetur adipiscing elit. Ut non congue justo. Mauris et massa sit amet magna rhoncus suscipit nec vel libero. Vivamus volutpat diam quis quam efficitur egestas. Phasellus id magna massa. Fusce mollis eros a turpis viverra efficitur. Aenean fringilla consequat urna, in venenatis dui aliquam nec. Integer et magna lectus.</p>\r\n\r\n<p>Mauris justo eros, pretium ac vulputate blandit, interdum ut ante. Vivamus in tortor vitae ipsum pharetra sodales vel in felis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis id leo eu eros placerat pulvinar a at nulla. Phasellus eu facilisis odio, a tincidunt est. Ut id gravida ante. Aliquam malesuada elementum dignissim. Sed in tincidunt magna.</p>\r\n\r\n<p>Morbi at laoreet ex. Curabitur sed risus quis magna pellentesque iaculis in id elit. Vivamus eu arcu mi. Proin at condimentum mi. In hac habitasse platea dictumst. Etiam ac arcu interdum, auctor est et, pellentesque orci. Curabitur ut urna lectus. Cras finibus in sapien at condimentum. Aenean dictum porta urna eget placerat. Sed faucibus accumsan sem, at facilisis est mattis sed. Phasellus elementum purus at lectus sollicitudin, ut consequat mauris sodales. Aliquam felis augue, dictum eget facilisis vel, tincidunt ac turpis. Mauris et molestie justo. Quisque finibus ullamcorper turpis, non consectetur dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam scelerisque ex quis turpis semper, sed cursus lorem ultricies.</p>\r\n', 'noimage.jpg', '2021-03-22 10:32:33'),
(19, 1, 1, 'Recipe with custom photo', 'Recipe-with-custom-photo', '<p>Lorem ipsum&nbsp;dolor sit amet, consectetur adipiscing elit. Ut non congue justo. Mauris et massa sit amet magna rhoncus suscipit nec vel libero. Vivamus volutpat diam quis quam efficitur egestas. Phasellus id magna massa. Fusce mollis eros a turpis viverra efficitur. Aenean fringilla consequat urna, in venenatis dui aliquam nec. Integer et magna lectus.</p>\r\n\r\n<p>Mauris justo eros, pretium ac vulputate blandit, interdum ut ante. Vivamus in tortor vitae ipsum pharetra sodales vel in felis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis id leo eu eros placerat pulvinar a at nulla. Phasellus eu facilisis odio, a tincidunt est. Ut id gravida ante. Aliquam malesuada elementum dignissim. Sed in tincidunt magna.</p>\r\n\r\n<p>Morbi at laoreet ex. Curabitur sed risus quis magna pellentesque iaculis in id elit. Vivamus eu arcu mi. Proin at condimentum mi. In hac habitasse platea dictumst. Etiam ac arcu interdum, auctor est et, pellentesque orci. Curabitur ut urna lectus. Cras finibus in sapien at condimentum. Aenean dictum porta urna eget placerat. Sed faucibus accumsan sem, at facilisis est mattis sed. Phasellus elementum purus at lectus sollicitudin, ut consequat mauris sodales. Aliquam felis augue, dictum eget facilisis vel, tincidunt ac turpis. Mauris et molestie justo. Quisque finibus ullamcorper turpis, non consectetur dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam scelerisque ex quis turpis semper, sed cursus lorem ultricies.</p>\r\n', 'food.jpg', '2021-03-22 11:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(1, 'Maria', '123456', 'test@test.com', 'Kulinarka', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-03-22 10:27:43');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
