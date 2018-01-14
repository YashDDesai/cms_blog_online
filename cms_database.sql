-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2017 at 10:48 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(21, 'php'),
(22, 'asp.net'),
(23, 'c#'),
(24, 'c and c++'),
(25, 'java');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `date`, `name`, `username`, `post_id`, `email`, `website`, `image`, `comment`, `status`) VALUES
(40, 1511977219, 'A', 'user', 0, 'A', 'A', 'unknown-picture.png', 'A', 'approve'),
(41, 1511977253, 'YASH DESAI', 'yashdesai', 0, 'yddc902@gmail.com', '', 'logan.jpg', 'A1', 'approve'),
(42, 1511977318, 'B', 'user', 0, 'B', 'B', 'unknown-picture.png', 'B', 'approve'),
(43, 1511977343, 'YASH DESAI', 'yashdesai', 0, 'yddc902@gmail.com', '', 'logan.jpg', 'B1', 'approve'),
(44, 1511977418, 'C', 'user', 1, 'C', 'C', 'unknown-picture.png', 'C', 'approve'),
(45, 1511977430, 'D', 'user', 1, 'D', 'D', 'unknown-picture.png', 'D', 'approve'),
(46, 1511977454, 'YASH DESAI', 'yashdesai', 1, 'yddc902@gmail.com', '', 'logan.jpg', 'D1', 'approve');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `image`) VALUES
(27, 'Facebook-Page-Cover-photo.png'),
(28, 'sohail card.jpg'),
(29, 'usman visiting cards.jpg'),
(30, 'visiting Card of nadeem.jpg'),
(31, 'WIN_20170901_17_40_52_Pro.jpg'),
(32, '---Super-heroes-Minimalist-Wallpapers-1920-1080-13.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `author_image` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `post_data` text NOT NULL,
  `views` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `date`, `title`, `author`, `author_image`, `image`, `categories`, `tags`, `post_data`, `views`, `status`) VALUES
