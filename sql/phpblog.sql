-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2018 at 09:11 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `author`, `created_at`) VALUES
(11, 'My first post', 'This is a post', 'Wibblefish21', '2018-12-06 08:34:18'),
(12, 'My second post', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet, nisl in venenatis eleifend, lorem risus ultricies neque, at blandit ex magna eu est. Ut justo lectus, interdum ut nunc nec, tempus maximus erat. Donec vel eros tellus. Morbi eu odio posuere dui dictum rhoncus. Maecenas facilisis odio ac massa iaculis, sit amet malesuada purus mollis. Cras ac purus nec mi tincidunt dapibus ac pretium dui. Vestibulum at eleifend urna. Quisque molestie est sit amet mollis interdum. Maecenas volutpat, nisl quis lacinia gravida, elit massa fringilla sem, ac fermentum eros ligula non diam. Morbi a nunc varius, dictum tortor id, accumsan quam. Nam vehicula leo vel enim semper, consequat consequat ante luctus. Maecenas sit amet porta mauris. Aenean porta sollicitudin laoreet. Suspendisse id felis viverra, cursus velit a, condimentum nisl. In molestie, mauris pharetra sollicitudin semper, tortor massa vestibulum nibh, sit amet fermentum quam sem a magna.', 'Wibblefish21', '2018-12-06 08:35:02'),
(13, 'Another one', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet, nisl in venenatis eleifend, lorem risus ultricies neque, at blandit ex magna eu est. Ut justo lectus, interdum ut nunc nec, tempus maximus erat. Donec vel eros tellus. Morbi eu odio posuere dui dictum rhoncus. Maecenas facilisis odio ac massa iaculis, sit amet malesuada purus mollis. Cras ac purus nec mi tincidunt dapibus ac pretium dui. Vestibulum at eleifend urna. Quisque molestie est sit amet mollis interdum. Maecenas volutpat, nisl quis lacinia gravida, elit massa fringilla sem, ac fermentum eros ligula non diam. Morbi a nunc varius, dictum tortor id, accumsan quam. Nam vehicula leo vel enim semper, consequat consequat ante luctus. Maecenas sit amet porta mauris. Aenean porta sollicitudin laoreet. Suspendisse id felis viverra, cursus velit a, condimentum nisl. In molestie, mauris pharetra sollicitudin semper, tortor massa vestibulum nibh, sit amet fermentum quam sem a magna.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet, nisl in venenatis eleifend, lorem risus ultricies neque, at blandit ex magna eu est. Ut justo lectus, interdum ut nunc nec, tempus maximus erat. Donec vel eros tellus. Morbi eu odio posuere dui dictum rhoncus. Maecenas facilisis odio ac massa iaculis, sit amet malesuada purus mollis. Cras ac purus nec mi tincidunt dapibus ac pretium dui. Vestibulum at eleifend urna. Quisque molestie est sit amet mollis interdum. Maecenas volutpat, nisl quis lacinia gravida, elit massa fringilla sem, ac fermentum eros ligula non diam. Morbi a nunc varius, dictum tortor id, accumsan quam. Nam vehicula leo vel enim semper, consequat consequat ante luctus. Maecenas sit amet porta mauris. Aenean porta sollicitudin laoreet. Suspendisse id felis viverra, cursus velit a, condimentum nisl. In molestie, mauris pharetra sollicitudin semper, tortor massa vestibulum nibh, sit amet fermentum quam sem a magna.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet, nisl in venenatis eleifend, lorem risus ultricies neque, at blandit ex magna eu est. Ut justo lectus, interdum ut nunc nec, tempus maximus erat. Donec vel eros tellus. Morbi eu odio posuere dui dictum rhoncus. Maecenas facilisis odio ac massa iaculis, sit amet malesuada purus mollis. Cras ac purus nec mi tincidunt dapibus ac pretium dui. Vestibulum at eleifend urna. Quisque molestie est sit amet mollis interdum. Maecenas volutpat, nisl quis lacinia gravida, elit massa fringilla sem, ac fermentum eros ligula non diam. Morbi a nunc varius, dictum tortor id, accumsan quam. Nam vehicula leo vel enim semper, consequat consequat ante luctus. Maecenas sit amet porta mauris. Aenean porta sollicitudin laoreet. Suspendisse id felis viverra, cursus velit a, condimentum nisl. In molestie, mauris pharetra sollicitudin semper, tortor massa vestibulum nibh, sit amet fermentum quam sem a magna.', 'Wibblefish21', '2018-12-06 08:35:15'),
(17, 'aaa', 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', 'Wibblefish21', '2018-12-07 07:25:52'),
(18, 'Even another post', 'Vivamus vitae risus erat. Aenean vel felis eget elit interdum laoreet. Nunc sed augue lorem. Praesent ipsum nisi, ornare vitae tellus quis, euismod suscipit sapien. Aenean gravida bibendum quam, id consequat neque aliquet nec. Duis porta, sem a elementum accumsan, lectus odio porttitor erat, pulvinar dapibus lorem lorem a nibh. Praesent eu lectus enim. Ut lobortis commodo nulla, quis sodales velit blandit sit amet. Phasellus vulputate diam eu arcu lacinia egestas ac a turpis. Nulla varius egestas leo.\r\n\r\nNullam pellentesque sit amet lacus vel egestas. Morbi mollis eros ut dolor ultrices, in aliquet velit accumsan. Cras porttitor libero egestas dui facilisis luctus. Mauris id vulputate metus, mollis gravida elit. Etiam gravida rhoncus dui, ac elementum magna. Aliquam facilisis neque sed urna commodo ultrices. Vivamus quis lectus eleifend, tincidunt ex ultrices, condimentum mi. Sed facilisis nulla non mauris fermentum malesuada. Quisque tincidunt, odio quis ornare gravida, mi ipsum consectetur risus, eu lobortis dui erat id tellus. Mauris vitae velit ut mi mollis eleifend in id felis. Maecenas posuere scelerisque ante, non efficitur tortor posuere vehicula. Pellentesque sollicitudin velit ultricies, mollis neque at, pellentesque odio. Cras sed luctus lectus. Nulla malesuada lectus est, a dictum nisl pellentesque accumsan. Nullam vel elementum orci.\r\n\r\nVestibulum pulvinar dui fringilla, venenatis diam vel, laoreet dolor. Proin dictum quis justo et condimentum. In hac habitasse platea dictumst. Vivamus venenatis leo commodo libero blandit, et tempor mauris rutrum. Proin luctus, eros quis semper porttitor, orci tellus mattis nisl, pharetra tempor eros diam at orci. Cras mollis ligula vel luctus lacinia. Donec at rhoncus magna.', 'Wibblefish21', '2018-12-07 07:26:43'),
(19, 'A cool post', 'Vivamus vitae risus erat. Aenean vel felis eget elit interdum laoreet. Nunc sed augue lorem. Praesent ipsum nisi, ornare vitae tellus quis, euismod suscipit sapien. Aenean gravida bibendum quam, id consequat neque aliquet nec. Duis porta, sem a elementum accumsan, lectus odio porttitor erat, pulvinar dapibus lorem lorem a nibh. Praesent eu lectus enim. Ut lobortis commodo nulla, quis sodales velit blandit sit amet. Phasellus vulputate diam eu arcu lacinia egestas ac a turpis. Nulla varius egestas leo. Nullam pellentesque sit amet lacus vel egestas. Morbi mollis eros ut dolor ultrices, in aliquet velit accumsan. Cras porttitor libero egestas dui facilisis luctus. Mauris id vulputate metus, mollis gravida elit. Etiam gravida rhoncus dui, ac elementum magna. Aliquam facilisis neque sed urna commodo ultrices. Vivamus quis lectus eleifend, tincidunt ex ultrices, condimentum mi. Sed facilisis nulla non mauris fermentum malesuada. Quisque tincidunt, odio quis ornare gravida, mi ipsum consectetur risus, eu lobortis dui erat id tellus. Mauris vitae velit ut mi mollis eleifend in id felis. Maecenas posuere scelerisque ante, non efficitur tortor posuere vehicula. Pellentesque sollicitudin velit ultricies, mollis neque at, pellentesque odio. Cras sed luctus lectus. Nulla malesuada lectus est, a dictum nisl pellentesque accumsan. Nullam vel elementum orci. Vestibulum pulvinar dui fringilla, venenatis diam vel, laoreet dolor. Proin dictum quis justo et condimentum. In hac habitasse platea dictumst. Vivamus venenatis leo commodo libero blandit, et tempor mauris rutrum. Proin luctus, eros quis semper porttitor, orci tellus mattis nisl, pharetra tempor eros diam at orci. Cras mollis ligula vel luctus lacinia. Donec at rhoncus magna.', 'John Doe', '2018-12-07 07:43:32'),
(20, 'BBBB', 'Vivamus vitae risus erat. Aenean vel felis eget elit interdum laoreet. Nunc sed augue lorem. Praesent ipsum nisi, ornare vitae tellus quis, euismod suscipit sapien. Aenean gravida bibendum quam, id consequat neque aliquet nec. Duis porta, sem a elementum accumsan, lectus odio porttitor erat, pulvinar dapibus lorem lorem a nibh. Praesent eu lectus enim. Ut lobortis commodo nulla, quis sodales velit blandit sit amet. Phasellus vulputate diam eu arcu lacinia egestas ac a turpis. Nulla varius egestas leo. Nullam pellentesque sit amet lacus vel egestas. Morbi mollis eros ut dolor ultrices, in aliquet velit accumsan. Cras porttitor libero egestas dui facilisis luctus. Mauris id vulputate metus, mollis gravida elit. Etiam gravida rhoncus dui, ac elementum magna. Aliquam facilisis neque sed urna commodo ultrices. Vivamus quis lectus eleifend, tincidunt ex ultrices, condimentum mi. Sed facilisis nulla non mauris fermentum malesuada. Quisque tincidunt, odio quis ornare gravida, mi ipsum consectetur risus, eu lobortis dui erat id tellus. Mauris vitae velit ut mi mollis eleifend in id felis. Maecenas posuere scelerisque ante, non efficitur tortor posuere vehicula. Pellentesque sollicitudin velit ultricies, mollis neque at, pellentesque odio. Cras sed luctus lectus. Nulla malesuada lectus est, a dictum nisl pellentesque accumsan. Nullam vel elementum orci. Vestibulum pulvinar dui fringilla, venenatis diam vel, laoreet dolor. Proin dictum quis justo et condimentum. In hac habitasse platea dictumst. Vivamus venenatis leo commodo libero blandit, et tempor mauris rutrum. Proin luctus, eros quis semper porttitor, orci tellus mattis nisl, pharetra tempor eros diam at orci. Cras mollis ligula vel luctus lacinia. Donec at rhoncus magna.\r\n\r\nVivamus vitae risus erat. Aenean vel felis eget elit interdum laoreet. Nunc sed augue lorem. Praesent ipsum nisi, ornare vitae tellus quis, euismod suscipit sapien. Aenean gravida bibendum quam, id consequat neque aliquet nec. Duis porta, sem a elementum accumsan, lectus odio porttitor erat, pulvinar dapibus lorem lorem a nibh. Praesent eu lectus enim. Ut lobortis commodo nulla, quis sodales velit blandit sit amet. Phasellus vulputate diam eu arcu lacinia egestas ac a turpis. Nulla varius egestas leo. Nullam pellentesque sit amet lacus vel egestas. Morbi mollis eros ut dolor ultrices, in aliquet velit accumsan. Cras porttitor libero egestas dui facilisis luctus. Mauris id vulputate metus, mollis gravida elit. Etiam gravida rhoncus dui, ac elementum magna. Aliquam facilisis neque sed urna commodo ultrices. Vivamus quis lectus eleifend, tincidunt ex ultrices, condimentum mi. Sed facilisis nulla non mauris fermentum malesuada. Quisque tincidunt, odio quis ornare gravida, mi ipsum consectetur risus, eu lobortis dui erat id tellus. Mauris vitae velit ut mi mollis eleifend in id felis. Maecenas posuere scelerisque ante, non efficitur tortor posuere vehicula. Pellentesque sollicitudin velit ultricies, mollis neque at, pellentesque odio. Cras sed luctus lectus. Nulla malesuada lectus est, a dictum nisl pellentesque accumsan. Nullam vel elementum orci. Vestibulum pulvinar dui fringilla, venenatis diam vel, laoreet dolor. Proin dictum quis justo et condimentum. In hac habitasse platea dictumst. Vivamus venenatis leo commodo libero blandit, et tempor mauris rutrum. Proin luctus, eros quis semper porttitor, orci tellus mattis nisl, pharetra tempor eros diam at orci. Cras mollis ligula vel luctus lacinia. Donec at rhoncus magna.', 'John Smith', '2018-12-07 07:43:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idUsers` int(11) NOT NULL,
  `uidUsers` tinytext NOT NULL,
  `emailUsers` tinytext NOT NULL,
  `pwdUsers` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUsers`, `uidUsers`, `emailUsers`, `pwdUsers`) VALUES
(1, 'Wibblefish21', 'sean.enzocat@gmail.com', '$2y$10$7GdvaTUCd.cfgrMtazd7R.VlJQRbaBYtIhZoUFFjPxV20TYDuypSS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsers`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUsers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
