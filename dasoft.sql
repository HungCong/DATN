-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 20, 2021 lúc 11:07 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dasoft`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `email`, `name`, `password`, `isdeleted`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin@gmail.com', 'admin', '$2y$10$qc.GPvUuhA1P7jOjNBY5Te/Ta75uPBet8VNpGzEnJ9g.3m52H5THa', 0, 'vA1EW7ENnu4QIGVvqrq1wg5vAHwkEs2PTvrs3uIBK4thTiuP20VhlFc2aja6', NULL, NULL),
(8, 'thong@gmail.com', 'Phan Thong', '$2y$10$Z6335.xIZIV892XtEEL0D.Vzsc0VGMe06ZBarYdS.gXxZl49m5XpW', 0, NULL, '2020-08-24 09:08:46', '2020-08-24 09:08:46'),
(9, 'vinh@gmail.com', 'Phan  Vinh', '$2y$10$5tUNzRUC8kFv5O.tVVSwcOgbN7rmAGsItBaIoEhG8EWr5I/VS1wXu', 0, NULL, '2020-08-24 09:10:01', '2020-08-24 09:10:01'),
(10, 'quang@gmail.com', 'Le Quang 123', '$2y$10$hDFKVh6yWxHLfXf3PwU6wOcbhW1IH4gjsJgdRJ8PP4uwqJgJRpkCG', 0, NULL, '2020-08-24 09:10:59', '2021-04-18 08:43:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdeleted` tinyint(1) NOT NULL DEFAULT 0,
  `reply` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `email`, `title`, `content`, `isdeleted`, `reply`, `reply_by`, `created_at`, `updated_at`) VALUES