(0, 1511800985, 'My First Post', 'yashdesai', 'logan.jpg', '---Super-heroes-Minimalist-Wallpapers-1920-1080-13.jpg', 'php', 'blog,post,lorel', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<blockquote>\r\n<p><span style=\"font-size: 18pt;\"><strong>L</strong></span>orem ipsum dolor<sup>[1]</sup> sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis <sub>ipsum.</sub> Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.</p>\r\n</blockquote>\r\n<p>Class aptent taciti sociosqu ad litora<em> torquent per conubia nostra</em>, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. <span style=\"text-decoration: line-through;\">Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum.</span></p>\r\n<p><em>Nulla metus metus, ullamcorper vel,</em> tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per <span style=\"text-decoration: underline;\">inceptos himenaeos.</span> Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam.</p>\r\n</body>\r\n</html>', 44, 'publish'),
(1, 1511802293, 'Second Post', 'yashdesai', 'logan.jpg', 'WIN_20170901_17_40_52_Pro.jpg', 'c and c++', 'sd', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>sdsd</p>\r\n</body>\r\n</html>', 101, 'publish'),
(2, 1511842957, '154', 'yashdesai', 'logan.jpg', 'img009.jpg', 'c and c++', 'blog,cms', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>mmmm</p>\r\n</body>\r\n</html>', 4, 'publish'),
(3, 1511855827, 'Yes, Its Now Online', 'yashdesai', 'logan.jpg', 'WIN_20171001_11_19_26_Pro.jpg', 'asp.net', 'online,asp,asp.net,.net,lorel,ipsum,localhost', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis leo eu ex lobortis, quis ultrices magna scelerisque. Nam rutrum ipsum ante, nec lobortis ante ultricies eu. Nunc ornare justo in volutpat ullamcorper. Mauris elit tellus, interdum vel viverra in, semper vel magna. Ut varius, ipsum nec vulputate semper, elit dui lobortis nisi, sit amet sagittis risus sem id turpis. Praesent et consectetur est. Mauris euismod eleifend dapibus. Quisque sit amet luctus diam, ut pulvinar odio. Quisque scelerisque eget leo eu imperdiet. Ut velit dolor, auctor ut interdum non, pellentesque eget sapien. Aliquam vitae orci ut mi tincidunt ultricies in eget ligula. Maecenas orci orci, cursus nec magna vitae, fringilla iaculis massa.</p>\r\n</blockquote>\r\n<p><strong>Morbi hendrerit arcu in sapien gravida gravida. Suspendisse potenti. Mauris ac diam posuere, venenatis magna eget, sagittis massa. Nulla fringilla mauris turpis, vitae tincidunt arcu facilisis eget. Aenean ornare lectus sollicitudin fermentum dictum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam aliquam at nisl id tempus. Nam cursus elit massa, non commodo nibh rhoncus eget. Fusce tempor tristique tempor. In arcu purus, viverra vitae euismod at, feugiat in mi. Suspendisse nec neque tincidunt, vehicula massa id, tempor ex.</strong></p>\r\n<p><em>Donec ac mauris ut nulla tincidunt commodo. Proin non quam maximus, semper libero sagittis, interdum massa. Morbi congue, dolor et tincidunt tristique, purus arcu aliquet augue, dapibus consectetur arcu felis sed orci. Nullam eros ante, malesuada a eros vel, malesuada pellentesque nisi. Nulla ut sollicitudin libero. Duis eu orci a ligula iaculis commodo vel eget ligula. Curabitur enim diam, tristique quis ultrices a, aliquam et velit. Morbi blandit, lorem malesuada rhoncus vulputate, nisi ex fringilla dolor, ac lobortis metus lectus nec turpis. Aliquam id feugiat elit, id ullamcorper lectus. Nullam quam magna, viverra eu enim sit amet, cursus molestie odio. Suspendisse ac convallis sem.</em></p>\r\n<p>Sed iaculis ligula nec nibh sagittis maximus. Nulla vitae felis et tortor congue auctor eu nec metus. Proin elementum sem at suscipit finibus. Integer elementum mattis metus, sit amet finibus enim ornare ut. Phasellus malesuada neque in sem tempus, nec condimentum ligula malesuada. Suspendisse posuere nibh eu condimentum volutpat. Sed ullamcorper ultricies odio, a molestie mauris aliquet et. Aenean nisi magna, hendrerit ac rutrum a, cursus non neque. Duis dapibus ligula et erat convallis tristique. Pellentesque quam turpis, rutrum ac quam et, fermentum suscipit sem. Duis a malesuada ligula. Aliquam eu tortor consectetur, semper lectus sit amet, ullamcorper enim. Integer convallis sit amet ante a auctor. Nam vel tortor ac nulla posuere porttitor ac in orci.</p>\r\n<p>Nullam non lorem eget sapien blandit rutrum id sit amet arcu. Nulla ornare imperdiet interdum. Duis id porta elit, et dignissim mauris. Etiam cursus, lacus sed maximus consectetur, elit est semper ante, non mollis erat est in est. Cras cursus hendrerit euismod. Curabitur sit amet elementum turpis. Aenean iaculis risus quis neque congue maximus. Phasellus ullamcorper sit amet nulla a sodales. Nulla ante ex, venenatis venenatis est ac, lacinia pretium arcu.</p>\r\n</body>\r\n</html>', 38, 'publish'),
(4, 1511974320, 'dssdf', 'nishadesai', '60.jpg', 'Sketch.png', 'c and c++', 'ddfdf', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>dfdf3</p>\r\n</body>\r\n</html>', 19, 'publish'),
(5, 1511979376, 'JAVA', 'nt', 'dummyProfile.jpg', 'dummy-profile.jpg', 'java', 'java', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>JAVA</p>\r\n</body>\r\n</html>', 8, 'publish'),
(6, 1511980097, 'Learn Advanced Java', 'nt', 'dummyProfile.jpg', 'people-profile-dummy-219x227-300x300.jpg', 'java', 'advanced java,java2', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>java2</p>\r\n</body>\r\n</html>', 1, 'publish'),
(7, 1511989319, 'Nisha\'s second thoght', 'nishadesai', '60.jpg', 'untitled.jpg.png', 'c#', '2', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>2</p>\r\n</body>\r\n</html>', 1, 'publish'),
(8, 1511989852, '3', 'nishadesai', '60.jpg', 'untitled.png', 'java', '3', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>3</p>\r\n</body>\r\n</html>', 0, 'publish');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `salt` varchar(255) NOT NULL DEFAULT '$2y$10$quickbrownfoxjumpsover'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `date`, `first_name`, `last_name`, `username`, `email`, `image`, `password`, `role`, `details`, `salt`) VALUES
(1, 1511799980, 'YASH', 'DESAI', 'yashdesai', 'yddc902@gmail.com', 'logan.jpg', '$2y$10$quickbrownfoxjumpsoveefXkylpKMwkYHIwNPw3s3ZpboG0tqpnO', 'admin', 'I am the creator of this blog.', '$2y$10$quickbrownfoxjumpsover'),
(2, 1511806478, 'Nisha', 'Desai', 'nishadesai', 'nisha@desai.com', '60.jpg', '$2y$10$quickbrownfoxjumpsoveefXkylpKMwkYHIwNPw3s3ZpboG0tqpnO', 'author', '', '$2y$10$quickbrownfoxjumpsover'),
(16, 1511979256, 'Nikunj', 'Thakor', 'nt', 'nt@nt.com', 'dummyProfile.jpg', '$2y$10$quickbrownfoxjumpsoveefXkylpKMwkYHIwNPw3s3ZpboG0tqpnO', 'admin', '', '$2y$10$quickbrownfoxjumpsover');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
