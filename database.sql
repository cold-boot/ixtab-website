-- Adminer 4.2.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `custompages`;
CREATE TABLE `custompages` (
  `pageid` int(11) NOT NULL AUTO_INCREMENT,
  `shownavlink` int(11) NOT NULL DEFAULT '0',
  `safename` text NOT NULL,
  `navname` text NOT NULL,
  `pagetitle` text NOT NULL,
  `pagecontent` longtext NOT NULL,
  `pagedescription` mediumtext NOT NULL,
  PRIMARY KEY (`pageid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `custompages` (`pageid`, `shownavlink`, `safename`, `navname`, `pagetitle`, `pagecontent`, `pagedescription`) VALUES
(1,	1,	'home',	'Home',	'Software Solutions',	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in aliquet neque, quis volutpat enim. Phasellus in turpis luctus, convallis ligula vitae, volutpat mauris. Sed eu tortor tellus. Sed ac molestie magna, vulputate pulvinar nisi. Duis vel nulla semper, eleifend odio non, rutrum libero. Integer finibus, dui sit amet volutpat faucibus, odio ante dapibus neque, ac mollis metus eros in nibh. Nullam fermentum elementum pulvinar. Cras ornare consectetur gravida. Duis ac viverra leo, ac molestie elit. In lobortis orci dui, at pretium nisl pellentesque et. Quisque a dapibus magna. Fusce mollis ullamcorper lacinia. \r\nMaecenas consequat vehicula turpis non consequat. Phasellus at vehicula justo. Praesent id tellus ut urna hendrerit posuere. Nam euismod rutrum sapien at suscipit. Duis tempus pretium ultricies. In rhoncus id eros quis egestas. Morbi fringilla, arcu laoreet facilisis dignissim, dui dui commodo libero, eu luctus sem ante in magna. Nam efficitur volutpat justo et ultrices. Etiam ullamcorper volutpat enim, quis pellentesque neque lobortis ac. Aenean iaculis quam nec ante efficitur posuere. Donec non nulla arcu. Sed ut magna lacus. Pellentesque in erat finibus eros laoreet condimentum eget sed nunc. Praesent lacinia vehicula purus vitae sagittis. \r\nSuspendisse potenti. Ut at turpis sed mauris fermentum viverra. Nullam turpis nisl, porttitor ut sollicitudin ut, blandit at risus. Duis pharetra mi facilisis neque posuere dapibus. Aenean lorem urna, pretium sit amet enim id, gravida iaculis elit. Fusce at volutpat lectus. Sed fringilla ligula nec nibh dictum porttitor. Nam id venenatis quam. Nunc lobortis facilisis ipsum, ut placerat felis vestibulum id. Proin eget ultricies risus. \r\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ultricies luctus venenatis. In consectetur nibh id gravida pharetra. Proin venenatis dignissim magna, sit amet tincidunt eros porta mattis. Aenean tempus nisl eget dui accumsan ultricies. Ut vulputate id urna ut consequat. \r\nQuisque tincidunt facilisis egestas. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur malesuada ante justo, in egestas dolor porta vitae. Nam malesuada fringilla velit, bibendum scelerisque urna interdum eu. Maecenas fringilla enim a velit cursus finibus. Duis viverra, massa at aliquet lacinia, ligula massa facilisis massa, vitae suscipit mi odio at dolor. Curabitur viverra ligula at dui convallis ornare. ',	'IXTAB Innovations'),
(2,	1,	'aboutus',	'About',	'About Us',	'To be updated',	'TBA');

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `employeeid` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` text NOT NULL,
  `shortname` text NOT NULL,
  `username` text NOT NULL,
  `showportfolio` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`employeeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `sidebars`;
CREATE TABLE `sidebars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `show` int(11) NOT NULL DEFAULT '1',
  `name` text NOT NULL,
  `title` text NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `sidebars` (`id`, `show`, `name`, `title`, `content`) VALUES
(1,	1,	'projects',	'Our Projects',	'To be updated. Please check back shortly!');

-- 2016-11-08 18:15:50
