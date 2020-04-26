SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- Database: `cms`
--




CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;


INSERT INTO categories VALUES
("1","internet"),
("2","nature"),
("3","education"),
("4","exam"),
("5","syllabus"),
("6","application"),
("7","technology");




CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


INSERT INTO comments VALUES
("2","1544256474","Yash Desai","user","7","yddc902@gmail.com","","unknown-picture.png","good","pending");




CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;


INSERT INTO contact VALUES
("6","NIsha Desai","nddesai97@gmail.com","http://google.com","Good"),
("7","Yash Desai","yddc902@gmail.com","","Done"),
("8","Yash Desai","yddc902@gmail.com","jh","hhjjh");




CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `author_image` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `post_data` text NOT NULL,
  `views` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;


INSERT INTO posts VALUES
("1","1544248119","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.","yashdesai","","ArtificialIntelligence.jpg","education","AI,IT,Education","<!DOCTYPE html>
("2","1544248498","Faucibus pulvinar elementum integer enim neque volutpat.","nddesai","photo3.png","8384110298_da510e0347_c-800x400.jpg","internet","Education,AI,Image","<!DOCTYPE html>
("3","1544248719"," Eu volutpat odio facilisis mauris sit amet massa.","dipeshdesai","myAvatar (1).png","Chrome_Remote_Desktop_1512711101375.png","nature","Chrome,Nature,Image","<!DOCTYPE html>
("4","1544248876","Sit amet luctus venenatis lectus magna fringilla urna.","yashdesai","core-0001-fdbffe842dc8d1e8012dcc8ac82b0b43.l_group.jpg","Ascend-VR-prototype.jpg","education","Prototype,Education","<!DOCTYPE html>
("5","1544249045","Purus faucibus ornare suspendisse sed nisi lacus sed viverra.","nddesai","photo3.png","crop.jpg","nature","nature, water, hills","<!DOCTYPE html>
("6","1544249313","Dignissim sodales ut eu sem integer vitae justo eget","yashdesai","core-0001-fdbffe842dc8d1e8012dcc8ac82b0b43.l_group.jpg","10065i898BB59D322D31E3.jpg","exam","Exam,Cyclone,Date","<!DOCTYPE html>
("7","1544249561","Nibh nisl condimentum id venenatis a condimentum vitae sapien pellentesque","dipeshdesai","myAvatar (1).png","IMG_0997-800x400.jpg","application","Mobile,Application,Android App","<!DOCTYPE html>
("8","1544260824","First Post","yashdesai","core-0001-fdbffe842dc8d1e8012dcc8ac82b0b43.l_group.jpg","Ascend-VR-prototype.jpg","exam","Exam,VR","<!DOCTYPE html>
("9","1544261001","My second post","yashdesai","core-0001-fdbffe842dc8d1e8012dcc8ac82b0b43.l_group.jpg","solar-powered-bitcoin-mining.jpg","technology","hi","<!DOCTYPE html>
("10","1544261103","Third Post","yashdesai","core-0001-fdbffe842dc8d1e8012dcc8ac82b0b43.l_group.jpg","2f377c1300000578-3353212-image-a-7_1449693873570_opt.jpg","internet","Internet","<!DOCTYPE html>




CREATE TABLE `settings` (
  `id` int(5) NOT NULL,
  `blog_title` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `tagline` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `banner` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO settings VALUES
("1","MCA","Narmada College of Computer Application","Where Knowledge is Wealth","core-0001-fdbffe842dc8d1e8012dcc8ac82b0b43.l_group.jpg","download(2).jpg"),
("1","MCA","Narmada College of Computer Application","Where Knowledge is Wealth","ncca.png","download(2).jpg"),
("1","MCA","Narmada College of Computer Application","Where Knowledge is Wealth","ncca.png","download(2).jpg"),
("1","MCA","Narmada College of Computer Application","Where Knowledge is Wealth","core-0001-fdbffe842dc8d1e8012dcc8ac82b0b43.l_group.jpg","ArtificialIntelligence.jpg"),
("1","MCA","Narmada College of Computer Application","Where Knowledge is Wealth","core-0001-fdbffe842dc8d1e8012dcc8ac82b0b43.l_group.jpg","download(2).jpg"),
("1","MCA","Narmada College of Computer Application","Where Knowledge is Wealth","core-0001-fdbffe842dc8d1e8012dcc8ac82b0b43.l_group.jpg","download(2).jpg"),
("1","MCA","Narmada College of Computer Application","Where Knowledge is Wealth","ncca.png","download(2).jpg"),
("1","MCA","Narmada College of Computer Application","Where Knowledge is Wealth","ncca.png","download(2).jpg"),
("1","BCA","XYZ COLLEGE","Where Knowledge is Wealth","nisha marksheet.jpg","download(2).jpg"),
("1","MCA","Narmada College of Computer Application","Where Knowledge is Wealth","core-0001-fdbffe842dc8d1e8012dcc8ac82b0b43.l_group.jpg","download(2).jpg");




CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `salt` varchar(255) NOT NULL DEFAULT '$2y$10$quickbrownfoxjumpsover',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


INSERT INTO users VALUES
("1","1544247902","Yash","Desai","yashdesai","","ncca.png","$2y$10$quickbrownfoxjumpsoveefXkylpKMwkYHIwNPw3s3ZpboG0tqpnO","admin","","$2y$10$quickbrownfoxjumpsover"),
("2","1544248212","Nisha","Desai","nddesai","nddesai@gmail.com","photo3.png","$2y$10$quickbrownfoxjumpsoveeIWYZYq2qF9uzDPZ86fdKor7kzYijyti","author","","$2y$10$quickbrownfoxjumpsover"),
("3","1544248262","Dipesh","Desai","dipeshdesai","dipesh@gmail.com","myAvatar (1).png","$2y$10$quickbrownfoxjumpsoveeiQTidNnlx9e4W1TK4BI3.Udun3MoR3.","author","","$2y$10$quickbrownfoxjumpsover");




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;