(1, 'Lee Van Quang', 'duachutthoinhe123@gmail.com', 'Thanks hotel', '\r\nThank the hotel with the excellent service and friendly staff', 0, '\r\nThanks Quang, see you someday', 2, '2020-07-24 04:22:13', '2020-07-24 04:24:32'),
(2, 'Admin', 'duachutthoinhe123@gmail.com', '\r\nThanks for everything', 'sdjfgsdhfgsdfgsdfdgsjfgsdjf', 0, 'Heloo bạn', 3, '2020-07-24 04:26:13', '2020-08-02 08:44:44'),
(3, 'Admin', 'phanvanthong555@gmail.com', 'Thanks hotel', 'sdfkhsdyfudskgfds', 0, 'FDFDHGFGFH', 2, '2020-07-24 04:27:04', '2020-07-24 04:27:28'),
(4, 'hello', 'duachutthoinhe123@gmail.com', '\r\nThanks for everything', 'hfdghkhsdfsdf', 0, 'dgshjfsdff', 2, '2020-07-25 10:25:17', '2020-07-25 10:25:31'),
(5, 'Quang', 'duachutthoinhe123@gmail.com', 'Good looking', 'Good looking Good looking Good looking Good looking Good looking', 0, 'Quang', 2, '2020-08-05 00:52:10', '2020-08-12 23:26:51'),
(6, 'Toàn', 'toan@gmail.com', 'I\'m very good', 'I\'m very goodI\'m very goodI\'m very goodI\'m very goodI\'m very goodI\'m very good', 0, 'Toan', 2, '2020-08-05 00:57:52', '2020-08-12 23:36:33'),
(7, 'Quang', 'duachutthoinhe123@gmail.com', 'Hello', 'Hello Hello Hello Hello', 0, 'Quang DDep Trai', 2, '2020-08-11 06:03:28', '2020-08-12 23:38:03'),
(8, 'Đỗ Huy Hùng', 'hung@gmail.com', 'Service', 'Good', 0, 'Thank\'s', 2, '2020-08-16 06:26:16', '2020-08-16 06:26:43'),
(9, 'Minh Thư', 'quang38173@gmail.com', 'Thank you Hotel', 'Good', 0, 'Cảm ơn quý khách đã góp ý', 2, '2020-08-17 08:52:32', '2020-08-17 08:53:22'),
(10, 'Bảo Thư', 'quang38173@donga.edu.vn', 'Dịch vụ của khách sạn rất tốt', 'Dịch vụ của khách sạn rất tốt', 0, 'Cảm ơn quý khách !', 2, '2020-08-17 08:54:20', '2020-08-17 09:00:12'),
(11, 'Lê Quốc Hùng', 'Quoc@gmail.com', 'Hotel Good', 'Hotel GoodHotel GoodHotel GoodHotel GoodHotel GoodHotel Good', 0, NULL, NULL, '2020-08-19 01:27:12', '2020-08-19 01:27:12'),
(12, 'Lê Quốc Hùng', 'hung@gmail.com', 'Hotel Good', 'Hotel GoodHotel GoodHotel GoodHotel Good', 0, NULL, NULL, '2020-08-19 01:29:38', '2020-08-19 01:29:38'),
(13, 'Lê Quốc Hùng', 'hungquoc@gmail.com', 'Hotel Good', 'GoodGoodGoodGoodGood', 0, NULL, NULL, '2020-08-19 01:37:34', '2020-08-19 01:37:34'),
(14, 'Lê Quốc Hùng', 'hungquoc@gmail.com', 'Hotel Good', 'GoodGoodGoodGoodGood', 0, NULL, NULL, '2020-08-19 01:37:47', '2020-08-19 01:37:47'),
(15, 'Bảo Linh', 'Linh@gmail.com', 'Dịch vụ phòng', 'Khách sạn nên tăng giá dịch vụ lên', 0, NULL, NULL, '2020-08-24 08:58:47', '2020-08-24 08:58:47'),
(16, 'Hoài Linh', 'hoailinh@gmail.com', 'Khách sạn', 'Tôi cảm thấy khách sạn nên tạo ra nhiều dịch vụ phát sinh trong quá trình đặt phòng', 0, NULL, NULL, '2020-08-24 09:00:33', '2020-08-24 09:00:33'),
(17, 'Ty', 'duachutthoinhe123@gmail.com', 'Titit', 'Ok', 0, NULL, NULL, '2021-04-07 09:41:40', '2021-04-07 09:41:40'),
(18, 'dskfds', 'duachutthoinhe123@gmail.com', '0868', 'dfsdfdsf', 0, 'dsfd', 2, '2021-04-11 01:46:54', '2021-04-11 01:55:58'),
(19, 'ten a', 'hoi38272@donga.edu.vn', 'no', 'no', 0, 'ok', 2, '2021-04-11 07:08:07', '2021-04-11 07:08:21'),
(20, 'the tai', 'anhtai0135@gmail.com', 'phản hồi phần mềm', 'key chạy rất tốt', 0, 'cảm on bạn đã mua sản phẩm ...', 2, '2021-04-11 07:38:16', '2021-04-11 07:38:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member`
--

CREATE TABLE `member` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `member`
--

INSERT INTO `member` (`id`, `email`, `created_at`, `updated_at`) VALUES
(3, 'phanvanthong555@gmail.com', '2020-08-24 08:56:42', '2020-08-24 08:56:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(50, '2021_04_02_081723_add-table-product', 2),
(51, '2021_04_01_072300_add_table_newtypes', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(4, 'App\\Models\\Admin', 2),
(7, 'App\\Models\\Admin', 9),
(7, 'App\\Models\\Admin', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
('05d893d2-1ac4-4f73-9b5b-26af88e22bae', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":43}', NULL, '2020-08-24 07:59:33', '2020-08-24 07:59:33', NULL),
('06ef9ba6-b260-4bb2-8a77-470356d7d2dc', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 18, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":18}', '2021-04-11 01:47:03', '2021-04-11 01:46:54', '2021-04-11 01:47:03', NULL),
('09efd5e5-1160-4b70-b777-8686a7b3345e', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":25}', '2020-08-13 07:28:51', '2020-08-12 07:43:07', '2020-08-13 07:28:51', NULL),
('1b1a777d-76a0-40b7-85cb-f1bcb3f4dee0', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":39}', '2020-08-19 02:39:16', '2020-08-19 01:10:28', '2020-08-19 02:39:16', NULL),
('205da0fb-3d8f-4526-83b6-160a59e2b5ee', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 31, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":33}', '2020-08-16 04:58:37', '2020-08-16 03:07:45', '2020-08-16 04:58:37', NULL),
('264a1c5a-f848-4781-8a42-b131866f3b5f', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 32, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":51}', '2020-08-19 01:14:17', '2020-08-18 02:48:34', '2020-08-19 01:14:17', NULL),
('273399f0-c11d-4e71-891a-c67e9908146d', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":7}', '2020-08-11 06:03:39', '2020-08-11 06:03:28', '2020-08-11 06:03:39', NULL),
('2ca363a9-8e2b-4882-a406-fe8928e23f4a', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":16}', '2020-08-11 05:37:30', '2020-08-11 05:29:04', '2020-08-11 05:37:30', NULL),
('2d748b3b-f570-4912-9b28-ac3acf045615', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 17, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":17}', NULL, '2021-04-07 09:41:40', '2021-04-07 09:41:40', NULL),
('31cd8ca2-a0db-489c-8ec7-4af0406dd22d', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":17}', '2020-08-15 00:08:56', '2020-08-11 05:29:31', '2020-08-15 00:08:56', NULL),
('350a6d99-4f1b-4fb5-9530-3dc2cc23341e', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 37, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":49}', NULL, '2020-08-24 08:44:01', '2020-08-24 08:44:01', NULL),
('379ff9a8-c09d-409e-b95e-5c79ad898268', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":20}', '2020-08-11 05:44:01', '2020-08-11 05:43:53', '2020-08-11 05:44:01', NULL),
('3e0dfc5a-f078-429c-b512-f4f6ffe2bd74', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":24}', '2020-08-15 00:09:05', '2020-08-11 08:17:54', '2020-08-15 00:09:05', NULL),
('3f3910a8-0adf-4f87-819a-0401b461eea0', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 36, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":47}', NULL, '2020-08-24 08:40:47', '2020-08-24 08:40:47', NULL),
('49e302a8-2c4d-42c7-9d4a-9b9dd9f4d23c', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":30}', NULL, '2020-08-15 08:53:52', '2020-08-15 08:53:52', NULL),
('558a47ea-b967-4767-b973-9a20e0a571b4', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 21, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":45}', NULL, '2020-08-24 08:34:56', '2020-08-24 08:34:56', NULL),
('562b008d-c712-4edb-b5d5-2bd4789a3ecb', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 16, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":16}', NULL, '2020-08-24 09:00:34', '2020-08-24 09:00:34', NULL),
('5bb4c305-d0b7-4db0-8034-988486798497', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":23}', '2020-08-15 00:09:02', '2020-08-11 08:06:40', '2020-08-15 00:09:02', NULL),
('68472b8b-1919-4d53-af35-e0fb9c183b26', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":21}', '2020-08-11 06:03:50', '2020-08-11 05:47:25', '2020-08-11 06:03:50', NULL),
('72697ffb-9060-4411-aaf4-59b601fa1797', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":19}', '2020-08-15 00:09:00', '2020-08-11 05:38:57', '2020-08-15 00:09:00', NULL),
('7a3680b0-f833-4696-862a-dbd80cb432e4', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":26}', '2020-08-15 00:09:08', '2020-08-13 23:53:25', '2020-08-15 00:09:08', NULL),
('7a89a5e5-e6e2-4248-b350-953a11646cec', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":32}', '2020-08-16 04:58:41', '2020-08-15 09:43:51', '2020-08-16 04:58:41', NULL),
('81f8092a-e982-47ba-ad52-329c5c007c0d', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 36, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":48}', NULL, '2020-08-24 08:42:03', '2020-08-24 08:42:03', NULL),
('9c105b48-3e68-473a-9df9-2e05df447c19', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 32, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":50}', '2020-08-19 01:14:21', '2020-08-18 01:13:30', '2020-08-19 01:14:21', NULL),
('a1190619-1269-43c3-9d26-5bf8677b809e', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 31, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":34}', '2020-08-16 04:58:33', '2020-08-16 03:12:13', '2020-08-16 04:58:33', NULL),
('a5104713-8f9e-4552-ad95-3f492e42f2bd', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 19, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":19}', NULL, '2021-04-11 07:08:07', '2021-04-11 07:08:07', NULL),
('ab0cb11a-6085-4b9d-94c2-f782e5fef09d', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 14, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":14}', '2020-08-23 05:55:59', '2020-08-19 01:37:47', '2020-08-23 05:55:59', NULL),
('ae6cc61b-1caa-4542-9428-e41a039e4512', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":27}', NULL, '2020-08-13 23:55:29', '2020-08-13 23:55:29', NULL),
('b0c04309-46c1-4b89-9b69-7bae3d19717b', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":41}', NULL, '2020-08-24 07:53:02', '2020-08-24 07:53:02', NULL),
('bc6b4037-69f4-4381-a1a8-cbf91e1fbe6d', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":18}', '2020-08-11 05:37:26', '2020-08-11 05:34:26', '2020-08-11 05:37:26', NULL),
('bfff686c-a83a-4ef9-b014-3219d119209e', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":8}', '2020-08-16 07:17:06', '2020-08-16 06:26:17', '2020-08-16 07:17:06', NULL),
('c1e44801-e787-45d2-9ed8-833e2d69a577', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\User', 32, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":10}', '2020-08-19 01:14:24', '2020-08-17 08:54:20', '2020-08-19 01:14:24', NULL),
('c9679f21-7866-47cb-a9aa-658500019864', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 15, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":15}', NULL, '2020-08-24 08:58:47', '2020-08-24 08:58:47', NULL),
('ccb20e87-d4be-4241-80a8-bd46900e369c', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":22}', '2020-08-11 06:03:46', '2020-08-11 05:51:09', '2020-08-11 06:03:46', NULL),
('d58010b8-277a-4c90-9ae8-703249a563b1', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 20, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":20}', '2021-04-11 09:52:31', '2021-04-11 07:38:17', '2021-04-11 09:52:31', NULL),
('e1e711ff-5827-41b5-9e1e-fccd88df7182', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":31}', '2020-08-19 01:14:30', '2020-08-15 09:04:24', '2020-08-19 01:14:30', NULL),
('e21bf8e3-2a6b-49de-9461-06094ae6b53c', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\User', 32, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":9}', '2020-08-19 01:14:27', '2020-08-17 08:52:32', '2020-08-19 01:14:27', NULL),
('e938ba80-9b46-4724-aea9-e6b67f251c93', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":29}', '2020-08-14 06:01:29', '2020-08-14 03:00:28', '2020-08-14 06:01:29', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_tb`
--

CREATE TABLE `orders_tb` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_date` date NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_product` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` int(11) NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `isdeleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_tb`
--

INSERT INTO `orders_tb` (`id`, `order_code`, `transaction_date`, `full_name`, `phone`, `email`, `key_product`, `total_amount`, `message`, `product_id`, `status`, `isdeleted`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '669987202146', '2021-04-06', 'Lee Zong', '0868486885', 'duachutthoinhe123@gmail.com', 'fsdfsdfdsfdsfds', 200, 'OK', 1, 0, 0, '39', '2', '2021-04-06 01:01:51', '2021-04-11 01:34:21'),
(2, '6466172021411', '2021-04-11', 'Le Bao', '068486885', 'duachutthoinhe123@gmail.com', 'sdfsdfdsfdsfdsf', 200, '0868485', 1, 1, 0, '41', '2', '2021-04-11 00:48:25', '2021-04-11 01:24:11'),
(3, '2496922021411', '2021-04-11', 'nguyen van a', '0384443456', 'hoi38272@donga.edu.vn', '123adgfgbt', 200, 'toi muon mua phan mem gi do', 1, 1, 0, '42', '2', '2021-04-11 07:04:38', '2021-04-11 07:06:33'),
(4, '4812422021411', '2021-04-11', 'nguyen the tai', '0356735120', 'anhtai0135@gmail.com', '12fFNGD123', 200, 'gọi cho tôi', 1, 1, 0, '44', '2', '2021-04-11 07:34:27', '2021-04-11 07:36:14'),
(5, '9861822021412', '2021-04-12', 'nguyen van a', '0356735120', 'anhtai0135@gmail.com', 'AVC234HKKK', 10, '123123123', 5, 1, 0, '45', '2', '2021-04-12 08:08:48', '2021-04-12 08:10:11'),
(6, '9535202021414', '2021-04-14', 'the tai', '0356735120', 'anhtai0135@gmail.com', '1232132', 20, 'gggygygyggy', 11, 1, 0, '46', '2', '2021-04-14 08:28:43', '2021-04-18 08:47:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`, `deleted_at`) VALUES
('duachutthoinhe123@gmail.com', '$2y$10$PLwhZDkmD2PlQ7LNBrB3CumrlJzvZEKMqbg6kJlLqXd4WirntkEga', '2020-08-17 06:55:34', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(78, 'role-list', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(79, 'role-create', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(80, 'role-edit', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(81, 'role-delete', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(82, 'role-show', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(88, 'newtype-list', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(89, 'newtype-create', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(90, 'newtype-edit', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(91, 'newtype-delete', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(92, 'newtype-show', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(93, 'new-list', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(94, 'new-create', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(95, 'new-edit', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(96, 'new-delete', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(97, 'new-show', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(104, 'user-list', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(105, 'user-edit', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(106, 'user-delete', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(107, 'user-export', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(108, 'user-show', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(109, 'admin-list', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(110, 'admin-create', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(111, 'admin-edit', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(112, 'admin-delete', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(113, 'admin-show', 'admin', '2020-08-12 00:15:06', '2020-08-12 00:15:06'),
(138, 'feedback-list', 'admin', '2020-08-12 00:15:07', '2020-08-12 00:15:07'),
(139, 'feedback-reply', 'admin', '2020-08-12 00:15:07', '2020-08-12 00:15:07'),
(140, 'feedback-edit', 'admin', '2020-08-12 00:15:07', '2020-08-12 00:15:07'),
(145, 'notification-show', 'admin', '2020-08-12 00:15:07', '2020-08-12 00:15:07'),
(146, 'notification-showhight', 'admin', '2020-08-12 00:15:07', '2020-08-12 00:15:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_tb`
--

CREATE TABLE `products_tb` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `manufacturer_price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_type_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `isdeleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_tb`
--

INSERT INTO `products_tb` (`id`, `name`, `description`, `thumbnail`, `price`, `manufacturer_price`, `quantity`, `product_type_id`, `status`, `isdeleted`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Microsoft 365 Business Basic1', '<p>What is Lorem Ipsum?</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2021-Apr-Fri_1617358184938.png', 200, 200, 56, 1, 0, 1, '2', '2', '2021-04-02 03:09:44', '2021-04-12 08:11:56'),
(2, 'Office 365 Home', '<p><img alt=\"\" src=\"https://softvn.vn/wp-content/uploads/2020/02/b%C3%A1n-ph%E1%BA%A7n-m%E1%BB%81m-microsoft-365.png\" style=\"height:417px; width:740px\" /></p>\r\n\r\n<p>- Bộ c&ocirc;ng cụ to&agrave;n diện cho hầu hết c&aacute;c doanh nghiệp.</p>\r\n\r\n<p>- Bao gồm Office 365,&nbsp;<a href=\"https://softvn.vn/ban-quyen-microsoft-windows/\">Windows</a>&nbsp;v&agrave;&nbsp;<a href=\"https://softvn.vn/ban-quyen-symantec-endpoint-protection/\">bảo mật.</a></p>\r\n\r\n<p>- Bản quyền phần mềm linh động thu&ecirc; bao theo năm.</p>\r\n\r\n<p>- Hỗ trợ hầu hết c&aacute;c nền tảng Windows, macOS v&agrave; thiết bị di động.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://softvn.vn/wp-content/uploads/2020/02/b%E1%BA%A3n-quy%E1%BB%81n-ph%E1%BA%A7n-m%E1%BB%81m-microsoft-365.png\" style=\"height:675px; width:993px\" /></p>\r\n\r\n<h3>Bảo vệ t&agrave;i khoản người d&ugrave;ng | Microsoft 365</h3>\r\n\r\n<p>-&nbsp; Microsoft 365 c&oacute; c&aacute;c t&iacute;nh năng n&acirc;ng cao trong việc bảo vệ t&agrave;i khoản của người d&ugrave;ng.</p>\r\n\r\n<p>-&nbsp; Cảnh b&aacute;o khi mật khẩu t&agrave;i khoản của người d&ugrave;ng sắp hết hạn.</p>\r\n\r\n<p>-&nbsp; Cảnh b&aacute;o việc đăng nhập đ&aacute;ng nghi tr&ecirc;n c&aacute;c t&agrave;i khoản, v&iacute; dụ đăng nhập từ nhiều IP kh&aacute;c nhau tr&ecirc;n thế giới.</p>\r\n\r\n<p>-&nbsp; Quản trị vi&ecirc;n c&oacute; thể hạn chế truy cập v&agrave;o t&agrave;i nguy&ecirc;n tr&ecirc;n Office 365 khi sử dụng từ những địa chỉ kh&ocirc;ng tin cậy.</p>\r\n\r\n<p>-&nbsp; Kh&oacute;a c&aacute;c t&agrave;i khoản c&oacute; c&aacute;c h&agrave;nh vi bất thường hoặc đ&aacute;ng nghi. N&acirc;ng cao bảo mật khi chỉ cho ph&eacute;p c&aacute;c thiết bị đủ c&aacute;c ti&ecirc;u chuẩn. Được ph&eacute;p kết nối tới dữ liệu c&ocirc;ng ty tr&ecirc;n Office 365.</p>', '2021-Apr-Sun_1618157224220.png', 3500000, 3500000, 500000, 5, 0, 1, '2', '2', '2021-04-11 09:07:04', '2021-04-14 04:55:06'),
(3, 'Office 365 Business', '<h3>&nbsp;</h3>\r\n\r\n<h3>Bản quyền Office 365 Business cho l&agrave;m việc nh&oacute;m</h3>\r\n\r\n<p>-&nbsp; Hỗ trợ nhiều người d&ugrave;ng c&ugrave;ng l&agrave;m việc tr&ecirc;n c&aacute;c t&agrave;i liệu.</p>\r\n\r\n<p>-&nbsp; Cộng t&aacute;c, chia sẻ v&agrave; cập nhật trong thời gian thực với c&aacute;c đồng nghiệp.</p>\r\n\r\n<p>-&nbsp; Phần mềm Office lu&ocirc;n được cập nhật phi&ecirc;n bản mới nhất.</p>\r\n\r\n<p>-&nbsp; Qu&aacute; tr&igrave;nh l&agrave;m việc v&agrave; cộng t&aacute;c lu&ocirc;n được lưu trữ trong kh&ocirc;ng gian bản mật của&nbsp;<a href=\"https://softvn.vn/ban-quyen-onedrive-for-business/\">OneDriv</a>e</p>\r\n\r\n<p><img alt=\"\" src=\"https://softvn.vn/wp-content/uploads/2020/01/office-365-proplus.gif\" style=\"height:622px; width:900px\" /></p>', '2021-Apr-Sun_1618157840611.png', 2500000, 2500000, 200000, 5, 0, 1, '2', '2', '2021-04-11 09:17:20', '2021-04-14 04:55:02'),
(5, 'nhậ thử đi e', '<p>fff</p>', '2021-Apr-Mon_1618239531556.png', 10, 10, 12, 10, 0, 1, '2', '2', '2021-04-12 07:58:51', '2021-04-12 08:11:07'),
(7, 'ADOBE PREMIERE', '<p>Lưu &yacute;:&nbsp;Gi&aacute; tr&ecirc;n web c&oacute; t&iacute;nh chất tham khảo, c&oacute; thể tăng hoặc giảm so với hiện tại, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ để c&oacute; b&aacute;o gi&aacute; tốt nhất.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Bản quyền Adobe Premiere Pro chỉnh sửa v&agrave; bi&ecirc;n tập video chuy&ecirc;n dụng.</li>\r\n	<li>C&aacute;c hiệu ứng h&igrave;nh ảnh c&oacute; sẵn đẹp mắt v&agrave; chuy&ecirc;n nghiệp.</li>\r\n	<li>Cắt nối v&agrave; dựng phim ph&ugrave; hợp tất cả c&aacute;c dự &aacute;n c&aacute; nh&acirc;n hay chuy&ecirc;n nghiệp.</li>\r\n	<li>Bản quyền linh động thu&ecirc; bao theo năm, hoặc c&oacute; thể mua theo g&oacute;i sản phẩm.</li>\r\n</ul>', '2021-Apr-Wed_1618401236173.png', 3500000, 3500000, 500000, 2, 0, 1, '2', '2', '2021-04-14 04:53:56', '2021-04-14 08:52:21'),
(8, 'ADOBE ILLUSTRATOR', '<p>Lưu &yacute;:&nbsp;Gi&aacute; tr&ecirc;n web c&oacute; t&iacute;nh chất tham khảo, c&oacute; thể tăng hoặc giảm so với hiện tại, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ để c&oacute; b&aacute;o gi&aacute; tốt nhất.</p>\r\n\r\n<ul>\r\n	<li>Cung cấp m&ocirc;i trường l&agrave;m việc, m&agrave; tại đ&oacute; ch&uacute;ng ta ta c&oacute; thể thỏa sức s&aacute;ng tạo.</li>\r\n	<li>Tạo ra c&aacute;c bản thiết kế đồ họa ấn tượng m&agrave; kh&ocirc;ng cần ảnh từ m&aacute;y ảnh.</li>\r\n	<li>AI được sử dụng với nhiệm vụ ch&iacute;nh l&agrave; tạo ra h&igrave;nh minh họa, logo chất lượng cao.</li>\r\n	<li>Hỗ trợ tạo nh&acirc;n vật v&agrave; phối cảnh phim hoạt h&igrave;nh&hellip;</li>\r\n</ul>', '2021-Apr-Wed_1618401511966.jpg', 3500000, 3500000, 500000, 2, 0, 1, '2', '2', '2021-04-14 04:58:31', '2021-04-14 08:52:19'),
(9, 'yuovn', '<p>&aacute;đ&aacute;</p>', '2021-Apr-Wed_1618413287713.jpg', 20, 20, 10, 13, 0, 1, '2', '2', '2021-04-14 08:14:47', '2021-04-14 08:51:49'),
(10, 'ADOBE', '<p>Lưu &yacute;:&nbsp;Gi&aacute; tr&ecirc;n web c&oacute; t&iacute;nh chất tham khảo, c&oacute; thể tăng hoặc giảm so với hiện tại, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ để c&oacute; b&aacute;o gi&aacute; tốt nhất.</p>\r\n\r\n<ul>\r\n	<li>Bản quyền Adobe Premiere Pro chỉnh sửa v&agrave; bi&ecirc;n tập video chuy&ecirc;n dụng.</li>\r\n	<li>C&aacute;c hiệu ứng h&igrave;nh ảnh c&oacute; sẵn đẹp mắt v&agrave; chuy&ecirc;n nghiệp.</li>\r\n	<li>Cắt nối v&agrave; dựng phim ph&ugrave; hợp tất cả c&aacute;c dự &aacute;n c&aacute; nh&acirc;n hay chuy&ecirc;n nghiệp.</li>\r\n	<li>Bản quyền linh động thu&ecirc; bao theo năm, hoặc c&oacute; thể mua theo g&oacute;i sản phẩm.</li>\r\n</ul>', '2021-Apr-Wed_1618413580672.png', 3123123, 3123123, 11, 2, 0, 1, '2', '2', '2021-04-14 08:19:40', '2021-04-14 08:52:16'),
(11, 'sadsa sđss a', '<p>http://localhost/DATN/public/&nbsp;http://localhost/DATN/public/&nbsp;http://localhost/DATN/public/&nbsp;http://localhost/DATN/public/&nbsp;http://localhost/DATN/public/&nbsp;http://localhost/DATN/public/</p>', '2021-Apr-Wed_1618413924319.png', 20, 20, 5, 12, 0, 1, '2', '2', '2021-04-14 08:25:24', '2021-04-14 08:51:44'),
(12, 'ADOBE PREMIERE', '<ul>\r\n	<li>Bản quyền Adobe Premiere Pro chỉnh sửa v&agrave; bi&ecirc;n tập video chuy&ecirc;n dụng.</li>\r\n	<li>C&aacute;c hiệu ứng h&igrave;nh ảnh c&oacute; sẵn đẹp mắt v&agrave; chuy&ecirc;n nghiệp.</li>\r\n	<li>Cắt nối v&agrave; dựng phim ph&ugrave; hợp tất cả c&aacute;c dự &aacute;n c&aacute; nh&acirc;n hay chuy&ecirc;n nghiệp.</li>\r\n	<li>Bản quyền linh động thu&ecirc; bao theo năm, hoặc c&oacute; thể mua theo g&oacute;i sản phẩm.</li>\r\n</ul>', '2021-Apr-Wed_1618415611457.png', 100, 100, 0, 2, 0, 1, '2', '2', '2021-04-14 08:53:31', '2021-04-14 08:54:09'),
(13, 'ADOBE PREMIERE', '<ul>\r\n	<li>Bản quyền Adobe Premiere Pro chỉnh sửa v&agrave; bi&ecirc;n tập video chuy&ecirc;n dụng.</li>\r\n	<li>C&aacute;c hiệu ứng h&igrave;nh ảnh c&oacute; sẵn đẹp mắt v&agrave; chuy&ecirc;n nghiệp.</li>\r\n	<li>Cắt nối v&agrave; dựng phim ph&ugrave; hợp tất cả c&aacute;c dự &aacute;n c&aacute; nh&acirc;n hay chuy&ecirc;n nghiệp.</li>\r\n	<li>Bản quyền linh động thu&ecirc; bao theo năm, hoặc c&oacute; thể mua theo g&oacute;i sản phẩm.</li>\r\n</ul>', '2021-Apr-Wed_1618415735750.png', 100, 100, 100, 14, 0, 0, '2', '2', '2021-04-14 08:55:35', '2021-04-14 08:55:35'),
(14, 'ADOBE ILLUSTRATOR', '<ul>\r\n	<li>Bản quyền Adobe Premiere Pro chỉnh sửa v&agrave; bi&ecirc;n tập video chuy&ecirc;n dụng.</li>\r\n	<li>C&aacute;c hiệu ứng h&igrave;nh ảnh c&oacute; sẵn đẹp mắt v&agrave; chuy&ecirc;n nghiệp.</li>\r\n	<li>Cắt nối v&agrave; dựng phim ph&ugrave; hợp tất cả c&aacute;c dự &aacute;n c&aacute; nh&acirc;n hay chuy&ecirc;n nghiệp.</li>\r\n	<li>Bản quyền linh động thu&ecirc; bao theo năm, hoặc c&oacute; thể mua theo g&oacute;i sản phẩm.</li>\r\n</ul>', '2021-Apr-Wed_1618415782390.jpg', 150, 150, 50, 14, 0, 0, '2', '2', '2021-04-14 08:56:22', '2021-04-14 08:56:22'),
(15, 'ADOBE ILLUSTRATOR PRO', '<ul>\r\n	<li>Bản quyền Adobe Premiere Pro chỉnh sửa v&agrave; bi&ecirc;n tập video chuy&ecirc;n dụng.</li>\r\n	<li>C&aacute;c hiệu ứng h&igrave;nh ảnh c&oacute; sẵn đẹp mắt v&agrave; chuy&ecirc;n nghiệp.</li>\r\n	<li>Cắt nối v&agrave; dựng phim ph&ugrave; hợp tất cả c&aacute;c dự &aacute;n c&aacute; nh&acirc;n hay chuy&ecirc;n nghiệp.</li>\r\n	<li>Bản quyền linh động thu&ecirc; bao theo năm, hoặc c&oacute; thể mua theo g&oacute;i sản phẩm.</li>\r\n	<li>\r\n	<hr />\r\n	<h3>Adobe Premiere Pro &ndash; C&ocirc;ng cụ dựng video th&ocirc;ng minh</h3>\r\n	</li>\r\n	<li>\r\n	<hr />\r\n	<p>&nbsp;</p>\r\n	</li>\r\n	<li>Premiere Pro l&agrave; ứng dụng h&agrave;ng đầu trong lĩnh vực dựng phim.</li>\r\n	<li>C&ocirc;ng cụ n&agrave;y gi&uacute;p c&aacute;c nh&agrave; bi&ecirc;n tập video s&aacute;ng tạo ra những khung h&igrave;nh ho&agrave;n hảo. C&aacute;c sản phẩm được tạo ra bởi Premiere dễ d&agrave;ng tương th&iacute;ch với c&aacute;c sản phẩm kh&aacute;c của Adobe.</li>\r\n	<li>Kết hợp c&ugrave;ng với Premiere Rush, c&aacute;c nh&agrave; bi&ecirc;n tập c&oacute; thể l&agrave;m việc bất cứ l&uacute;c n&agrave;o. Bất cứ nơi đ&acirc;u v&agrave; tr&ecirc;n bất cứ thiết bị n&agrave;o.</li>\r\n	<li>Bộ c&ocirc;ng cụ Automated của Adobe Sensei gi&uacute;p giảm thời gian dựng. Tập trung v&agrave;o nội dung cần truyền tải, kh&ocirc;ng phụ thuộc v&agrave;o timeline.</li>\r\n	<li><img alt=\"\" src=\"https://softvn.vn/wp-content/uploads/2020/01/mua-b%E1%BA%A3n-quy%E1%BB%81n-premiere.jpg\" style=\"height:495px; width:660px\" /></li>\r\n</ul>', '2021-Apr-Wed_1618415928858.png', 450, 450, 50, 14, 0, 0, '2', '2', '2021-04-14 08:58:48', '2021-04-14 09:02:23'),
(16, 'G Suite Basic', '<ul>\r\n	<li>Email doanh nghiệp th&ocirc;ng qua Gmail.</li>\r\n	<li>Hội nghị video v&agrave; hội nghị thoại.</li>\r\n	<li>Lịch được chia sẻ.</li>\r\n	<li>T&agrave;i liệu, bảng t&iacute;nh v&agrave; bản tr&igrave;nh b&agrave;y&hellip;</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://softvn.vn/wp-content/uploads/2019/03/unnamed-3.jpg\" style=\"height:382px; width:512px\" /></p>\r\n\r\n<h3>Email doanh nghiệp với t&ecirc;n miền ri&ecirc;ng</h3>\r\n\r\n<p>Sử dụng email doanh nghiệp với t&ecirc;n miền ri&ecirc;ng như&nbsp;info@softvn.vn.&nbsp;T&ecirc;n miền ri&ecirc;ng gi&uacute;p bạn chuy&ecirc;n nghiệp hơn trong c&aacute;c giao dịch qua email.</p>\r\n\r\n<h3>Ứng dụng lịch</h3>\r\n\r\n<p>Sử dụng lịch để xắp xếp c&ocirc;ng việc, đặt lịch hẹn, chia sẻ timeline&hellip;</p>\r\n\r\n<h3>Google +</h3>\r\n\r\n<p>Nền tảng mạng x&atilde; hội t&iacute;ch hợp sẵn c&aacute;c yếu tố tương t&aacute;c x&atilde; hội thực tế tr&ecirc;n m&ocirc;i trường web.</p>\r\n\r\n<h3>Google Hangouts Chat</h3>\r\n\r\n<p>Nếu bạn đ&atilde; từng sử dụng Google Talk v&agrave; Slack, bạn sẽ t&igrave;m thấy cả hai trải nghiệm được kết hợp theo một số c&aacute;ch trong Hangouts Chat.</p>', '2021-Apr-Sun_1618747132289.png', 550000, 550000, 5, 15, 0, 0, '2', '2', '2021-04-18 04:58:52', '2021-04-18 04:58:52'),
(17, 'G Suite Business', '<ul>\r\n	<li>Email doanh nghiệp th&ocirc;ng qua Gmail.</li>\r\n	<li>Hội nghị video v&agrave; hội nghị thoại.</li>\r\n	<li>Lịch được chia sẻ.</li>\r\n	<li>T&agrave;i liệu, bảng t&iacute;nh v&agrave; bản tr&igrave;nh b&agrave;y&hellip;</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://softvn.vn/wp-content/uploads/2019/03/unnamed-4-1024x518.png\" style=\"height:518px; width:1024px\" /></p>\r\n\r\n<h3>Admin &ndash; Quản l&yacute; G&nbsp;Suite cho tổ chức của bạn</h3>\r\n\r\n<ul>\r\n	<li>Dễ d&agrave;ng th&ecirc;m người d&ugrave;ng, quản l&yacute; thiết bị v&agrave; định cấu h&igrave;nh bảo mật.</li>\r\n	<li>Quản l&yacute;&nbsp;<a href=\"https://softvn.vn/\">license</a>, th&ecirc;m, bớt hoặc g&aacute;n license cho người d&ugrave;ng G Suite.</li>\r\n	<li>Kiểm so&aacute;t dịch vụ tr&ecirc;n G Suite, c&oacute; thể bật tắt dịch vụ theo ch&iacute;nh s&aacute;ch.</li>\r\n	<li>Quản l&yacute; t&ecirc;n miền, quản l&yacute; nh&oacute;m v&agrave; nhiều t&iacute;nh năng hơn nữa&hellip;</li>\r\n</ul>', '2021-Apr-Sun_1618747357849.png', 1200000, 1200000, 10, 15, 0, 0, '2', '2', '2021-04-18 05:02:37', '2021-04-18 05:02:37'),
(18, 'Tài123', '<p><img alt=\"\" src=\"https://softvn.vn/wp-content/uploads/2020/01/Microsoft-365-logo-1-256x256.png\" /></p>\r\n\r\n<ul>\r\n	<li>Bộ c&ocirc;ng cụ to&agrave;n diện cho hầu hết c&aacute;c doanh nghiệp.</li>\r\n	<li>Bao gồm Office 365,&nbsp;<a href=\"https://softvn.vn/ban-quyen-microsoft-windows/\">Windows</a>&nbsp;v&agrave;&nbsp;<a href=\"https://softvn.vn/ban-quyen-symantec-endpoint-protection/\">bảo mật.</a></li>\r\n	<li>Bản quyền phần mềm linh động thu&ecirc; bao theo năm.</li>\r\n	<li>Hỗ trợ hầu hết c&aacute;c nền tảng Windows, macOS v&agrave; thiết bị di động.</li>\r\n</ul>', '2021-Apr-Sun_1618758599777.png', 100, 100, 10, 16, 0, 0, '2', '2', '2021-04-18 08:09:59', '2021-04-18 08:09:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_types_tb`
--

CREATE TABLE `product_types_tb` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdeleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_types_tb`
--

INSERT INTO `product_types_tb` (`id`, `name`, `description`, `isdeleted`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'BẢN QUYỀN PHẦN MỀM BẢO MẬTT', 'BẢN QUYỀN PHẦN MỀM BẢO MẬT', 1, '2', '2', '2021-04-02 02:37:40', '2021-04-12 08:18:56'),
(2, 'ADOBE', 'BẢN QUYỀN ADOBE', 1, '2', '2', '2021-04-05 09:14:36', '2021-04-14 08:54:04'),
(3, 'VĂN PHÒNG', 'VĂN PHÒNGVĂN PHÒNGVĂN PHÒNGVĂN PHÒNG', 1, '2', '2', '2021-04-05 09:14:52', '2021-04-12 08:18:45'),
(4, 'Security', 'Security', 1, '2', '2', '2021-04-11 09:00:43', '2021-04-12 08:18:41'),
(5, 'OFFICE', 'OFFICE', 1, '2', '2', '2021-04-11 09:01:06', '2021-04-12 08:12:10'),
(6, 'EDUCATION', 'EDUCATION', 1, '2', '2', '2021-04-11 09:01:25', '2021-04-14 09:02:46'),
(7, 'GRAPHICS', 'GRAPHICS', 1, '2', '2', '2021-04-11 09:01:49', '2021-04-12 08:12:18'),
(8, 'SYSTEM', 'SYSTEM', 1, '2', '2', '2021-04-11 09:02:06', '2021-04-12 08:12:15'),
(9, 'off', 'offf', 1, '2', '2', '2021-04-12 03:31:33', '2021-04-12 07:57:19'),
(10, 'sadsad', 'ádsad', 1, '2', '2', '2021-04-12 07:57:43', '2021-04-12 08:12:03'),
(11, 'PHOTODEX', 'PHOTODEX', 1, '2', '2', '2021-04-12 08:47:17', '2021-04-14 09:02:43'),
(12, 'OFFICE', 'OFFICE', 1, '2', '2', '2021-04-12 08:47:34', '2021-04-14 08:54:28'),
(13, 'adssd', 'adssad', 1, '2', '2', '2021-04-14 08:13:59', '2021-04-14 08:51:34'),
(14, 'ADOBE', 'ADOBE', 0, '2', '2', '2021-04-14 08:54:45', '2021-04-14 08:54:45'),
(15, 'OFFICE', 'OFFICE', 0, '2', '2', '2021-04-18 04:56:05', '2021-04-18 04:56:05'),
(16, 'TaiSoft', 'TaiSoft', 0, '2', '2', '2021-04-18 08:07:06', '2021-04-18 08:07:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'Admin', 'admin', '2020-08-12 00:18:12', '2020-08-12 00:18:12'),
(7, 'Người dùng', 'admin', '2020-08-24 09:05:25', '2021-04-18 08:23:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(78, 4),
(79, 4),
(80, 4),
(81, 4),
(82, 4),
(88, 4),
(89, 4),
(90, 4),
(91, 4),
(92, 4),
(93, 4),
(94, 4),
(95, 4),
(96, 4),
(97, 4),
(104, 4),
(105, 4),
(106, 4),
(107, 4),
(108, 4),
(109, 4),
(110, 4),
(111, 4),
(112, 4),
(113, 4),
(138, 4),
(138, 7),
(139, 4),
(139, 7),
(140, 4),
(140, 7),
(145, 4),
(146, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `isdeleted` tinyint(1) DEFAULT 0,
  `status` int(11) DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `password`, `gender`, `email`, `email_verified_at`, `image`, `street`, `state`, `city`, `phone`, `nationality`, `dateofbirth`, `isdeleted`, `status`, `google_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(19, 'Lê Văn', 'Bảo', 'Lee Bảo', '$2y$10$3e5RY8bz1l4.Vx.87ymJ4.n8uqYpQPSvRk0FANLVJpLsVkqZLsKFG', '0', 'duachutthoinhe123@gmail.com', '2020-07-25 08:55:15', '2020-Jul-Sat_1595692713511.jpg', '85 Doãn uẩn', 'Ngũ Hành Sơn', 'Đà Nẵng', '08684887485', 'VietNam', '1998-08-15', 0, 0, NULL, 'yEXFksrnYW6HHJEM29haoifuBOe62FnoVa6BfWgN2QMpQ7tjYBK9tXfT9V2U', '2020-07-25 08:54:33', '2020-08-05 02:43:52'),
(38, NULL, NULL, 'F A', NULL, NULL, 'duachutthoinhe1234@gmail.com', '2021-04-05 10:40:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '104217303793290828291', NULL, '2021-04-05 10:40:45', '2021-04-05 10:40:45'),
(39, NULL, NULL, 'QuangArcher Lê', NULL, NULL, 'duachutthoinhe123@gmail.com', '2021-04-05 10:43:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '106874226304653978513', NULL, '2021-04-05 10:43:23', '2021-04-05 10:43:23'),
(40, NULL, NULL, 'Le CV', '$2y$10$zmg24mvceOLbodBQZhPul.HQveSSmAriK8R40wTfOd5LljzJiIOw6', '1', 'acv@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'VietName', NULL, 0, 0, NULL, NULL, '2021-04-07 09:02:36', '2021-04-07 09:15:31'),
(41, NULL, NULL, 'duachutthoinhe', '$2y$10$.kiTKQ4mvqGUGV2fDPDSRORKM/3Tp1dqTgpjnYBPIwOYcVl7R3Vn6', NULL, 'duachutthoinhe123456@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-04-11 00:47:25', '2021-04-11 00:47:25'),
(46, NULL, NULL, 'nguyen the tai', '$2y$10$X8IZgqy.X8KJt6h71y5CLuePutEUVZahFFOG86q6eKz7iQTZsEjSm', NULL, 'anhtai0135@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-04-14 08:27:38', '2021-04-14 08:27:38'),
(47, NULL, NULL, 'thetai123', '$2y$10$lU/OW87Mv9sKv3UGtIjvcuRSJXEBabJhwx9Gl4h66mGAn.e57HOxi', NULL, 'ntt164644130@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-04-18 05:31:22', '2021-04-18 08:34:46');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders_tb`
--
ALTER TABLE `orders_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_tb_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products_tb`
--
ALTER TABLE `products_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_tb_product_type_id_foreign` (`product_type_id`);

--
-- Chỉ mục cho bảng `product_types_tb`
--
ALTER TABLE `product_types_tb`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `member`
--
ALTER TABLE `member`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `orders_tb`
--
ALTER TABLE `orders_tb`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT cho bảng `products_tb`
--
ALTER TABLE `products_tb`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `product_types_tb`
--
ALTER TABLE `product_types_tb`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
