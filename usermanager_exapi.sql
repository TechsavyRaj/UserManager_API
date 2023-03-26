-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2023 at 04:59 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usermanager_exapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `gender`, `title`, `first_name`, `last_name`, `email`, `phone`, `street`, `city`, `state`, `country`, `postcode`, `picture`, `created_at`, `updated_at`) VALUES
(1, 'male', 'Mr', 'Raj', 'Gupta', 'raj@example.com', '898092389', '2332 Rakab', 'Lucknow', 'UP', 'India', NULL, 'https://randomuser.me/api/portraits/men/18.jpg', '2023-03-26 07:48:20', '2023-03-26 08:48:04'),
(2, 'male', 'Mr', 'Ronnie', 'Long', 'ronnie.long@example.com', '(265) 347-6384', '444 Frances Ct', 'Tempe', 'Iowa', 'United States', '13233', 'https://randomuser.me/api/portraits/men/9.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(3, 'male', 'Mr', 'Rasmus', 'Kristensen', 'rasmus.kristensen@example.com', '13873370', '3532 Apollovej', 'Lintrup', 'Danmark', 'Denmark', '32761', 'https://randomuser.me/api/portraits/men/21.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(4, 'male', 'Mr', 'Quinn', 'Thomas', 'quinn.thomas@example.com', '(976)-224-9214', '645 The Strand', 'Masterton', 'Manawatu-Wanganui', 'New Zealand', NULL, 'https://randomuser.me/api/portraits/men/51.jpg', '2023-03-26 07:48:20', '2023-03-26 08:47:16'),
(5, 'male', 'Mr', 'Bozhen', 'Pasenyuk', 'bozhen.pasenyuk@example.com', '(098) C99-7018', '743 Ploshcha Malanyuka', 'Buchach', 'Zhitomirska', 'Ukraine', '43088', 'https://randomuser.me/api/portraits/men/52.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(6, 'female', 'Miss', 'Magarete', 'Heiden', 'magarete.heiden@example.com', '0976-5551784', '4842 Mittelweg', 'Altlandsberg', 'Schleswig-Holstein', 'Germany', '80470', 'https://randomuser.me/api/portraits/women/90.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(7, 'female', 'Miss', 'Emily', 'Engseth', 'emily.engseth@example.com', '89488678', '5575 Skogvollveien', 'Grøa', 'Description', 'Norway', '7424', 'https://randomuser.me/api/portraits/women/14.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(8, 'male', 'Mr', 'Mitar', 'Obradović', 'mitar.obradovic@example.com', '012-4144-763', '8354 Dobrile živanov Stakić', 'Crna Trava', 'Raška', 'Serbia', '11525', 'https://randomuser.me/api/portraits/men/92.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(9, 'male', 'Mr', 'Macit', 'Ertürk', 'macit.erturk@example.com', '(874)-010-8366', '9958 Vatan Cd', 'Ordu', 'Kars', 'Turkey', '53251', 'https://randomuser.me/api/portraits/men/25.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(10, 'male', 'Mr', 'Berto', 'da Mota', 'berto.damota@example.com', '(33) 1657-5631', '4958 Rua São Pedro ', 'Votorantim', 'Pará', 'Brazil', '17952', 'https://randomuser.me/api/portraits/men/92.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(11, 'male', 'Monsieur', 'Lorenzo', 'Lucas', 'lorenzo.lucas@example.com', '079 237 65 84', '8840 Rue Laure-Diebold', 'Uerkheim', 'Appenzell Ausserrhoden', 'Switzerland', '9712', 'https://randomuser.me/api/portraits/men/21.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(12, 'female', 'Ms', 'Margarita', 'Pascual', 'margarita.pascual@example.com', '917-897-024', '5350 Calle del Pez', 'Valencia', 'Canarias', 'Spain', '56987', 'https://randomuser.me/api/portraits/women/37.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(13, 'male', 'Mr', 'Bryan', 'Reid', 'bryan.reid@example.com', '041-360-6024', '2130 New Street', 'Portlaoise', 'Offaly', 'Ireland', '52409', 'https://randomuser.me/api/portraits/men/66.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(14, 'male', 'Mr', 'Justin', 'Park', 'justin.park@example.com', 'N54 K24-9657', '4243 Tecumseh Rd', 'Fauquier', 'Saskatchewan', 'Canada', 'Q4M 7A7', 'https://randomuser.me/api/portraits/men/85.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(15, 'female', 'Miss', 'Natalie', 'Wood', 'natalie.wood@example.com', '(154)-423-0841', '1150 Henderson Road', 'Napier', 'Marlborough', 'New Zealand', '84285', 'https://randomuser.me/api/portraits/women/62.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(16, 'female', 'Miss', 'Emma', 'Harvey', 'emma.harvey@example.com', '071-954-3106', '6743 The Drive', 'Oranmore', 'Mayo', 'Ireland', '66971', 'https://randomuser.me/api/portraits/women/63.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(17, 'female', 'Mrs', 'Shannon', 'Jackson', 'shannon.jackson@example.com', '05-2061-3418', '5714 Mcgowen St', 'Toowoomba', 'Western Australia', 'Australia', '5792', 'https://randomuser.me/api/portraits/women/34.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(18, 'female', 'Mrs', 'Ariane', 'Fortin', 'ariane.fortin@example.com', 'N11 D86-8089', '205 Maple Ave', 'Springfield', 'Nunavut', 'Canada', 'W7P 5G6', 'https://randomuser.me/api/portraits/women/45.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(19, 'male', 'Mr', 'Danny', 'Collins', 'danny.collins@example.com', '041-446-4866', '883 Mill Road', 'Roscommon', 'Donegal', 'Ireland', '35168', 'https://randomuser.me/api/portraits/men/38.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(20, 'female', 'Miss', 'Isabelle', 'Simmons', 'isabelle.simmons@example.com', '013873 24924', '7809 Manchester Road', 'Nottingham', 'Tayside', 'United Kingdom', 'C33 7DB', 'https://randomuser.me/api/portraits/women/2.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(21, 'female', 'Mrs', 'Şebnem', 'Doelman', 'sebnem.doelman@example.com', '(0119) 649506', '9140 Dr. Haverkorn van Rijsewijkweg', 'Eck en Wiel', 'Utrecht', 'Netherlands', '7175 HB', 'https://randomuser.me/api/portraits/women/64.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(22, 'female', 'Mrs', 'Bozhena', 'Shcherbatyuk', 'bozhena.shcherbatyuk@example.com', '(066) N72-7488', '4527 Stusa', 'Stariy Krim', 'Poltavska', 'Ukraine', '12220', 'https://randomuser.me/api/portraits/women/52.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(23, 'male', 'Mr', 'Tomas', 'Bravo', 'tomas.bravo@example.com', '922-168-846', '4938 Calle del Barquillo', 'Santa Cruz de Tenerife', 'Extremadura', 'Spain', '87502', 'https://randomuser.me/api/portraits/men/64.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(24, 'male', 'Mr', 'Calvin', 'Brooks', 'calvin.brooks@example.com', '09-9842-0316', '9700 Edwards Rd', 'Geraldton', 'New South Wales', 'Australia', '1803', 'https://randomuser.me/api/portraits/men/58.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(25, 'male', 'Mr', 'Svitolyub', 'Zeleneckiy', 'svitolyub.zeleneckiy@example.com', '(098) F32-0856', '3001 Kulikivskiy uzviz', 'Lohvicya', 'Mikolayivska', 'Ukraine', '75092', 'https://randomuser.me/api/portraits/men/58.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(26, 'male', 'Mr', 'Bernard', 'Bishop', 'bernard.bishop@example.com', '05-9849-4938', '7275 Hickory Creek Dr', 'Warrnambool', 'Tasmania', 'Australia', '9813', 'https://randomuser.me/api/portraits/men/78.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(27, 'male', 'Mr', 'Felix', 'Jensen', 'felix.jensen@example.com', '98941748', '7016 Vestervang', 'Aarhus N', 'Hovedstaden', 'Denmark', '87073', 'https://randomuser.me/api/portraits/men/60.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(28, 'female', 'Ms', 'Petra', 'Werth', 'petra.werth@example.com', '0885-7658980', '8932 Kastanienweg', 'Schlotheim', 'Brandenburg', 'Germany', '34633', 'https://randomuser.me/api/portraits/women/51.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(29, 'female', 'Miss', 'Željka', 'Ristović', 'zeljka.ristovic@example.com', '021-4821-648', '9834 Dvadesetdrugog Decembra', 'Kula', 'Braničevo', 'Serbia', '57499', 'https://randomuser.me/api/portraits/women/22.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(30, 'male', 'Monsieur', 'Agron', 'Muller', 'agron.muller@example.com', '077 693 80 93', '2114 Rue des Jardins', 'Hérémence', 'St. Gallen', 'Switzerland', '5021', 'https://randomuser.me/api/portraits/men/21.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(31, 'female', 'Mrs', 'Océane', 'Berger', 'oceane.berger@example.com', '05-71-75-10-08', '5121 Avenue de l\'Abbé-Roussel', 'Nîmes', 'Yonne', 'France', '71735', 'https://randomuser.me/api/portraits/women/84.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(32, 'female', 'Ms', 'Wally', 'Klee', 'wally.klee@example.com', '0953-1446807', '3919 Kirchgasse', 'Rodenberg', 'Hessen', 'Germany', '92388', 'https://randomuser.me/api/portraits/women/60.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(33, 'male', 'Mr', 'Tadija', 'Ivić', 'tadija.ivic@example.com', '016-0866-392', '3953 Đorđa Kode', 'Loznica', 'North Banat', 'Serbia', '41439', 'https://randomuser.me/api/portraits/men/24.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(34, 'female', 'Miss', 'Clara', 'Sørensen', 'clara.sorensen@example.com', '00306332', '2813 Høgevej', 'Roskilde', 'Syddanmark', 'Denmark', '57480', 'https://randomuser.me/api/portraits/women/51.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(35, 'female', 'Miss', 'Yaromira', 'Ruseckiy', 'yaromira.ruseckiy@example.com', '(099) Z91-3219', '3497 Svyatotroyicka', 'Novomirgorod', 'Zakarpatska', 'Ukraine', '88112', 'https://randomuser.me/api/portraits/women/35.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(36, 'male', 'Mr', 'Aleksej', 'Zec', 'aleksej.zec@example.com', '026-2880-709', '9781 Kedrova', 'Loznica', 'Šumadija', 'Serbia', '74016', 'https://randomuser.me/api/portraits/men/74.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(37, 'male', 'Mr', 'Emiliano', 'Naranjo', 'emiliano.naranjo@example.com', '(634) 527 8054', '4506 Cerrada Congo', 'Ciénaga de Ntra. Señora de Gpe.', 'Michoacan', 'Mexico', '26065', 'https://randomuser.me/api/portraits/men/0.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(38, 'female', 'Ms', 'Gerardina', 'Addink', 'gerardina.addink@example.com', '(055) 3139885', '8476 Burgemeester Rensstraat', 'Blokzijl', 'Zeeland', 'Netherlands', '2900 GM', 'https://randomuser.me/api/portraits/women/5.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(39, 'female', 'Mrs', 'Debbie', 'Gonzales', 'debbie.gonzales@example.com', '04-4772-5067', '9470 Edwards Rd', 'Hervey Bay', 'Western Australia', 'Australia', '4621', 'https://randomuser.me/api/portraits/women/8.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(40, 'female', 'Ms', 'Adyasa', 'Kumari', 'adyasa.kumari@example.com', '8197608086', '1572 Hazratganj', 'Bhiwani', 'Arunachal Pradesh', 'India', '26003', 'https://randomuser.me/api/portraits/women/82.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(41, 'male', 'Mr', 'Clifton', 'Price', 'clifton.price@example.com', '09-7009-9702', '5601 Samaritan Dr', 'Bundaberg', 'Western Australia', 'Australia', '5631', 'https://randomuser.me/api/portraits/men/84.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(42, 'female', 'Ms', 'Lourdes', 'Van der Vorst', 'lourdes.vandervorst@example.com', '(0764) 951174', '1736 Hoeksterloane', 'Petten', 'Groningen', 'Netherlands', '3295 GN', 'https://randomuser.me/api/portraits/women/76.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(43, 'female', 'Miss', 'Susanna', 'Howell', 'susanna.howell@example.com', '021 8237 4032', '7513 School Lane', 'Leeds', 'Borders', 'United Kingdom', 'NR51 2WN', 'https://randomuser.me/api/portraits/women/46.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(44, 'female', 'Miss', 'Lily', 'Chow', 'lily.chow@example.com', 'R86 H73-8585', '671 Pine Rd', 'Sandy Lake', 'Newfoundland and Labrador', 'Canada', 'T5L 8H5', 'https://randomuser.me/api/portraits/women/54.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(45, 'female', 'Mrs', 'Teresa', 'Pierce', 'teresa.pierce@example.com', '(474) 409-9619', '2288 Spring St', 'Sioux Falls', 'Florida', 'United States', '13902', 'https://randomuser.me/api/portraits/women/89.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(46, 'female', 'Miss', 'Lilja', 'Kyllo', 'lilja.kyllo@example.com', '08-415-111', '7077 Tehtaankatu', 'Orimattila', 'Lapland', 'Finland', '96874', 'https://randomuser.me/api/portraits/women/60.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(47, 'male', 'Mr', 'Hubert', 'Nybø', 'hubert.nybo@example.com', '75490376', '700 Holsteinveien', 'Davanger', 'Telemark', 'Norway', '3228', 'https://randomuser.me/api/portraits/men/55.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(48, 'female', 'Ms', 'Merve', 'Beker', 'merve.beker@example.com', '(044) 4712519', '4569 Bonseweg', 'Hellum', 'Utrecht', 'Netherlands', '7106 AE', 'https://randomuser.me/api/portraits/women/59.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(49, 'female', 'Miss', 'Allie', 'Henderson', 'allie.henderson@example.com', '071-584-0471', '2609 Pearse Street', 'Wexford', 'Meath', 'Ireland', '43325', 'https://randomuser.me/api/portraits/women/76.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(50, 'male', 'Mr', 'Davut', 'Yılmazer', 'davut.yilmazer@example.com', '(775)-345-7425', '5361 Bağdat Cd', 'Sakarya', 'Kocaeli', 'Turkey', '51917', 'https://randomuser.me/api/portraits/men/57.jpg', '2023-03-26 07:48:20', '2023-03-26 07:48:20'),
(51, 'male', 'Mr', 'Marcus', 'Langaas', 'marcus.langaas@example.com', '82139555', '7481 Rådhusplassen', 'Løiten Brænderi', 'Troms - Romsa', 'Norway', '1069', 'https://randomuser.me/api/portraits/men/31.jpg', '2023-03-26 08:06:27', '2023-03-26 08:06:27'),
(52, 'female', 'Miss', 'Brielle', 'Chow', 'brielle.chow@example.com', 'E85 A84-3717', '400 Grand Ave', 'Shelbourne', 'Newfoundland and Labrador', 'Canada', 'I4O 2H2', 'https://randomuser.me/api/portraits/women/47.jpg', '2023-03-26 08:06:27', '2023-03-26 08:06:27'),
(53, 'male', 'Mr', 'Valdo', 'Barbosa', 'valdo.barbosa@example.com', '(57) 1507-5076', '8989 Rua Vinte E Dois ', 'Paço do Lumiar', 'Distrito Federal', 'Brazil', '42799', 'https://randomuser.me/api/portraits/men/12.jpg', '2023-03-26 08:06:27', '2023-03-26 08:06:27'),
(54, 'male', 'Mr', 'Jim', 'Henry', 'jim.henry@example.com', '011-166-8644', '2121 Galway Road', 'Ballybofey-Stranorlar', 'Wexford', 'Ireland', '38872', 'https://randomuser.me/api/portraits/men/33.jpg', '2023-03-26 08:06:27', '2023-03-26 08:06:27'),
(55, 'female', 'Madame', 'Stephanie', 'Duval', 'stephanie.duval@example.com', '079 720 49 15', '6177 Rue Dumenge', 'Grandfontaine', 'Aargau', 'Switzerland', '6526', 'https://randomuser.me/api/portraits/women/9.jpg', '2023-03-26 08:06:27', '2023-03-26 08:06:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
