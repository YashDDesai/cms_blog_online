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
("1","1544248119","Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.","yashdesai","","ArtificialIntelligence.jpg","education","AI,IT,Education","<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Malesuada pellentesque elit eget gravida cum sociis natoque. Aliquet sagittis id consectetur purus ut faucibus. Vestibulum morbi blandit cursus risus at ultrices mi tempus imperdiet. Dui sapien eget mi proin sed libero enim. Sed elementum tempus egestas sed. Proin sed libero enim sed faucibus turpis in. Scelerisque eleifend donec pretium vulputate sapien. Nunc consequat interdum varius sit amet mattis. Sagittis purus sit amet volutpat consequat mauris nunc congue. Dui vivamus arcu felis bibendum ut tristique et egestas quis. Sit amet tellus cras adipiscing enim eu turpis egestas. Ultrices neque ornare aenean euismod elementum nisi. Pellentesque massa placerat duis ultricies. Bibendum est ultricies integer quis auctor elit sed. Nunc mi ipsum faucibus vitae aliquet. Scelerisque in dictum non consectetur a erat nam. Nunc sed augue lacus viverra vitae congue eu consequat. In eu mi bibendum neque egestas congue quisque egestas diam.</p>\n<p>Commodo elit at imperdiet dui accumsan sit. Tortor pretium viverra suspendisse potenti nullam ac tortor vitae purus. Faucibus ornare suspendisse sed nisi lacus sed viverra tellus in. Volutpat consequat mauris nunc congue nisi vitae. Et netus et malesuada fames ac turpis. Nibh tellus molestie nunc non blandit massa enim nec. Sollicitudin nibh sit amet commodo. Proin fermentum leo vel orci porta non. Ornare massa eget egestas purus viverra accumsan. Ac tincidunt vitae semper quis. Fames ac turpis egestas integer eget aliquet nibh praesent tristique. In cursus turpis massa tincidunt dui. Pellentesque nec nam aliquam sem. Dolor sed viverra ipsum nunc aliquet bibendum. Neque laoreet suspendisse interdum consectetur libero id faucibus. Eu consequat ac felis donec et odio. Sit amet nisl suscipit adipiscing bibendum est ultricies integer quis. Risus quis varius quam quisque id diam. Ut ornare lectus sit amet est placerat. Purus faucibus ornare suspendisse sed nisi lacus.</p>\n<p>Justo nec ultrices dui sapien eget mi proin sed libero. Felis eget nunc lobortis mattis aliquam faucibus purus in massa. Tortor at auctor urna nunc id cursus metus aliquam. Suspendisse faucibus interdum posuere lorem ipsum. In egestas erat imperdiet sed euismod nisi porta. Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet. Est ultricies integer quis auctor elit sed vulputate. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed. Id interdum velit laoreet id. Aliquet nec ullamcorper sit amet risus nullam eget. Sed arcu non odio euismod lacinia at quis risus. Aliquam vestibulum morbi blandit cursus risus at. Sed egestas egestas fringilla phasellus faucibus. Commodo odio aenean sed adipiscing diam donec. Malesuada fames ac turpis egestas integer eget aliquet nibh praesent. Habitant morbi tristique senectus et.</p>\n</body>\n</html>","10","publish"),
("2","1544248498","Faucibus pulvinar elementum integer enim neque volutpat.","nddesai","photo3.png","8384110298_da510e0347_c-800x400.jpg","internet","Education,AI,Image","<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Enim eu turpis egestas pretium aenean. Elementum integer enim neque volutpat ac tincidunt vitae semper. Et sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque. Sed odio morbi quis commodo odio. Aliquet nec ullamcorper sit amet risus nullam eget felis eget. Nunc sed blandit libero volutpat sed cras. Quam lacus suspendisse faucibus interdum posuere lorem ipsum. Tempus egestas sed sed risus pretium quam vulputate. Purus semper eget duis at tellus at urna condimentum mattis. Tellus orci ac auctor augue mauris augue neque gravida in. Dignissim sodales ut eu sem integer vitae justo eget.</p>\n<p>Facilisis gravida neque convallis a cras semper auctor neque vitae. Risus nullam eget felis eget nunc. Facilisis magna etiam tempor orci eu. Libero id faucibus nisl tincidunt eget nullam non nisi. Sit amet consectetur adipiscing elit pellentesque habitant morbi. Suspendisse sed nisi lacus sed viverra tellus. Ac odio tempor orci dapibus ultrices. In est ante in nibh mauris. Amet aliquam id diam maecenas ultricies mi eget. Dolor sit amet consectetur adipiscing elit ut aliquam purus. Nisi lacus sed viverra tellus. Nulla facilisi nullam vehicula ipsum. Amet mauris commodo quis imperdiet. Risus nec feugiat in fermentum posuere. Tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla. Pellentesque sit amet porttitor eget dolor morbi non.</p>\n<p>Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet risus. Risus in hendrerit gravida rutrum quisque. Id cursus metus aliquam eleifend mi. Id diam vel quam elementum pulvinar etiam non quam lacus. Commodo viverra maecenas accumsan lacus vel. Erat nam at lectus urna duis convallis convallis tellus. Suspendisse faucibus interdum posuere lorem ipsum dolor sit. Curabitur gravida arcu ac tortor dignissim convallis aenean et. Risus ultricies tristique nulla aliquet enim tortor at auctor. Vitae auctor eu augue ut. Vel turpis nunc eget lorem dolor sed viverra ipsum. Commodo nulla facilisi nullam vehicula ipsum a arcu cursus. Consequat nisl vel pretium lectus quam id leo in vitae. Enim facilisis gravida neque convallis a cras semper auctor neque. Fermentum leo vel orci porta non pulvinar neque laoreet suspendisse. Pretium vulputate sapien nec sagittis aliquam malesuada bibendum. Sit amet risus nullam eget. Sed ullamcorper morbi tincidunt ornare.</p>\n<p>Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet. Tristique sollicitudin nibh sit amet. Et tortor at risus viverra adipiscing at in tellus. Blandit turpis cursus in hac habitasse platea. Purus in massa tempor nec feugiat. Tortor dignissim convallis aenean et tortor at risus. Pellentesque diam volutpat commodo sed egestas. Sem nulla pharetra diam sit amet. Scelerisque felis imperdiet proin fermentum leo vel orci. Nulla malesuada pellentesque elit eget. Velit aliquet sagittis id consectetur purus ut faucibus. Vitae ultricies leo integer malesuada nunc vel. Duis at consectetur lorem donec massa sapien faucibus. Lacus luctus accumsan tortor posuere ac ut. Nunc mattis enim ut tellus elementum sagittis. Est ullamcorper eget nulla facilisi etiam dignissim. Dignissim diam quis enim lobortis scelerisque fermentum dui. Quis risus sed vulputate odio ut enim blandit. Aenean et tortor at risus viverra adipiscing at. Facilisis leo vel fringilla est ullamcorper eget.</p>\n</body>\n</html>","25","publish"),
("3","1544248719"," Eu volutpat odio facilisis mauris sit amet massa.","dipeshdesai","myAvatar (1).png","Chrome_Remote_Desktop_1512711101375.png","nature","Chrome,Nature,Image","<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Neque sodales ut etiam sit amet. Ut pharetra sit amet aliquam id diam maecenas ultricies. Volutpat commodo sed egestas egestas fringilla phasellus. Nec tincidunt praesent semper feugiat nibh sed pulvinar proin. Eget mauris pharetra et ultrices neque ornare. Vitae tortor condimentum lacinia quis. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium. In mollis nunc sed id. Sit amet est placerat in egestas. Posuere ac ut consequat semper viverra nam libero justo laoreet. Laoreet sit amet cursus sit amet dictum. Semper feugiat nibh sed pulvinar. Viverra maecenas accumsan lacus vel facilisis volutpat est.</p>\n<p>Pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Nulla aliquet enim tortor at auctor urna nunc id cursus. Sapien faucibus et molestie ac feugiat sed. Massa tempor nec feugiat nisl pretium fusce id. Ipsum suspendisse ultrices gravida dictum fusce. Ultricies mi eget mauris pharetra et ultrices. Ut pharetra sit amet aliquam id diam maecenas ultricies mi. Convallis tellus id interdum velit laoreet. Facilisis magna etiam tempor orci eu lobortis elementum. Volutpat commodo sed egestas egestas fringilla phasellus. A condimentum vitae sapien pellentesque habitant morbi tristique senectus et.</p>\n<p>Vel orci porta non pulvinar neque laoreet suspendisse interdum. Morbi tristique senectus et netus et malesuada fames ac. Commodo odio aenean sed adipiscing diam donec adipiscing. Metus vulputate eu scelerisque felis imperdiet proin. Vitae auctor eu augue ut lectus arcu bibendum at varius. Sed arcu non odio euismod lacinia at quis risus. Pellentesque elit eget gravida cum sociis. Tristique sollicitudin nibh sit amet commodo nulla facilisi nullam. Sem fringilla ut morbi tincidunt augue interdum velit euismod in. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris ultrices. Id aliquet risus feugiat in ante metus dictum. Ut morbi tincidunt augue interdum velit euismod in pellentesque. Quis ipsum suspendisse ultrices gravida dictum fusce ut placerat. Fermentum leo vel orci porta non pulvinar. Purus faucibus ornare suspendisse sed nisi lacus. In aliquam sem fringilla ut morbi tincidunt augue interdum. Ac tincidunt vitae semper quis lectus nulla at volutpat diam. Aenean euismod elementum nisi quis eleifend quam. Eu feugiat pretium nibh ipsum consequat nisl vel. Leo a diam sollicitudin tempor id eu nisl nunc mi.</p>\n</body>\n</html>","0","publish"),
("4","1544248876","Sit amet luctus venenatis lectus magna fringilla urna.","yashdesai","core-0001-fdbffe842dc8d1e8012dcc8ac82b0b43.l_group.jpg","Ascend-VR-prototype.jpg","education","Prototype,Education","<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Netus et malesuada fames ac. Dapibus ultrices in iaculis nunc. Vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean. Tellus in hac habitasse platea dictumst vestibulum rhoncus. Tellus molestie nunc non blandit massa enim. Orci eu lobortis elementum nibh tellus molestie nunc. Viverra suspendisse potenti nullam ac tortor vitae purus faucibus ornare. At elementum eu facilisis sed. Et molestie ac feugiat sed lectus vestibulum. Tellus rutrum tellus pellentesque eu tincidunt tortor aliquam. Non diam phasellus vestibulum lorem sed risus ultricies tristique. Massa vitae tortor condimentum lacinia quis vel eros donec ac. Nisl nisi scelerisque eu ultrices vitae auctor eu augue.</p>\n<p>Sem viverra aliquet eget sit amet tellus. Porttitor massa id neque aliquam vestibulum morbi blandit. Vel eros donec ac odio tempor orci dapibus ultrices in. Sem fringilla ut morbi tincidunt augue interdum velit euismod. Arcu ac tortor dignissim convallis aenean et tortor at risus. Sit amet aliquam id diam maecenas ultricies. Ullamcorper velit sed ullamcorper morbi tincidunt. Scelerisque eleifend donec pretium vulputate sapien nec. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus faucibus. Malesuada pellentesque elit eget gravida cum sociis natoque. At urna condimentum mattis pellentesque. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus mauris. Sagittis orci a scelerisque purus semper eget duis. Faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis. Est lorem ipsum dolor sit. Velit egestas dui id ornare arcu odio ut sem nulla. Faucibus in ornare quam viverra. Nulla at volutpat diam ut venenatis tellus.</p>\n</body>\n</html>","0","publish"),
("5","1544249045","Purus faucibus ornare suspendisse sed nisi lacus sed viverra.","nddesai","photo3.png","crop.jpg","nature","nature, water, hills","<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Sit amet cursus sit amet dictum. Vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci. Augue mauris augue neque gravida. Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo. Urna et pharetra pharetra massa. Elementum tempus egestas sed sed risus. Bibendum ut tristique et egestas. Turpis egestas maecenas pharetra convallis posuere morbi leo. Eget mi proin sed libero. Lectus proin nibh nisl condimentum id venenatis a condimentum vitae. Dolor magna eget est lorem ipsum dolor sit amet. Erat pellentesque adipiscing commodo elit at imperdiet dui. Vitae congue eu consequat ac felis donec et odio. Suspendisse sed nisi lacus sed viverra tellus in hac habitasse.</p>\n<p>Turpis massa tincidunt dui ut ornare lectus sit. Pellentesque elit eget gravida cum sociis natoque. Augue mauris augue neque gravida in fermentum et sollicitudin. Dictum sit amet justo donec enim diam vulputate. Risus at ultrices mi tempus imperdiet. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Leo in vitae turpis massa sed elementum tempus egestas sed. Eu volutpat odio facilisis mauris sit amet. Rhoncus urna neque viverra justo nec. Sed nisi lacus sed viverra tellus in hac. Ut consequat semper viverra nam libero justo laoreet. Enim tortor at auctor urna nunc id. Sit amet nisl purus in mollis. Dis parturient montes nascetur ridiculus. Accumsan sit amet nulla facilisi morbi tempus iaculis urna id. Id cursus metus aliquam eleifend mi in nulla. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus.</p>\n</body>\n</html>","12","publish"),
("6","1544249313","Dignissim sodales ut eu sem integer vitae justo eget","yashdesai","core-0001-fdbffe842dc8d1e8012dcc8ac82b0b43.l_group.jpg","10065i898BB59D322D31E3.jpg","exam","Exam,Cyclone,Date","<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Dignissim sodales ut eu sem integer vitae justo eget. Lacinia at quis risus sed vulputate odio ut. Fames ac turpis egestas sed tempus urna. Mi in nulla posuere sollicitudin aliquam ultrices sagittis orci a. Sed risus pretium quam vulputate dignissim. Turpis cursus in hac habitasse platea. Elit ut aliquam purus sit amet luctus. Mauris ultrices eros in cursus turpis massa. Nascetur ridiculus mus mauris vitae. At varius vel pharetra vel turpis nunc eget. Massa vitae tortor condimentum lacinia quis vel eros donec ac. Id neque aliquam vestibulum morbi blandit cursus risus at ultrices. Blandit cursus risus at ultrices mi tempus. Turpis in eu mi bibendum neque. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Commodo viverra maecenas accumsan lacus vel facilisis volutpat est velit. Convallis posuere morbi leo urna molestie. Orci a scelerisque purus semper eget. Dui sapien eget mi proin sed libero enim sed.</p>\n</body>\n</html>","0","publish"),
("7","1544249561","Nibh nisl condimentum id venenatis a condimentum vitae sapien pellentesque","dipeshdesai","myAvatar (1).png","IMG_0997-800x400.jpg","application","Mobile,Application,Android App","<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Sit amet cursus sit amet dictum. Vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci. Augue mauris augue neque gravida. Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo. Urna et pharetra pharetra massa. Elementum tempus egestas sed sed risus. Bibendum ut tristique et egestas. Turpis egestas maecenas pharetra convallis posuere morbi leo. Eget mi proin sed libero. Lectus proin nibh nisl condimentum id venenatis a condimentum vitae. Dolor magna eget est lorem ipsum dolor sit amet. Erat pellentesque adipiscing commodo elit at imperdiet dui. Vitae congue eu consequat ac felis donec et odio. Suspendisse sed nisi lacus sed viverra tellus in hac habitasse.</p>\n<p>Turpis massa tincidunt dui ut ornare lectus sit. Pellentesque elit eget&nbsp;</p>\n</body>\n</html>","6","publish"),
("8","1544260824","First Post","yashdesai","core-0001-fdbffe842dc8d1e8012dcc8ac82b0b43.l_group.jpg","Ascend-VR-prototype.jpg","exam","Exam,VR","<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Hi there. it\'s my first post</p>\n</body>\n</html>","0","publish"),
("9","1544261001","My second post","yashdesai","core-0001-fdbffe842dc8d1e8012dcc8ac82b0b43.l_group.jpg","solar-powered-bitcoin-mining.jpg","technology","hi","<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Hi It\'s my second post</p>\n</body>\n</html>","0","publish"),
("10","1544261103","Third Post","yashdesai","core-0001-fdbffe842dc8d1e8012dcc8ac82b0b43.l_group.jpg","2f377c1300000578-3353212-image-a-7_1449693873570_opt.jpg","internet","Internet","<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>It\'s a third post</p>\n</body>\n</html>","22","publish");




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