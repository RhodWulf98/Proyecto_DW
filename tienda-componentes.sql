-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2022 a las 05:46:38
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda-componentes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '25f9e794323b453885f5181f1b624d0b', '2017-01-24 16:21:18', '07-06-2022 12:40:17 PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'MOBOS', 'Mobos (Motherboards))\r\nTamaños ATX y minATX, para intel y amd.', '2022-06-07 16:27:29', '08-06-2022 11:08:35 AM'),
(8, 'PCs', 'Escritorio y portatiles', '2022-06-07 16:27:51', '08-06-2022 11:09:02 AM'),
(9, 'RAM', 'DDR4 y DDR5', '2022-06-07 16:28:32', NULL),
(11, 'CPU', 'Procesadores', '2022-06-08 03:06:01', '08-06-2022 11:07:49 AM'),
(12, 'GPU', 'Tarjetas gráficas AMD, Nvidia, Radeon y, proximamente, ¡Intel!', '2022-06-08 16:07:33', '08-06-2022 11:08:49 AM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(21, 7, 13, 'Fatal1ty AB350 Gaming K4', 'ASROCK', 2500, 3000, '<b>IDEAL PARA GAMING</b>', 'Fatal1ty AB350 Gaming K4(M1).png', 'Fatal1ty AB350 Gaming K4(M2).png', 'Fatal1ty AB350 Gaming K4(M5).png', 99, 'En Stock', '2022-06-07 17:44:53', NULL),
(22, 11, 19, 'AMD Ryzen™ 5 3600', 'AMD', 3099, 3100, '<div class=\"field field--name-platform field--type-list-string field--label-inline\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px 15px; float: left; width: 440.734px; font-weight: bold; -webkit-box-flex: 0; flex: 0 0 33.3333%; min-height: 1px; max-width: 33.3333%; color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(225, 225, 227);\"><div class=\"field__label\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left; display: inline-block; overflow-wrap: break-word; word-break: break-word; hyphens: auto;\">Plataforma</div><div class=\"field__items\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left;\"><div class=\"field__item\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: normal;\">Boxed Processor</div></div></div><div class=\"field field--name-product-type field--type-entity-reference field--label-inline\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px 15px; float: left; width: 440.734px; font-weight: bold; -webkit-box-flex: 0; flex: 0 0 33.3333%; min-height: 1px; max-width: 33.3333%; color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(225, 225, 227);\"><div class=\"field__label\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left; display: inline-block; overflow-wrap: break-word; word-break: break-word; hyphens: auto;\">Familia de productos</div><div class=\"field__item\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; font-weight: normal;\">AMD Ryzen™ Processors</div></div><div class=\"field field--name-product-type field--type-entity-reference field--label-inline\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px 15px; float: left; width: 440.734px; font-weight: bold; -webkit-box-flex: 0; flex: 0 0 33.3333%; min-height: 1px; max-width: 33.3333%; color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(225, 225, 227);\"><div class=\"field__label\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left; display: inline-block; overflow-wrap: break-word; word-break: break-word; hyphens: auto;\">Línea de productos</div><div class=\"field__item\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; font-weight: normal;\">AMD Ryzen™ 5 Desktop Processors</div></div><div class=\"field field--name-field-cpu-core-count field--type-integer field--label-inline\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px 15px; float: left; width: 440.734px; font-weight: bold; -webkit-box-flex: 0; flex: 0 0 33.3333%; min-height: 1px; max-width: 33.3333%; color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(225, 225, 227);\"><div class=\"field__label\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left; display: inline-block; overflow-wrap: break-word; word-break: break-word; hyphens: auto;\"># de núcleos de CPU</div><div class=\"field__item\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; font-weight: normal;\">6</div></div><div class=\"field field--name-field-thread-count field--type-integer field--label-inline\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px 15px; float: left; width: 440.734px; font-weight: bold; -webkit-box-flex: 0; flex: 0 0 33.3333%; min-height: 1px; max-width: 33.3333%; color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(225, 225, 227);\"><div class=\"field__label\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left; display: inline-block; overflow-wrap: break-word; word-break: break-word; hyphens: auto;\"># de hilos</div><div class=\"field__item\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; font-weight: normal;\">12</div></div><div class=\"field field--name-field-max-cpu-clock-speed field--type-integer field--label-inline\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px 15px; float: left; width: 440.734px; font-weight: bold; -webkit-box-flex: 0; flex: 0 0 33.3333%; min-height: 1px; max-width: 33.3333%; color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(225, 225, 227);\"><div class=\"field__label data-spec-footnote-MROM-001\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left; display: inline-block; overflow-wrap: break-word; word-break: break-word; hyphens: auto;\">Reloj de aumento máx.</div><div content=\"4200\" class=\"field__item\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; font-weight: normal;\">Hasta 4.2GHz</div></div><div class=\"field field--name-field-cpu-clock-speed field--type-integer field--label-inline\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px 15px; float: left; width: 440.734px; font-weight: bold; -webkit-box-flex: 0; flex: 0 0 33.3333%; min-height: 1px; max-width: 33.3333%; color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(225, 225, 227);\"><div class=\"field__label\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left; display: inline-block; overflow-wrap: break-word; word-break: break-word; hyphens: auto;\">Reloj base</div><div content=\"3600\" class=\"field__item\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; font-weight: normal;\">3.6GHz</div></div><div class=\"field field--name-field-total-l1-cache field--type-integer field--label-inline\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px 15px; float: left; width: 440.734px; font-weight: bold; -webkit-box-flex: 0; flex: 0 0 33.3333%; min-height: 1px; max-width: 33.3333%; color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(225, 225, 227);\"><div class=\"field__label\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left; display: inline-block; overflow-wrap: break-word; word-break: break-word; hyphens: auto;\">Caché L1 total</div><div content=\"384\" class=\"field__item\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; font-weight: normal;\">384KB</div></div><div class=\"field field--name-field-total-l2-cache field--type-integer field--label-inline\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px 15px; float: left; width: 440.734px; font-weight: bold; -webkit-box-flex: 0; flex: 0 0 33.3333%; min-height: 1px; max-width: 33.3333%; color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(225, 225, 227);\"><div class=\"field__label\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left; display: inline-block; overflow-wrap: break-word; word-break: break-word; hyphens: auto;\">Caché L2 total</div><div content=\"3072\" class=\"field__item\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; font-weight: normal;\">3MB</div></div><div class=\"field field--name-field-total-l3-cache field--type-integer field--label-inline\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px 15px; float: left; width: 440.734px; font-weight: bold; -webkit-box-flex: 0; flex: 0 0 33.3333%; min-height: 1px; max-width: 33.3333%; color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(225, 225, 227);\"><div class=\"field__label\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left; display: inline-block; overflow-wrap: break-word; word-break: break-word; hyphens: auto;\">Caché L3 total</div><div content=\"32768\" class=\"field__item\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; font-weight: normal;\">32MB</div></div><div class=\"field field--name-field-default-tdp field--type-string field--label-inline\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px 15px; float: left; width: 440.734px; font-weight: bold; -webkit-box-flex: 0; flex: 0 0 33.3333%; min-height: 1px; max-width: 33.3333%; color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(225, 225, 227);\"><div class=\"field__label data-spec-footnote-ROM-06a\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left; display: inline-block; overflow-wrap: break-word; word-break: break-word; hyphens: auto;\">TDP/TDP predeterminado</div><div class=\"field__item\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; font-weight: normal;\">65W</div></div><div class=\"field field--name-field-cmos field--type-list-string field--label-inline\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px 15px; float: left; width: 440.734px; font-weight: bold; -webkit-box-flex: 0; flex: 0 0 33.3333%; min-height: 1px; max-width: 33.3333%; color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(225, 225, 227);\"><div class=\"field__label\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left; display: inline-block; overflow-wrap: break-word; word-break: break-word; hyphens: auto;\">Processor Technology for CPU Cores</div><div class=\"field__item\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; font-weight: normal;\">TSMC 7nm FinFET</div></div><div class=\"field field--name-field-unlocked field--type-list-string field--label-inline\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px 15px; float: left; width: 440.734px; font-weight: bold; -webkit-box-flex: 0; flex: 0 0 33.3333%; min-height: 1px; max-width: 33.3333%; color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(225, 225, 227);\"><div class=\"field__label data-spec-footnote-GD-26\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left; display: inline-block; overflow-wrap: break-word; word-break: break-word; hyphens: auto;\">Desbloqueados&nbsp;<button class=\"spec-footnote-link\" data-toggle=\"tooltip\" data-delay=\"{&quot;hide&quot;: 500}\" data-html=\"true\" data-placement=\"bottom\" title=\"\" data-original-title=\"<p>La garantía del producto AMD no cubre los daños ocasionados por overclocking, incluso si esta función se activa mediante hardware o software de AMD. GD-26.</p>\" style=\"padding: 0px; color: rgb(0, 112, 201); font: inherit; overflow: visible; transition: all 0.2s ease 0s; border-width: initial !important; border-style: none !important; border-color: initial !important;\"><span class=\"fas fa-info-circle\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-font-smoothing: antialiased; display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; text-rendering: auto; line-height: 1; font-family: &quot;Font Awesome 5 Pro&quot;;\"></span></button></div><div class=\"field__item\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; font-weight: normal;\">Sí</div></div><div class=\"field field--name-field-socket field--type-list-string field--label-inline\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px 15px; float: left; width: 440.734px; font-weight: bold; -webkit-box-flex: 0; flex: 0 0 33.3333%; min-height: 1px; max-width: 33.3333%; color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(225, 225, 227);\"><div class=\"field__label\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left; display: inline-block; overflow-wrap: break-word; word-break: break-word; hyphens: auto;\">CPU Socket</div><div class=\"field__items\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left;\"><div class=\"field__item\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: normal;\">AM4</div></div></div><div class=\"field field--name-field-thermal-solution field--type-string field--label-inline\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px 15px; float: left; width: 440.734px; font-weight: bold; -webkit-box-flex: 0; flex: 0 0 33.3333%; min-height: 1px; max-width: 33.3333%; color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(225, 225, 227);\"><div class=\"field__label\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left; display: inline-block; overflow-wrap: break-word; word-break: break-word; hyphens: auto;\">Solución térmica (PIB)</div><div class=\"field__item\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; font-weight: normal;\">Wraith Stealth</div></div><div class=\"field field--name-field-thermal-solution-mpk field--type-string field--label-inline\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px 15px; float: left; width: 440.734px; font-weight: bold; -webkit-box-flex: 0; flex: 0 0 33.3333%; min-height: 1px; max-width: 33.3333%; color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(225, 225, 227);\"><div class=\"field__label\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left; display: inline-block; overflow-wrap: break-word; word-break: break-word; hyphens: auto;\">Solución térmica (MPK)</div><div class=\"field__item\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; font-weight: normal;\">Wraith Stealth</div></div><div class=\"field field--name-field-max-temps field--type-decimal field--label-inline\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px 15px; float: left; width: 440.734px; font-weight: bold; -webkit-box-flex: 0; flex: 0 0 33.3333%; min-height: 1px; max-width: 33.3333%; color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(225, 225, 227);\"><div class=\"field__label\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left; display: inline-block; overflow-wrap: break-word; word-break: break-word; hyphens: auto;\">Temp. máx.</div><div content=\"95.00\" class=\"field__item\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; font-weight: normal;\">95°C</div></div><div class=\"field field--name-field-launch-date field--type-string field--label-inline\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px 15px; float: left; width: 440.734px; font-weight: bold; -webkit-box-flex: 0; flex: 0 0 33.3333%; min-height: 1px; max-width: 33.3333%; color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(225, 225, 227);\"><div class=\"field__label\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; float: left; display: inline-block; overflow-wrap: break-word; word-break: break-word; hyphens: auto;\">Fecha de lanzamiento</div><div class=\"field__item\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0.5em 0px 0px; font-weight: normal;\">7/7/2019</div></div>', '1.jpg', 'R.jfif', '238593-ryzen-5-pib-left-facing-1260x709.webp', 99, 'En Stock', '2022-06-08 03:09:03', NULL),
(23, 9, 17, 'HyperX RAM Fury 8GB 2666Mhz DDR4 CL16 UDIMM (HX426C16FB3/8)', 'Hyper X', 700, 700, '<br>', 'RAM 1.png', 'RAM 2.png', 'RAM 3.png', 99, 'Fuera de Stock', '2022-06-08 16:01:31', NULL),
(24, 11, 20, 'Intel Core i5-9600KF Procesador de Escritorio de 6 núcleos de hasta 4.6 GHz Turbo Desbloqueado sin gráficos de procesador LGA1151 Serie 300 95W', 'INTEL', 5085, 5085, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\"><li><span class=\"a-list-item\"> 6 núcleos/6 hilos; temperatura de conexión: 100 °C  </span></li><li><span class=\"a-list-item\"> Frecuencia turbo máxima de 3.70 GHz hasta 4.60 GHz/caché de 9 MB  </span></li><li><span class=\"a-list-item\"> Compatible solo con tarjetas madre basadas en chipsets Intel serie 300. Velocidad de bus: 8 GT/s  </span></li><li><span class=\"a-list-item\"> GPU discreta: sin gráficos de procesador  </span></li><li><span class=\"a-list-item\"> Intel Memoria Optane compatible  </span></li><li><span class=\"a-list-item\">\r\n Ancho máximo de banda de memoria = 41.6 GB/s. Máximo de canales de \r\nmemoria = 2. Tamaño máximo de memoria (dependiendo del tipo de memoria) \r\n128 GB  </span></li></ul>', '1.png', '2.png', '3.png', 99, 'En Stock', '2022-06-09 02:37:29', NULL),
(25, 12, 21, 'Asus Tarjeta Gráfica Nvidia GeForce RTX 3060 V2 Edición OC, ROG-STRIX-RTX3060-O12G-V2-GAMING, 12GB GDDR6, HDMI/DP, Ventilador Axial-Tech, Slot 2.7, Super Alloy Power II', 'NVIDIA', 11551, 11551, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: rgb(15, 17, 17); padding: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Multiprocesadores NVIDIA Ampere Streaming Multiprocesadores: los componentes de la GPU más rápida y eficiente del mundo, el nuevo Ampere SM ofrece 2 veces el rendimiento FP32 y una eficiencia energética mejorada.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Núcleos RT de 2ª generación: Experimente 2 veces el rendimiento de los núcleos RT de 1ª generación, además de RT simultánea y sombreado para un nivel completamente nuevo de rendimiento de trazado de rayos.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Núcleos de Tensor de 3ª Generación: obtenga hasta el doble de rendimiento con algoritmos de IA avanzados y dispersión estructural como DLSS. Ahora, con soporte para resolución de hasta 8K, estos núcleos ofrecen un impulso masivo en el rendimiento del juego y en las nuevas capacidades de IA.</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">Modo OC: reloj de aumento de 1912 MHz (modo OC) / 1882 MHz (modo de juego)</span></li><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(15, 17, 17);\">El diseño de ventilador Axial-Tech se ha ajustado con más cuchillas de ventilador y una dirección de rotación inversa para el ventilador central.</span></li></ul>', '1.png', '2.png', '3.png', 99, 'En Stock', '2022-06-09 02:50:07', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 7, 'ATX', '2022-06-07 17:41:36', NULL),
(14, 7, 'miniATX', '2022-06-07 17:41:46', NULL),
(15, 8, 'Escritorio', '2022-06-07 17:41:58', NULL),
(16, 8, 'Portatil', '2022-06-07 17:42:04', NULL),
(17, 9, 'DDR4', '2022-06-07 17:42:26', NULL),
(18, 9, 'DDR5', '2022-06-07 17:42:32', NULL),
(19, 11, 'AMD', '2022-06-08 03:06:22', NULL),
(20, 11, 'INTEL', '2022-06-08 03:06:34', NULL),
(21, 12, 'NVIDIA', '2022-06-09 02:48:33', NULL),
(22, 12, 'RADEON', '2022-06-09 02:48:44', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(31, 'rudy_4@hotmail.es', 0x3a3a3100000000000000000000000000, '2022-06-08 00:07:00', '07-06-2022 07:08:09 PM', 1),
(32, 'rudy_4@hotmail.es', 0x3a3a3100000000000000000000000000, '2022-06-08 15:41:09', NULL, 0),
(33, 'rudy_4@hotmail.es', 0x3a3a3100000000000000000000000000, '2022-06-08 15:41:20', '08-06-2022 10:51:11 AM', 1),
(34, 'rudy_4@hotmail.es', 0x3a3a3100000000000000000000000000, '2022-06-08 16:15:44', NULL, 0),
(35, 'rudy_4@hotmail.es', 0x3a3a3100000000000000000000000000, '2022-06-08 16:15:49', NULL, 1),
(36, 'rudy_4@hotmail.es', 0x3a3a3100000000000000000000000000, '2022-06-08 21:06:52', NULL, 0),
(37, 'rudy_4@hotmail.es', 0x3a3a3100000000000000000000000000, '2022-06-08 21:06:58', NULL, 0),
(38, 'rudy_4@hotmail.es', 0x3a3a3100000000000000000000000000, '2022-06-08 21:07:08', NULL, 0),
(39, 'rudy_4@hotmail.es', 0x3132372e302e302e3100000000000000, '2022-06-09 03:01:05', NULL, 0),
(40, 'rudy_4@hotmail.es', 0x3132372e302e302e3100000000000000, '2022-06-09 03:01:32', NULL, 0),
(41, 'rudy_4@hotmail.es', 0x3132372e302e302e3100000000000000, '2022-06-09 03:01:39', NULL, 0),
(42, 'rudy_4@hotmail.es', 0x3132372e302e302e3100000000000000, '2022-06-09 03:01:49', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(5, 'Rodolfo Díaz Barriga Reyes', 'rudy_4@hotmail.es', 5534540127, '25f9e794323b453885f5181f1b624d0b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 00:06:52', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 4, 12, '2020-06-23 03:05:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
