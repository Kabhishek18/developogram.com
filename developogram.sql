-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2023 at 11:35 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `developogram`
--

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add Token', 1, 'add_token'),
(2, 'Can change Token', 1, 'change_token'),
(3, 'Can delete Token', 1, 'delete_token'),
(4, 'Can view Token', 1, 'view_token'),
(5, 'Can add token', 2, 'add_tokenproxy'),
(6, 'Can change token', 2, 'change_tokenproxy'),
(7, 'Can delete token', 2, 'delete_tokenproxy'),
(8, 'Can view token', 2, 'view_tokenproxy'),
(9, 'Can add attachment', 3, 'add_attachment'),
(10, 'Can change attachment', 3, 'change_attachment'),
(11, 'Can delete attachment', 3, 'delete_attachment'),
(12, 'Can view attachment', 3, 'view_attachment'),
(13, 'Can add profile', 4, 'add_profile'),
(14, 'Can change profile', 4, 'change_profile'),
(15, 'Can delete profile', 4, 'delete_profile'),
(16, 'Can view profile', 4, 'view_profile'),
(17, 'Can add categories', 5, 'add_categories'),
(18, 'Can change categories', 5, 'change_categories'),
(19, 'Can delete categories', 5, 'delete_categories'),
(20, 'Can view categories', 5, 'view_categories'),
(21, 'Can add codes', 6, 'add_codes'),
(22, 'Can change codes', 6, 'change_codes'),
(23, 'Can delete codes', 6, 'delete_codes'),
(24, 'Can view codes', 6, 'view_codes'),
(25, 'Can add label tag', 7, 'add_labeltag'),
(26, 'Can change label tag', 7, 'change_labeltag'),
(27, 'Can delete label tag', 7, 'delete_labeltag'),
(28, 'Can view label tag', 7, 'view_labeltag'),
(29, 'Can add tag', 8, 'add_tag'),
(30, 'Can change tag', 8, 'change_tag'),
(31, 'Can delete tag', 8, 'delete_tag'),
(32, 'Can view tag', 8, 'view_tag'),
(33, 'Can add post', 9, 'add_post'),
(34, 'Can change post', 9, 'change_post'),
(35, 'Can delete post', 9, 'delete_post'),
(36, 'Can view post', 9, 'view_post'),
(37, 'Can add comment', 10, 'add_comment'),
(38, 'Can change comment', 10, 'change_comment'),
(39, 'Can delete comment', 10, 'delete_comment'),
(40, 'Can view comment', 10, 'view_comment'),
(41, 'Can add multi media file', 11, 'add_multimediafile'),
(42, 'Can change multi media file', 11, 'change_multimediafile'),
(43, 'Can delete multi media file', 11, 'delete_multimediafile'),
(44, 'Can view multi media file', 11, 'view_multimediafile'),
(45, 'Can add log entry', 12, 'add_logentry'),
(46, 'Can change log entry', 12, 'change_logentry'),
(47, 'Can delete log entry', 12, 'delete_logentry'),
(48, 'Can view log entry', 12, 'view_logentry'),
(49, 'Can add permission', 13, 'add_permission'),
(50, 'Can change permission', 13, 'change_permission'),
(51, 'Can delete permission', 13, 'delete_permission'),
(52, 'Can view permission', 13, 'view_permission'),
(53, 'Can add group', 14, 'add_group'),
(54, 'Can change group', 14, 'change_group'),
(55, 'Can delete group', 14, 'delete_group'),
(56, 'Can view group', 14, 'view_group'),
(57, 'Can add user', 15, 'add_user'),
(58, 'Can change user', 15, 'change_user'),
(59, 'Can delete user', 15, 'delete_user'),
(60, 'Can view user', 15, 'view_user'),
(61, 'Can add content type', 16, 'add_contenttype'),
(62, 'Can change content type', 16, 'change_contenttype'),
(63, 'Can delete content type', 16, 'delete_contenttype'),
(64, 'Can view content type', 16, 'view_contenttype'),
(65, 'Can add session', 17, 'add_session'),
(66, 'Can change session', 17, 'change_session'),
(67, 'Can delete session', 17, 'delete_session'),
(68, 'Can view session', 17, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$WkqcAWgxGojS6k7TcbI2nf$fG+FzqVhrxZkzYrvUkQkjUaWntOjkFOS1/ZWCLvCo7Q=', '2023-03-06 04:23:09.584053', 1, 'admin', '', '', 'kabhishek18@gmail.com', 1, 1, '2023-03-06 04:21:01.280890');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs_categories`
--

CREATE TABLE `blogs_categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `updated_on` datetime(6) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `lft` int(10) UNSIGNED NOT NULL CHECK (`lft` >= 0),
  `rght` int(10) UNSIGNED NOT NULL CHECK (`rght` >= 0),
  `tree_id` int(10) UNSIGNED NOT NULL CHECK (`tree_id` >= 0),
  `level` int(10) UNSIGNED NOT NULL CHECK (`level` >= 0),
  `parent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs_categories`
--

INSERT INTO `blogs_categories` (`id`, `name`, `slug`, `status`, `image`, `updated_on`, `created_on`, `lft`, `rght`, `tree_id`, `level`, `parent_id`) VALUES
(1, 'Technology', 'technology', 1, '', '2023-03-06 04:23:51.280990', '2023-03-06 04:23:51.280990', 1, 10, 1, 0, NULL),
(2, 'Fashion', 'fashion', 1, '', '2023-03-06 04:24:12.664511', '2023-03-06 04:24:12.664511', 1, 2, 2, 0, NULL),
(3, 'Python', 'python', 1, '', '2023-03-06 06:03:02.812455', '2023-03-06 06:03:02.812455', 2, 3, 1, 1, 1),
(4, 'Blockchain', 'blockchain', 1, '', '2023-03-06 10:02:49.635187', '2023-03-06 10:02:49.635187', 4, 5, 1, 1, 1),
(5, 'Augmented Reality', 'augmented-reality', 1, '', '2023-03-06 10:07:09.371418', '2023-03-06 10:07:09.371418', 6, 7, 1, 1, 1),
(6, 'Aircraft', 'aircraft', 1, '', '2023-03-06 10:11:09.480352', '2023-03-06 10:11:09.480352', 1, 2, 3, 0, NULL),
(7, 'Smartphones', 'smartphones', 1, '', '2023-03-06 10:15:25.228231', '2023-03-06 10:15:25.228231', 8, 9, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogs_codes`
--

CREATE TABLE `blogs_codes` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `subtitle` varchar(400) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `metatag` longtext DEFAULT NULL,
  `precontent` longtext NOT NULL,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `bannerimage` varchar(100) NOT NULL,
  `updated_on` datetime(6) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `labeltag_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs_codes`
--

INSERT INTO `blogs_codes` (`id`, `title`, `subtitle`, `slug`, `metatag`, `precontent`, `content`, `status`, `image`, `bannerimage`, `updated_on`, `created_on`, `author_id`, `category_id`, `labeltag_id`) VALUES
(1, 'Advance Calculator Using Python', 'Calculator : Advanace', 'advance-calculator-using-python', '', '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\">Python code for an advanced calculator that includes additional functions such as calculating the square root, exponentiation, and trigonometric functions:</span><br></p>', '<pre> \r\n<code>\r\nimport math\r\n\r\n# Function to add two numbers\r\ndef add(x, y):\r\n    return x + y\r\n\r\n# Function to subtract two numbers\r\ndef subtract(x, y):\r\n    return x - y\r\n\r\n# Function to multiply two numbers\r\ndef multiply(x, y):\r\n    return x * y\r\n\r\n# Function to divide two numbers\r\ndef divide(x, y):\r\n    return x / y\r\n\r\n# Function to calculate the square root of a number\r\ndef square_root(x):\r\n    return math.sqrt(x)\r\n\r\n# Function to calculate the exponentiation of a number\r\ndef exponentiation(x, y):\r\n    return x ** y\r\n\r\n# Function to calculate the sine of an angle in radians\r\ndef sine(x):\r\n    return math.sin(x)\r\n\r\n# Function to calculate the cosine of an angle in radians\r\ndef cosine(x):\r\n    return math.cos(x)\r\n\r\n# Function to calculate the tangent of an angle in radians\r\ndef tangent(x):\r\n    return math.tan(x)\r\n\r\n# Display menu\r\nprint(\"Select operation.\")\r\nprint(\"1.Add\")\r\nprint(\"2.Subtract\")\r\nprint(\"3.Multiply\")\r\nprint(\"4.Divide\")\r\nprint(\"5.Square Root\")\r\nprint(\"6.Exponentiation\")\r\nprint(\"7.Sine\")\r\nprint(\"8.Cosine\")\r\nprint(\"9.Tangent\")\r\n\r\n# Take input from the user\r\nchoice = input(\"Enter choice(1/2/3/4/5/6/7/8/9): \")\r\n\r\nif choice in (\'1\', \'2\', \'3\', \'4\', \'6\'):\r\n    num1 = float(input(\"Enter first number: \"))\r\n    num2 = float(input(\"Enter second number: \"))\r\n\r\n    if choice == \'1\':\r\n        print(num1,\"+\",num2,\"=\", add(num1,num2))\r\n\r\n    elif choice == \'2\':\r\n        print(num1,\"-\",num2,\"=\", subtract(num1,num2))\r\n\r\n    elif choice == \'3\':\r\n        print(num1,\"*\",num2,\"=\", multiply(num1,num2))\r\n\r\n    elif choice == \'4\':\r\n        print(num1,\"/\",num2,\"=\", divide(num1,num2))\r\n\r\n    elif choice == \'6\':\r\n        print(num1,\"^\",num2,\"=\", exponentiation(num1,num2))\r\n\r\nelif choice in (\'5\', \'7\', \'8\', \'9\'):\r\n    num = float(input(\"Enter a number: \"))\r\n\r\n    if choice == \'5\':\r\n        print(\"√\",num,\"=\", square_root(num))\r\n\r\n    elif choice == \'7\':\r\n        print(\"sin(\",num,\") =\", sine(num))\r\n\r\n    elif choice == \'8\':\r\n        print(\"cos(\",num,\") =\", cosine(num))\r\n\r\n    elif choice == \'9\':\r\n        print(\"tan(\",num,\") =\", tangent(num))\r\n\r\nelse:\r\n    print(\"Invalid input\")</code><p></p><p><code><br></code></p><p><br></p><p><code>\r\n\r\n</code></pre>\r\n</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\"><font color=\"#000000\" style=\"\">In this code, we import the <code style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 0.875em; font-weight: 600; font-family: &quot;Söhne Mono&quot;, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace !important;\">math</code> module to use mathematical functions such as <code style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 0.875em; font-weight: 600; font-family: &quot;Söhne Mono&quot;, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace !important;\">sqrt</code>, <code style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 0.875em; font-weight: 600; font-family: &quot;Söhne Mono&quot;, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace !important;\">sin</code>, <code style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 0.875em; font-weight: 600; font-family: &quot;Söhne Mono&quot;, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace !important;\">cos</code>, and <code style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 0.875em; font-weight: 600; font-family: &quot;Söhne Mono&quot;, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace !important;\">tan</code>.</font></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\"><font color=\"#000000\" style=\"\">We then define functions for basic arithmetic operations such as addition, subtraction, multiplication, and division.</font></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\"><font color=\"#000000\" style=\"\">We also define additional functions for calculating the square root, exponentiation, and trigonometric functions.</font></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\"><font color=\"#000000\" style=\"\">Next, we display a menu of available operations and prompt the user for their choice.</font></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\"><font color=\"#000000\" style=\"\">Based on the user\'s choice, we either prompt them for two numbers to perform a basic arithmetic operation or prompt them for a single number to perform a more advanced operation such as calculating the square root or trigonometric functions.</font></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 0px; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\"><font color=\"#000000\" style=\"\">This advanced calculator allows users to perform a wider range of calculations compared to the basic calculator we saw earlier.</font></p>', 1, 'codeimages/pexels-christina-morillo-1181671.jpg', 'codeimages/pexels-christina-morillo-1181359.jpg', '2023-03-06 06:11:27.064404', '2023-03-06 06:07:46.409375', 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogs_comment`
--

CREATE TABLE `blogs_comment` (
  `id` bigint(20) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `email` varchar(300) NOT NULL,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `updated_on` datetime(6) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `codename_id` bigint(20) DEFAULT NULL,
  `postname_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs_labeltag`
--

CREATE TABLE `blogs_labeltag` (
  `id` bigint(20) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `updated_on` datetime(6) NOT NULL,
  `created_on` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs_labeltag`
--

INSERT INTO `blogs_labeltag` (`id`, `name`, `content`, `status`, `updated_on`, `created_on`) VALUES
(1, 'Python', '<p>Python</p>', 1, '2023-03-06 06:03:25.780047', '2023-03-06 06:03:25.781080'),
(2, 'A.I.', '<p>Artificial Intelligence</p>', 1, '2023-03-06 08:26:09.265566', '2023-03-06 08:26:09.265566'),
(3, 'Blockchain', '<p>&nbsp;</p>', 1, '2023-03-06 10:06:09.494942', '2023-03-06 10:06:09.494942'),
(4, 'Augmented Reality', '<p>Augmented Reality<br></p>', 1, '2023-03-06 10:07:20.926572', '2023-03-06 10:07:20.926572'),
(5, 'aircraft', '<p>&nbsp;</p>', 1, '2023-03-06 10:11:49.507531', '2023-03-06 10:11:49.507531'),
(6, 'Smartphone', '<p>&nbsp;</p>', 0, '2023-03-06 10:15:41.878142', '2023-03-06 10:15:41.878142');

-- --------------------------------------------------------

--
-- Table structure for table `blogs_post`
--

CREATE TABLE `blogs_post` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `subtitle` varchar(400) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `metatag` longtext DEFAULT NULL,
  `precontent` longtext NOT NULL,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `bannerimage` varchar(100) NOT NULL,
  `updated_on` datetime(6) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `labeltag_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs_post`
--

INSERT INTO `blogs_post` (`id`, `title`, `subtitle`, `slug`, `metatag`, `precontent`, `content`, `status`, `image`, `bannerimage`, `updated_on`, `created_on`, `author_id`, `category_id`, `labeltag_id`) VALUES
(1, 'The Future of Technology: Exploring Emerging Trends and Innovations', 'From AI and Blockchain to Quantum Computing and Beyond: What\'s Next in the World of Technology?', 'the-future-of-technology-exploring-emerging-trends-and-innovations', '<meta name=\"title\" content=\"The Future of Technology: Exploring Emerging Trends and Innovations\">\r\n<meta name=\"description\" content=\"Discover the latest emerging trends and innovations in technology, from AI and blockchain to quantum computing and beyond. Explore the potential implications of these technologies on our daily lives and the ethical considerations we must keep in mind as we continue to push the boundaries of what\'s possible.\">\r\n<meta name=\"keywords\" content=\"technology, AI, blockchain, quantum computing, augmented reality, virtual reality, IoT, 5G networks, emerging trends, innovations, ethical considerations.\">', 'As we enter a new decade, the world of technology is continuing to rapidly evolve and shape our daily lives. From artificial intelligence and blockchain to quantum computing and beyond, emerging trends and innovations are transforming the way we live, work, and interact with each other.', '<p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap; background-color: rgb(247, 247, 248);\"><span style=\"font-family: Helvetica;\">As we enter into a new decade, the world of technology is continuing to rapidly evolve and shape our daily lives. From artificial intelligence and blockchain to quantum computing and beyond, emerging trends and innovations are transforming the way we live, work, and interact with each other.</span></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap; background-color: rgb(247, 247, 248);\"><span style=\"font-family: Helvetica;\">One of the most exciting developments in technology is the rise of artificial intelligence (AI). Machine learning algorithms and natural language processing are allowing computers to process vast amounts of data and make decisions at a level previously thought impossible. AI is already being used in industries ranging from healthcare to finance, and its potential for the future is truly limitless.</span></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap; background-color: rgb(247, 247, 248);\"><span style=\"font-family: Helvetica;\">Another major trend is blockchain technology. Originally developed for cryptocurrencies like Bitcoin, blockchain is now being used in a wide range of industries for its ability to provide secure, decentralized, and transparent record-keeping. From supply chain management to voting systems, blockchain is changing the way we think about trust and verification.</span></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap; background-color: rgb(247, 247, 248);\"><span style=\"font-family: Helvetica;\">Quantum computing is another emerging trend that is set to revolutionize the world of technology. By harnessing the power of quantum mechanics, quantum computers can perform calculations at speeds that are simply not possible with classical computers. This has enormous implications for fields such as cryptography, drug discovery, and optimization.</span></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap; background-color: rgb(247, 247, 248);\"><span style=\"font-family: Helvetica;\">Other areas of emerging technology include augmented and virtual reality, Internet of Things (IoT), and 5G networks. These technologies are already starting to have a major impact on the way we live our lives, and they will only become more important as they continue to evolve.</span></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap; background-color: rgb(247, 247, 248);\"><span style=\"font-family: Helvetica;\">However, with great power comes great responsibility, and it\'s important to consider the ethical implications of these emerging technologies. As we push the boundaries of what is possible, we must ensure that we are using technology in a way that is beneficial for all of society, and not just a select few.</span></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap; background-color: rgb(247, 247, 248);\"><span style=\"font-family: Helvetica;\">In conclusion, the future of technology is exciting and full of possibilities. From AI and blockchain to quantum computing and beyond, emerging trends and innovations are set to transform the world in ways we can only imagine. As we continue to explore these technologies, let\'s make sure we are doing so in a way that benefits everyone.</span></p>', 1, 'blogimages/pexels-christina-morillo-1181673.jpg', 'blogimages/pexels-christina-morillo-1181317.jpg', '2023-03-06 10:07:58.059586', '2023-03-06 04:39:10.462656', 1, 5, 2),
(2, 'The Rise of Augmented Reality: How AR is Transforming Our World', 'Exploring the Benefits and Challenges of Augmented Reality Technology', 'the-rise-of-augmented-reality-how-ar-is-transforming-our-world', '<meta name=\"title\" content=\"The Rise of Augmented Reality: How AR is Transforming Our World\">\r\n<meta name=\"description\" content=\"Explore how Augmented Reality (AR) is transforming the way we live and work, its potential benefits and challenges, and the impact it may have on the future of technology.\">\r\n<meta name=\"keywords\" content=\"augmented reality, AR, technology, benefits, challenges, gaming, entertainment, healthcare, education, future of technology.\">', 'Augmented Reality (AR) is no longer just a concept from science fiction movies or video games. It has already made its way into various industries, from gaming and entertainment to healthcare and education. AR is a technology that allows users to enhance their real-world experience with computer-generated sensory inputs, such as visual, auditory, haptic, or olfactory. AR overlays digital content onto the real-world environment, creating an interactive and immersive experience for the user.', '<p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-bottom: 1.25em; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\"><font color=\"#000000\" style=\"\">Augmented Reality (AR) is no longer just a concept from science fiction movies or video games. It has already made its way into various industries, from gaming and entertainment to healthcare and education. AR is a technology that allows users to enhance their real-world experience with computer-generated sensory inputs, such as visual, auditory, haptic, or olfactory. AR overlays digital content onto the real-world environment, creating an interactive and immersive experience for the user.</font></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\"><font color=\"#000000\" style=\"\">The rise of AR technology has brought a lot of excitement and buzz, as well as some concerns and challenges. One of the most significant benefits of AR is its potential to improve various industries. For example, in healthcare, AR can help doctors visualize medical images and patient data, or assist in medical procedures. In education, AR can help students learn in a more engaging and interactive way. In entertainment and gaming, AR can provide a new level of immersion and realism.</font></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\"><font color=\"#000000\" style=\"\">However, there are also some challenges and potential downsides to AR technology. One of the biggest challenges is the need for hardware and infrastructure. AR requires specialized devices, such as headsets or smartphones with AR capabilities, as well as a reliable and fast network connection. Another challenge is privacy and security. AR involves collecting and processing a lot of data, and there is a risk of data breaches or misuse.</font></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\"><font color=\"#000000\" style=\"\">Despite these challenges, the potential of AR is enormous. It has the potential to transform the way we live and work, as well as the future of technology. As AR technology continues to evolve and improve, we can expect to see more innovative and exciting applications and use cases in various industries.</font></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 0px; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\"><font color=\"#000000\" style=\"\">In conclusion, the rise of AR technology is a fascinating and significant development in the world of technology. Its potential benefits are immense, but we must also be aware of the challenges and potential downsides. By addressing these challenges and responsibly integrating AR technology into our daily lives, we can unlock its full potential and create a more interactive and immersive world.</font></p>', 1, 'blogimages/pexels-cottonbro-studio-4009599.jpg', 'blogimages/pexels-tima-miroshnichenko-6498773.jpg', '2023-03-06 10:07:24.320583', '2023-03-06 05:22:51.507411', NULL, 5, 4),
(3, 'Exploring the World of Cryptocurrency: Understanding Blockchain Technology and its Applications', 'A Comprehensive Guide to Cryptocurrency, Blockchain, and Decentralized Finance (DeFi)', 'exploring-the-world-of-cryptocurrency-understanding-blockchain-technology-and-its-applications', '<meta name=\"title\" content=\"Exploring the World of Cryptocurrency: Understanding Blockchain Technology and its Applications\">\r\n<meta name=\"description\" content=\"A comprehensive guide to the world of cryptocurrency, blockchain, and decentralized finance (DeFi). Explore how blockchain works, its potential applications, and the benefits and challenges of using cryptocurrency for transactions and investments.\">\r\n<meta name=\"keywords\" content=\"cryptocurrency, blockchain, DeFi, decentralized finance, Bitcoin, Ethereum, digital assets, transactions, investments.\">', '<p><span style=\"font-family: Helvetica; font-size: 16px; white-space: pre-wrap;\"><font color=\"#000000\">Cryptocurrency and blockchain technology are changing the way we think about money, transactions, and finance. This blog post provides a comprehensive guide to the world of cryptocurrency, blockchain, and decentralized finance (DeFi). We explore how blockchain works, its potential applications, and the benefits and challenges of using cryptocurrency for transactions and investments.</font></span><br></p>', '<p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\">Cryptocurrency is a digital asset that uses encryption techniques to secure transactions and control the creation of new units. It is decentralized, meaning that it operates independently of a central bank or government. One of the key technologies that enable cryptocurrency is blockchain. Blockchain is a distributed ledger technology that records transactions on a decentralized network of computers. It is secure, transparent, and immutable, making it an ideal technology for cryptocurrency transactions.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\">Cryptocurrency has the potential to revolutionize the way we think about transactions and investments. It offers many benefits, such as low transaction fees, fast and secure transactions, and global accessibility. However, there are also some challenges and risks associated with cryptocurrency, such as price volatility, lack of regulation, and security concerns.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\">Decentralized finance (DeFi) is another application of blockchain technology that is gaining popularity. DeFi refers to a decentralized financial system that operates on a blockchain network. It enables users to access financial services, such as borrowing, lending, and trading, without the need for intermediaries like banks or brokerages.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\">In conclusion, cryptocurrency and blockchain technology are changing the way we think about money and finance. Understanding the basics of blockchain and cryptocurrency is essential for anyone interested in exploring this new and exciting world. By embracing the potential of blockchain and cryptocurrency while also being aware of the challenges and risks, we can unlock a world of new possibilities for transactions and investments.</p>', 1, 'blogimages/pexels-alesia-kozik-6780789.jpg', 'blogimages/pexels-worldspectrum-844124.jpg', '2023-03-06 10:06:13.898599', '2023-03-06 06:18:20.305003', 1, 4, 3),
(4, 'The Rise of Artificial Intelligence: Exploring AI Technology and its Impact on Society', 'An Overview of AI Technology, Machine Learning, and Deep Learning', 'the-rise-of-artificial-intelligence-exploring-ai-technology-and-its-impact-on-society', '<meta name=\"title\" content=\"The Rise of Artificial Intelligence: Exploring AI Technology and its Impact on Society\">\r\n<meta name=\"description\" content=\"An overview of AI technology, including machine learning and deep learning, and its impact on society. We discuss the benefits and challenges of AI, including ethical considerations and the potential for job displacement.\">\r\n<meta name=\"keywords\" content=\"artificial intelligence, AI, machine learning, deep learning, neural networks, automation, robotics, ethics, job displacement.\">', '<p><span style=\"font-family: Helvetica; font-size: 16px; white-space: pre-wrap;\"><font color=\"#000000\">Artificial Intelligence (AI) technology has seen a rapid rise in recent years, with applications in various industries, such as healthcare, finance, and transportation. This blog post provides an overview of AI technology, including machine learning and deep learning, and explores its impact on society. We discuss the benefits and challenges of AI, including ethical considerations and the potential for job displacement.</font></span><br></p>', '<p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\">Artificial Intelligence (AI) is a branch of computer science that deals with creating intelligent machines that can perform tasks that typically require human intelligence. AI technology includes machine learning, which is a type of AI that enables machines to learn from data and improve over time. Deep learning is a subset of machine learning that uses neural networks, a type of algorithm inspired by the structure of the human brain, to process and analyze large amounts of data.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\">AI technology has the potential to revolutionize various industries, from healthcare and finance to transportation and manufacturing. It can automate tasks, reduce errors, and improve efficiency and accuracy. However, there are also concerns and challenges associated with AI, such as ethical considerations, privacy and security, and the potential for job displacement.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\">One of the key ethical considerations of AI is the potential for bias in decision-making. AI systems learn from data, and if the data is biased, the AI system may perpetuate and amplify that bias. Another ethical concern is the potential for AI to replace human workers, particularly in jobs that involve routine tasks or manual labor.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\">In conclusion, AI technology is rapidly evolving and has the potential to transform the way we live and work. Understanding the basics of AI, machine learning, and deep learning is essential for anyone interested in exploring this new and exciting field. By being aware of the benefits and challenges of AI and working to address the ethical considerations, we can ensure that AI technology is used responsibly and for the benefit of society.</p>', 1, 'blogimages/pexels-kindel-media-8566524.jpg', 'blogimages/pexels-pavel-danilyuk-8294608.jpg', '2023-03-06 08:28:58.365725', '2023-03-06 08:28:58.365725', 1, 1, 2);
INSERT INTO `blogs_post` (`id`, `title`, `subtitle`, `slug`, `metatag`, `precontent`, `content`, `status`, `image`, `bannerimage`, `updated_on`, `created_on`, `author_id`, `category_id`, `labeltag_id`) VALUES
(5, 'The Power of Blockchain: Understanding the Technology Behind Cryptocurrencies', 'A Beginner\'s Guide to Blockchain Technology and Cryptocurrencies', 'the-power-of-blockchain-understanding-the-technology-behind-cryptocurrencies', '<meta name=\"title\" content=\"The Power of Blockchain: Understanding the Technology Behind Cryptocurrencies\">\r\n<meta name=\"description\" content=\"A beginner\'s guide to blockchain technology and its applications beyond cryptocurrencies. We will explore the basics of blockchain technology, including its decentralized nature and its potential to revolutionize various industries, such as finance, healthcare, and supply chain management.\">\r\n<meta name=\"keywords\" content=\"blockchain, cryptocurrencies, Bitcoin, Ethereum, decentralized, distributed ledger, finance, healthcare, supply chain management.\">', '<p><span>Blockchain technology has become increasingly popular due to its association with cryptocurrencies such as Bitcoin and Ethereum. This blog post provides a beginner\'s guide to blockchain technology and its applications beyond cryptocurrencies. We will explore the basics of blockchain technology, including its decentralized nature and its potential to revolutionize various industries, such as finance, healthcare, and supply chain management.</span><br></p>', '<p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\">Blockchain technology is a decentralized and distributed ledger that allows transactions to be recorded in a secure and transparent manner. Each block in the chain contains a cryptographic hash of the previous block, creating an unbreakable chain of data. The decentralized nature of blockchain technology means that there is no single point of failure, making it highly secure and resistant to tampering.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\">While blockchain technology is often associated with cryptocurrencies such as Bitcoin and Ethereum, its applications extend far beyond digital currencies. In finance, blockchain technology can be used for secure and efficient transactions, reducing costs and improving transparency. In healthcare, blockchain technology can be used for secure storage and sharing of patient data, improving the accuracy and speed of diagnoses. In supply chain management, blockchain technology can be used for tracking and verifying the authenticity of products, reducing the risk of fraud and counterfeit goods.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\">In conclusion, blockchain technology has the potential to revolutionize various industries and transform the way we live and work. Understanding the basics of blockchain technology and its applications beyond cryptocurrencies is essential for anyone interested in exploring this exciting and rapidly evolving field. By embracing the power of blockchain technology, we can create a more secure, transparent, and efficient world.</p>', 1, 'blogimages/pexels-tima-miroshnichenko-7567529.jpg', 'blogimages/pexels-worldspectrum-1099339.jpg', '2023-03-06 10:06:21.059827', '2023-03-06 10:05:01.532174', 1, 4, 3),
(6, 'The Future of Flight: Exploring the Latest Advancements in Aircraft Technology', 'From Electric Planes to Hypersonic Jets, a Look at the Innovations that are Shaping the Future of Aviation', 'the-future-of-flight-exploring-the-latest-advancements-in-aircraft-technology', '<meta name=\"title\" content=\"The Future of Flight: Exploring the Latest Advancements in Aircraft Technology\">\r\n<meta name=\"description\" content=\"From electric planes to hypersonic jets, a look at the innovations that are shaping the future of aviation. This blog post will explore the latest advancements in aircraft technology and their potential to revolutionize the way we travel.\">\r\n<meta name=\"keywords\" content=\"aircraft, aviation, electric planes, hypersonic jets, technology, travel.\">', '<p>Aviation technology has come a long way since the Wright Brothers\' first flight in 1903. Today, we are on the cusp of a new era in aviation with the development of electric planes, hypersonic jets, and other cutting-edge technologies. This blog post will explore the latest advancements in aircraft technology and their potential to revolutionize the way we travel.</p>', '<p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\">Electric planes are one of the latest advancements in aircraft technology, with companies such as Airbus and Boeing developing electric propulsion systems that could potentially reduce carbon emissions and noise pollution. Another exciting development in aviation technology is the creation of hypersonic jets, which can travel at speeds of Mach 5 or higher, reducing travel time and opening up new possibilities for space exploration.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\">In addition to electric planes and hypersonic jets, other innovations such as AI-powered autopilot systems, improved aerodynamics, and advanced materials are also making air travel safer, more efficient, and more comfortable. With these advancements, we could soon see a future where air travel is faster, greener, and more accessible than ever before.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\">In conclusion, the latest advancements in aircraft technology are shaping the future of flight and have the potential to transform the way we travel. From electric planes to hypersonic jets, the innovations in aviation technology are creating new possibilities for space exploration and making air travel more sustainable, efficient, and comfortable for passengers.</p>', 1, 'blogimages/pexels-sheila-731217.jpg', 'blogimages/pexels-pixabay-358319.jpg', '2023-03-06 10:12:47.509171', '2023-03-06 10:12:47.509171', 1, 6, 5),
(7, 'The Evolution of Smartphones: From Portable Communication Devices to Pocket-sized Powerhouses', 'A Look at the Technological Advancements and Future of Smartphone Technology', 'the-evolution-of-smartphones-from-portable-communication-devices-to-pocket-sized-powerhouses', '<meta name=\"title\" content=\"The Evolution of Smartphones: From Portable Communication Devices to Pocket-sized Powerhouses\">\r\n<meta name=\"description\" content=\"A look at the technological advancements and future of smartphone technology. This blog post will explore the evolution of smartphones, the technological advancements that have made them possible, and the future of smartphone technology.\">\r\n<meta name=\"keywords\" content=\"smartphones, communication, technology, evolution, future.\">', '<p>Since the introduction of the first iPhone in 2007, smartphones have revolutionized the way we communicate, work, and entertain ourselves. From basic communication devices to pocket-sized powerhouses, smartphones have come a long way in a short period of time. This blog post will explore the evolution of smartphones, the technological advancements that have made them possible, and the future of smartphone technology.</p>', '<p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\">Smartphones have undergone numerous technological advancements over the years, including improvements in processing power, battery life, and camera technology. In addition, the introduction of mobile apps has made smartphones more versatile than ever, with users able to access a wide range of services and functions on-the-go.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 1.25em; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\">Looking towards the future, the development of 5G technology is expected to bring faster download and upload speeds, making it easier to stream high-quality video and access the internet from anywhere. Augmented and virtual reality technologies are also expected to become more prevalent in smartphones, opening up new possibilities for entertainment, education, and communication.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 transparent; --tw-ring-shadow:0 0 transparent; --tw-shadow:0 0 transparent; --tw-shadow-colored:0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-bottom: 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space: pre-wrap;\">Overall, smartphones have come a long way since their introduction over a decade ago. With the continued development of new technologies, smartphones are set to become even more powerful, versatile, and essential to our daily lives in the years to come.</p>', 1, 'blogimages/pexels-gije-cho-2207799.jpg', 'blogimages/pexels-noah-erickson-404280.jpg', '2023-03-06 10:17:05.708134', '2023-03-06 10:17:05.708134', 1, 7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `blogs_tag`
--

CREATE TABLE `blogs_tag` (
  `id` bigint(20) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `updated_on` datetime(6) NOT NULL,
  `created_on` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-03-06 04:23:51.281955', '1', 'Technology', 1, '[{\"added\": {}}]', 5, 1),
(2, '2023-03-06 04:24:12.665474', '2', 'Fashion', 1, '[{\"added\": {}}]', 5, 1),
(3, '2023-03-06 04:39:10.466644', '1', 'The Future of Technology: Exploring Emerging Trends and Innovations', 1, '[{\"added\": {}}]', 9, 1),
(4, '2023-03-06 04:52:44.483366', '1', 'The Future of Technology: Exploring Emerging Trends and Innovations', 2, '[{\"changed\": {\"fields\": [\"Metatag\"]}}]', 9, 1),
(5, '2023-03-06 04:57:53.660299', '1', 'The Future of Technology: Exploring Emerging Trends and Innovations', 2, '[{\"changed\": {\"fields\": [\"Metatag\"]}}]', 9, 1),
(6, '2023-03-06 05:00:47.888311', '1', 'The Future of Technology: Exploring Emerging Trends and Innovations', 2, '[]', 9, 1),
(7, '2023-03-06 05:22:51.509410', '2', 'The Rise of Augmented Reality: How AR is Transforming Our World', 1, '[{\"added\": {}}]', 9, 1),
(8, '2023-03-06 05:22:59.620744', '2', 'The Rise of Augmented Reality: How AR is Transforming Our World', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 9, 1),
(9, '2023-03-06 05:23:58.214435', '2', 'The Rise of Augmented Reality: How AR is Transforming Our World', 2, '[{\"changed\": {\"fields\": [\"Precontent\"]}}]', 9, 1),
(10, '2023-03-06 05:26:39.525842', '2', 'The Rise of Augmented Reality: How AR is Transforming Our World', 2, '[]', 9, 1),
(11, '2023-03-06 05:28:08.059238', '2', 'The Rise of Augmented Reality: How AR is Transforming Our World', 2, '[{\"changed\": {\"fields\": [\"Precontent\"]}}]', 9, 1),
(12, '2023-03-06 06:03:02.812455', '3', 'Technology -> Python', 1, '[{\"added\": {}}]', 5, 1),
(13, '2023-03-06 06:03:25.781080', '1', 'Python', 1, '[{\"added\": {}}]', 7, 1),
(14, '2023-03-06 06:07:46.413693', '1', 'Advance Calculator Using Python', 1, '[{\"added\": {}}]', 6, 1),
(15, '2023-03-06 06:11:27.066992', '1', 'Advance Calculator Using Python', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 6, 1),
(16, '2023-03-06 06:18:20.306001', '3', 'Exploring the World of Cryptocurrency: Understanding Blockchain Technology and its Applications', 1, '[{\"added\": {}}]', 9, 1),
(17, '2023-03-06 06:19:15.286885', '3', 'Exploring the World of Cryptocurrency: Understanding Blockchain Technology and its Applications', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(18, '2023-03-06 06:19:57.018547', '3', 'Exploring the World of Cryptocurrency: Understanding Blockchain Technology and its Applications', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(19, '2023-03-06 06:20:13.797173', '3', 'Exploring the World of Cryptocurrency: Understanding Blockchain Technology and its Applications', 2, '[{\"changed\": {\"fields\": [\"Precontent\"]}}]', 9, 1),
(20, '2023-03-06 06:20:35.457674', '3', 'Exploring the World of Cryptocurrency: Understanding Blockchain Technology and its Applications', 2, '[{\"changed\": {\"fields\": [\"Precontent\"]}}]', 9, 1),
(21, '2023-03-06 06:21:00.856556', '3', 'Exploring the World of Cryptocurrency: Understanding Blockchain Technology and its Applications', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 9, 1),
(22, '2023-03-06 08:13:18.166845', '1', '85b73cb24cd77fa5b124fb78770b905d7f5b3739', 1, '[{\"added\": {}}]', 2, 1),
(23, '2023-03-06 08:13:28.274237', '1', '85b73cb24cd77fa5b124fb78770b905d7f5b3739', 3, '', 2, 1),
(24, '2023-03-06 08:26:09.265566', '2', 'A.I.', 1, '[{\"added\": {}}]', 7, 1),
(25, '2023-03-06 08:28:58.365725', '4', 'The Rise of Artificial Intelligence: Exploring AI Technology and its Impact on Society', 1, '[{\"added\": {}}]', 9, 1),
(26, '2023-03-06 10:02:49.636440', '4', 'Technology -> Blockchain', 1, '[{\"added\": {}}]', 5, 1),
(27, '2023-03-06 10:05:01.533172', '5', 'The Power of Blockchain: Understanding the Technology Behind Cryptocurrencies', 1, '[{\"added\": {}}]', 9, 1),
(28, '2023-03-06 10:05:30.819590', '5', 'The Power of Blockchain: Understanding the Technology Behind Cryptocurrencies', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 9, 1),
(29, '2023-03-06 10:06:09.496402', '3', 'Blockchain', 1, '[{\"added\": {}}]', 7, 1),
(30, '2023-03-06 10:06:13.901591', '3', 'Exploring the World of Cryptocurrency: Understanding Blockchain Technology and its Applications', 2, '[{\"changed\": {\"fields\": [\"Category\", \"Labeltag\"]}}]', 9, 1),
(31, '2023-03-06 10:06:21.062817', '5', 'The Power of Blockchain: Understanding the Technology Behind Cryptocurrencies', 2, '[{\"changed\": {\"fields\": [\"Labeltag\"]}}]', 9, 1),
(32, '2023-03-06 10:07:09.371418', '5', 'Technology -> Augmented Reality', 1, '[{\"added\": {}}]', 5, 1),
(33, '2023-03-06 10:07:20.926572', '4', 'Augmented Reality', 1, '[{\"added\": {}}]', 7, 1),
(34, '2023-03-06 10:07:24.322616', '2', 'The Rise of Augmented Reality: How AR is Transforming Our World', 2, '[{\"changed\": {\"fields\": [\"Category\", \"Labeltag\"]}}]', 9, 1),
(35, '2023-03-06 10:07:58.061577', '1', 'The Future of Technology: Exploring Emerging Trends and Innovations', 2, '[{\"changed\": {\"fields\": [\"Metatag\", \"Category\", \"Labeltag\"]}}]', 9, 1),
(36, '2023-03-06 10:11:09.481350', '6', 'Aircraft', 1, '[{\"added\": {}}]', 5, 1),
(37, '2023-03-06 10:11:49.508985', '5', 'aircraft', 1, '[{\"added\": {}}]', 7, 1),
(38, '2023-03-06 10:12:47.511075', '6', 'The Future of Flight: Exploring the Latest Advancements in Aircraft Technology', 1, '[{\"added\": {}}]', 9, 1),
(39, '2023-03-06 10:15:25.228231', '7', 'Technology -> Smartphones', 1, '[{\"added\": {}}]', 5, 1),
(40, '2023-03-06 10:15:41.880223', '6', 'Smartphone', 1, '[{\"added\": {}}]', 7, 1),
(41, '2023-03-06 10:17:05.709131', '7', 'The Evolution of Smartphones: From Portable Communication Devices to Pocket-sized Powerhouses', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(12, 'admin', 'logentry'),
(14, 'auth', 'group'),
(13, 'auth', 'permission'),
(15, 'auth', 'user'),
(1, 'authtoken', 'token'),
(2, 'authtoken', 'tokenproxy'),
(5, 'blogs', 'categories'),
(6, 'blogs', 'codes'),
(10, 'blogs', 'comment'),
(7, 'blogs', 'labeltag'),
(9, 'blogs', 'post'),
(8, 'blogs', 'tag'),
(16, 'contenttypes', 'contenttype'),
(3, 'django_summernote', 'attachment'),
(11, 'multimedia', 'multimediafile'),
(17, 'sessions', 'session'),
(4, 'users', 'profile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-06 04:20:27.686292'),
(2, 'auth', '0001_initial', '2023-03-06 04:20:27.938948'),
(3, 'admin', '0001_initial', '2023-03-06 04:20:27.999685'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-06 04:20:28.006618'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-06 04:20:28.015585'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-06 04:20:28.066262'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-03-06 04:20:28.107815'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-03-06 04:20:28.125580'),
(9, 'auth', '0004_alter_user_username_opts', '2023-03-06 04:20:28.136424'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-03-06 04:20:28.165014'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-03-06 04:20:28.168955'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-06 04:20:28.177950'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-03-06 04:20:28.190648'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-06 04:20:28.204847'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-03-06 04:20:28.217596'),
(16, 'auth', '0011_update_proxy_permissions', '2023-03-06 04:20:28.226311'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-06 04:20:28.240499'),
(18, 'authtoken', '0001_initial', '2023-03-06 04:20:28.285656'),
(19, 'authtoken', '0002_auto_20160226_1747', '2023-03-06 04:20:28.311044'),
(20, 'authtoken', '0003_tokenproxy', '2023-03-06 04:20:28.315498'),
(21, 'blogs', '0001_initial', '2023-03-06 04:20:28.625664'),
(22, 'blogs', '0002_alter_codes_bannerimage_alter_codes_image_and_more', '2023-03-06 04:20:28.714695'),
(23, 'django_summernote', '0001_initial', '2023-03-06 04:20:28.729200'),
(24, 'django_summernote', '0002_update-help_text', '2023-03-06 04:20:28.734127'),
(25, 'django_summernote', '0003_alter_attachment_id', '2023-03-06 04:20:28.770595'),
(26, 'multimedia', '0001_initial', '2023-03-06 04:20:28.789112'),
(27, 'sessions', '0001_initial', '2023-03-06 04:20:28.833989'),
(28, 'users', '0001_initial', '2023-03-06 04:20:28.898443'),
(29, 'users', '0002_alter_profile_image', '2023-03-06 04:20:28.919108');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('kupa1ppsj9d0jp2govqjdwi7594vkoav', '.eJxVjMsOwiAQRf-FtSEwlJdL934DGRiQqoGktCvjv2uTLnR7zzn3xQJuaw3byEuYiZ2ZZKffLWJ65LYDumO7dZ56W5c58l3hBx382ik_L4f7d1Bx1G9trVNQ0IsUhdRGoCZtFZhiZLFIIIVXespZe2cmAEkIpMmoVLxyyTr2_gC7szbs:1pZ2NR:8Vhs6ikf65CLYa6fXoSBusNiKgvgciUJ8P7-ZLZtqv4', '2023-03-20 04:23:09.586054');

-- --------------------------------------------------------

--
-- Table structure for table `django_summernote_attachment`
--

CREATE TABLE `django_summernote_attachment` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `uploaded` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `multimedia_multimediafile`
--

CREATE TABLE `multimedia_multimediafile` (
  `id` bigint(20) NOT NULL,
  `file` varchar(100) NOT NULL,
  `updated_on` datetime(6) NOT NULL,
  `created_on` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_profile`
--

CREATE TABLE `users_profile` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `blogs_categories`
--
ALTER TABLE `blogs_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `blogs_categories_slug_parent_id_137dde09_uniq` (`slug`,`parent_id`),
  ADD KEY `blogs_categories_tree_id_ad818d33` (`tree_id`),
  ADD KEY `blogs_categories_parent_id_e7a40d7f` (`parent_id`);

--
-- Indexes for table `blogs_codes`
--
ALTER TABLE `blogs_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `blogs_codes_labeltag_id_38b87989_fk_blogs_labeltag_id` (`labeltag_id`),
  ADD KEY `blogs_codes_author_id_1ea2c508_fk_auth_user_id` (`author_id`),
  ADD KEY `blogs_codes_category_id_197b66e8_fk_blogs_categories_id` (`category_id`);

--
-- Indexes for table `blogs_comment`
--
ALTER TABLE `blogs_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_comment_codename_id_bfc4f9a0_fk_blogs_codes_id` (`codename_id`),
  ADD KEY `blogs_comment_postname_id_24783f76_fk_blogs_post_id` (`postname_id`);

--
-- Indexes for table `blogs_labeltag`
--
ALTER TABLE `blogs_labeltag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs_post`
--
ALTER TABLE `blogs_post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `blogs_post_author_id_c7d05c07_fk_auth_user_id` (`author_id`),
  ADD KEY `blogs_post_category_id_10b67abe_fk_blogs_categories_id` (`category_id`),
  ADD KEY `blogs_post_labeltag_id_8f70f6e2_fk_blogs_labeltag_id` (`labeltag_id`);

--
-- Indexes for table `blogs_tag`
--
ALTER TABLE `blogs_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `django_summernote_attachment`
--
ALTER TABLE `django_summernote_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multimedia_multimediafile`
--
ALTER TABLE `multimedia_multimediafile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs_categories`
--
ALTER TABLE `blogs_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blogs_codes`
--
ALTER TABLE `blogs_codes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs_comment`
--
ALTER TABLE `blogs_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs_labeltag`
--
ALTER TABLE `blogs_labeltag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs_post`
--
ALTER TABLE `blogs_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blogs_tag`
--
ALTER TABLE `blogs_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `django_summernote_attachment`
--
ALTER TABLE `django_summernote_attachment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `multimedia_multimediafile`
--
ALTER TABLE `multimedia_multimediafile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_profile`
--
ALTER TABLE `users_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `blogs_categories`
--
ALTER TABLE `blogs_categories`
  ADD CONSTRAINT `blogs_categories_parent_id_e7a40d7f_fk_blogs_categories_id` FOREIGN KEY (`parent_id`) REFERENCES `blogs_categories` (`id`);

--
-- Constraints for table `blogs_codes`
--
ALTER TABLE `blogs_codes`
  ADD CONSTRAINT `blogs_codes_author_id_1ea2c508_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `blogs_codes_category_id_197b66e8_fk_blogs_categories_id` FOREIGN KEY (`category_id`) REFERENCES `blogs_categories` (`id`),
  ADD CONSTRAINT `blogs_codes_labeltag_id_38b87989_fk_blogs_labeltag_id` FOREIGN KEY (`labeltag_id`) REFERENCES `blogs_labeltag` (`id`);

--
-- Constraints for table `blogs_comment`
--
ALTER TABLE `blogs_comment`
  ADD CONSTRAINT `blogs_comment_codename_id_bfc4f9a0_fk_blogs_codes_id` FOREIGN KEY (`codename_id`) REFERENCES `blogs_codes` (`id`),
  ADD CONSTRAINT `blogs_comment_postname_id_24783f76_fk_blogs_post_id` FOREIGN KEY (`postname_id`) REFERENCES `blogs_post` (`id`);

--
-- Constraints for table `blogs_post`
--
ALTER TABLE `blogs_post`
  ADD CONSTRAINT `blogs_post_author_id_c7d05c07_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `blogs_post_category_id_10b67abe_fk_blogs_categories_id` FOREIGN KEY (`category_id`) REFERENCES `blogs_categories` (`id`),
  ADD CONSTRAINT `blogs_post_labeltag_id_8f70f6e2_fk_blogs_labeltag_id` FOREIGN KEY (`labeltag_id`) REFERENCES `blogs_labeltag` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD CONSTRAINT `users_profile_user_id_2112e78d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
