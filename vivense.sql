-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 Mar 2021, 16:20:41
-- Sunucu sürümü: 10.4.16-MariaDB
-- PHP Sürümü: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `odev5`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_uniqid` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `category_name` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`category_id`, `category_uniqid`, `category_name`) VALUES
(1, '603539b085b7a', 'Category 1'),
(2, '603539b085b7a', 'Category 2'),
(3, '60355d8el1b7a', 'Category 3'),
(10, '603539b085b7a', 'Category 1'),
(11, '603539b085b7a', 'Category 2'),
(12, '603539b085b7a', 'Category 1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_uniqid` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `product_name` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `product_price` float(9,2) NOT NULL,
  `product_description` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `product_content` text COLLATE utf8_turkish_ci NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`product_id`, `product_uniqid`, `product_name`, `product_price`, `product_description`, `product_content`, `category_id`) VALUES
(1, '4b3403665fea2', 'Tamphomedd', 98.55, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet nisl porttitor nunc efficitur egestas ac sed elit. Vestibulum velit diam, viverra a vestibulum sit amet, euismod eu dui.', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n	<li>Aliquam tincidunt mauris eu risus.</li>\r\n	<li>Vestibulum auctor dapibus neque.</li>\r\n</ul>\r\n\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n', 1),
(2, '603539c7c4758', 'Lam-Dox', 99.55, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet nisl porttitor nunc efficitur egestas ac sed elit. Vestibulum velit diam, viverra a vestibulum sit amet, euismod eu dui.', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>\r\n	<li>Aliquam tincidunt mauris eu risus.</li>\r\n	<li>Vestibulum auctor dapibus neque.</li>\r\n</ul>\r\n\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n', 3),
(3, '603539ffb7ff5', 'Roundfix', 100.55, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet nisl porttitor nunc efficitur egestas ac sed elit. Vestibulum velit diam, viverra a vestibulum sit amet, euismod eu dui.', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p><ul><li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li>Aliquam tincidunt mauris eu risus.</li><li>Vestibulum auctor dapibus neque.</li></ul><p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 1),
(5, '435539ffbab3d', 'Teresa', 88.75, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet nisl porttitor nunc efficitur egestas ac sed elit. Vestibulum velit diam, viverra a vestibulum sit amet, euismod eu dui.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet nisl porttitor nunc efficitur egestas ac sed elit. Vestibulum velit diam, viverra a vestibulum sit amet, euismod eu dui.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet nisl porttitor nunc efficitur egestas ac sed elit. Vestibulum velit diam, viverra a vestibulum sit amet, euismod eu dui.</p>\r\n', 1),
(6, '1b3408ff5g2a6', 'New Cost', 99.25, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet nisl porttitor nunc efficitur egestas ac sed elit. Vestibulum velit diam, viverra a vestibulum sit amet, euismod eu dui.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet nisl porttitor nunc efficitur egestas ac sed elit. Vestibulum velit diam, viverra a vestibulum sit amet, euismod eu dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet nisl porttitor nunc efficitur egestas ac sed elit. Vestibulum velit diam, viverra a vestibulum sit amet, euismod eu dui.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet nisl porttitor nunc efficitur egestas ac sed elit. Vestibulum velit diam, viverra a vestibulum sit amet, euismod eu dui.</p>\r\n', 2),
(22, '2t8403665fea6', 'Halosana', 91.55, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet nisl porttitor nunc efficitur egestas ac sed elit. Vestibulum velit diam, viverra a vestibulum sit amet, euismod eu dui.', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p><ul><li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li>Aliquam tincidunt mauris eu risus.</li><li>Vestibulum auctor dapibus neque.</li></ul><p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>', 0),
(23, '8g6539c7c4758', 'Doxi-Pure', 99.55, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet nisl porttitor nunc efficitur egestas ac sed elit. Vestibulum velit diam, viverra a vestibulum sit amet, euismod eu dui.', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p><ul><li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li>Aliquam tincidunt mauris eu risus.</li><li>Vestibulum auctor dapibus neque.</li></ul><p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>', 0),
(24, '9g5539ffb7af5', 'Zaynder', 120.55, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet nisl porttitor nunc efficitur egestas ac sed elit. Vestibulum velit diam, viverra a vestibulum sit amet, euismod eu dui.', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p><ul><li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li>Aliquam tincidunt mauris eu risus.</li><li>Vestibulum auctor dapibus neque.</li></ul><p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `user_password` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`) VALUES
(1, 'ali', '123456'),
(2, 'ahmet', '123456');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
