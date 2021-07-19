-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 19, 2021 lúc 03:38 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `datn`
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
(2, 'admin@gmail.com', 'admin', '$2y$10$qc.GPvUuhA1P7jOjNBY5Te/Ta75uPBet8VNpGzEnJ9g.3m52H5THa', 0, 'LLSLvFNHFhNVP5UuX8xvFiMJKCC7tFHulJiNFj7IEi6riJKXoBukTKazzn2h', NULL, NULL),
(11, 'anhtai@gmail.com', 'tài', '$2y$10$GUxByPlU9BrgOKT31VhbmeR8U8YLVqRHqr2kXmDK4qdqaLEJkgTl2', 0, NULL, '2021-04-26 10:40:51', '2021-04-26 10:40:51');

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
(26, 'nguyễn thế tài', 'anhtai0135@gmail.com', 'tôi có thắc mắc về đơn hàng', 'hãy gọi cho tôi', 0, 'cảm ơn bạn đã mua hàng chúng tôi sẽ liên hệ với bạn sớm nhất', 2, '2021-04-29 19:08:48', '2021-04-29 19:09:17'),
(27, 'anhtai', 'anhtai0135@gmail.com', 'liên hệ tôi', 'anh tài đây', 0, 'ok', 2, '2021-05-02 02:03:57', '2021-05-02 02:04:13'),
(28, 'nguyen the tai', 'anhtai0135@gmail.com', 'tôi có thắc mắc', 'tối có thắc mắc về sản phẩm hãy liên hệ cho tôi', 0, NULL, NULL, '2021-05-05 00:24:46', '2021-05-05 00:24:46'),
(29, 'tai', 'anhtai0135@gmail.com', 'alo alo', 'Phần mềm của bạn dùng rất ok', 0, 'cảm ơn bạn đã sử dụng phần mềm của chúng tôi', 2, '2021-07-15 00:55:13', '2021-07-15 00:55:34'),
(30, 'The Tài Nguyễn', 'anhtai0135@gmail.com', 'alo alo', 'gghghhg', 0, 'adahhh', 2, '2021-07-18 00:57:16', '2021-07-18 00:57:28');

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
(7, 'App\\Models\\Admin', 10),
(7, 'App\\Models\\Admin', 11);

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
('3068f869-f52a-41e3-8e6d-fd5a2bea1b2a', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 21, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":21}', NULL, '2021-04-26 07:31:42', '2021-04-26 07:31:42', NULL),
('31cd8ca2-a0db-489c-8ec7-4af0406dd22d', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":17}', '2020-08-15 00:08:56', '2020-08-11 05:29:31', '2020-08-15 00:08:56', NULL),
('350a6d99-4f1b-4fb5-9530-3dc2cc23341e', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 37, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":49}', NULL, '2020-08-24 08:44:01', '2020-08-24 08:44:01', NULL),
('379ff9a8-c09d-409e-b95e-5c79ad898268', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":20}', '2020-08-11 05:44:01', '2020-08-11 05:43:53', '2020-08-11 05:44:01', NULL),
('3e0dfc5a-f078-429c-b512-f4f6ffe2bd74', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":24}', '2020-08-15 00:09:05', '2020-08-11 08:17:54', '2020-08-15 00:09:05', NULL),
('3f3910a8-0adf-4f87-819a-0401b461eea0', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 36, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":47}', NULL, '2020-08-24 08:40:47', '2020-08-24 08:40:47', NULL),
('426c5029-aa00-46e3-a5e5-0ed6df1dfd38', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 22, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":22}', NULL, '2021-04-26 22:18:12', '2021-04-26 22:18:12', NULL),
('49e302a8-2c4d-42c7-9d4a-9b9dd9f4d23c', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":30}', NULL, '2020-08-15 08:53:52', '2020-08-15 08:53:52', NULL),
('4ef5ae9d-98ed-445b-bd68-d620c2deb100', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 23, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":23}', NULL, '2021-04-26 22:19:40', '2021-04-26 22:19:40', NULL),
('558a47ea-b967-4767-b973-9a20e0a571b4', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 21, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":45}', NULL, '2020-08-24 08:34:56', '2020-08-24 08:34:56', NULL),
('562b008d-c712-4edb-b5d5-2bd4789a3ecb', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 16, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":16}', NULL, '2020-08-24 09:00:34', '2020-08-24 09:00:34', NULL),
('5bb4c305-d0b7-4db0-8034-988486798497', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":23}', '2020-08-15 00:09:02', '2020-08-11 08:06:40', '2020-08-15 00:09:02', NULL),
('68472b8b-1919-4d53-af35-e0fb9c183b26', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":21}', '2020-08-11 06:03:50', '2020-08-11 05:47:25', '2020-08-11 06:03:50', NULL),
('715e640b-90e5-4855-afdd-ec9bf5802882', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 28, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":28}', NULL, '2021-05-05 00:24:46', '2021-05-05 00:24:46', NULL),
('72697ffb-9060-4411-aaf4-59b601fa1797', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":19}', '2020-08-15 00:09:00', '2020-08-11 05:38:57', '2020-08-15 00:09:00', NULL),
('7a3680b0-f833-4696-862a-dbd80cb432e4', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":26}', '2020-08-15 00:09:08', '2020-08-13 23:53:25', '2020-08-15 00:09:08', NULL),
('7a89a5e5-e6e2-4248-b350-953a11646cec', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":32}', '2020-08-16 04:58:41', '2020-08-15 09:43:51', '2020-08-16 04:58:41', NULL),
('81f8092a-e982-47ba-ad52-329c5c007c0d', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 36, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":48}', NULL, '2020-08-24 08:42:03', '2020-08-24 08:42:03', NULL),
('8f44e7e2-dab0-4821-9518-3c4713fc82a9', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 26, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":26}', NULL, '2021-04-29 19:08:48', '2021-04-29 19:08:48', NULL),
('964d475b-59a8-4c10-a86c-f81713f59fd3', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 27, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":27}', NULL, '2021-05-02 02:03:58', '2021-05-02 02:03:58', NULL),
('9c105b48-3e68-473a-9df9-2e05df447c19', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 32, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":50}', '2020-08-19 01:14:21', '2020-08-18 01:13:30', '2020-08-19 01:14:21', NULL),
('a1190619-1269-43c3-9d26-5bf8677b809e', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 31, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":34}', '2020-08-16 04:58:33', '2020-08-16 03:12:13', '2020-08-16 04:58:33', NULL),
('a5104713-8f9e-4552-ad95-3f492e42f2bd', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 19, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":19}', NULL, '2021-04-11 07:08:07', '2021-04-11 07:08:07', NULL),
('a7bca422-3099-442b-9e76-05aa01db7f9e', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 30, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":30}', NULL, '2021-07-18 00:57:16', '2021-07-18 00:57:16', NULL),
('ab0cb11a-6085-4b9d-94c2-f782e5fef09d', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 14, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":14}', '2020-08-23 05:55:59', '2020-08-19 01:37:47', '2020-08-23 05:55:59', NULL),
('ae6cc61b-1caa-4542-9428-e41a039e4512', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":27}', NULL, '2020-08-13 23:55:29', '2020-08-13 23:55:29', NULL),
('b0c04309-46c1-4b89-9b69-7bae3d19717b', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":41}', NULL, '2020-08-24 07:53:02', '2020-08-24 07:53:02', NULL),
('bc3ee4f0-e172-4abe-a55c-e970c53c7e09', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 25, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":25}', NULL, '2021-04-27 22:11:03', '2021-04-27 22:11:03', NULL),
('bc6b4037-69f4-4381-a1a8-cbf91e1fbe6d', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":18}', '2020-08-11 05:37:26', '2020-08-11 05:34:26', '2020-08-11 05:37:26', NULL),
('bfff686c-a83a-4ef9-b014-3219d119209e', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":8}', '2020-08-16 07:17:06', '2020-08-16 06:26:17', '2020-08-16 07:17:06', NULL),
('c1e44801-e787-45d2-9ed8-833e2d69a577', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\User', 32, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":10}', '2020-08-19 01:14:24', '2020-08-17 08:54:20', '2020-08-19 01:14:24', NULL),
('c9679f21-7866-47cb-a9aa-658500019864', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 15, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":15}', NULL, '2020-08-24 08:58:47', '2020-08-24 08:58:47', NULL),
('ccb20e87-d4be-4241-80a8-bd46900e369c', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":22}', '2020-08-11 06:03:46', '2020-08-11 05:51:09', '2020-08-11 06:03:46', NULL),
('d58010b8-277a-4c90-9ae8-703249a563b1', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 20, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":20}', '2021-04-11 09:52:31', '2021-04-11 07:38:17', '2021-04-11 09:52:31', NULL),
('e1e711ff-5827-41b5-9e1e-fccd88df7182', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":31}', '2020-08-19 01:14:30', '2020-08-15 09:04:24', '2020-08-19 01:14:30', NULL),
('e21bf8e3-2a6b-49de-9461-06094ae6b53c', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\User', 32, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":9}', '2020-08-19 01:14:27', '2020-08-17 08:52:32', '2020-08-19 01:14:27', NULL),
('e22016e7-e177-484b-94e6-af0043c4f5f8', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 24, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":24}', NULL, '2021-04-27 21:20:32', '2021-04-27 21:20:32', NULL),
('e938ba80-9b46-4724-aea9-e6b67f251c93', 'App\\Notifications\\BookingNotification', 'App\\Models\\User', 19, '{\"title\":\"There is a new reservation\",\"content\":\"There is a new reservation\",\"id\":29}', '2020-08-14 06:01:29', '2020-08-14 03:00:28', '2020-08-14 06:01:29', NULL),
('f0c3e40a-6dcd-4a45-8f94-feae5a14cb49', 'App\\Notifications\\FeedbackNotification', 'App\\Models\\Feedback', 29, '{\"title\":\"There is a new feedback\",\"content\":\"There is a new feedback\",\"id\":29}', NULL, '2021-07-15 00:55:13', '2021-07-15 00:55:13', NULL);

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
(16, '7370472021430', '2021-04-30', 'nguyen the tai', '0356735120', 'anhtai0135@gmail.com', 'camonbandamuahang123', 2500000, 'tôi muốn mua phần mềm này hãy gọi lại cho tôi', 37, 1, 0, '51', '2', '2021-04-29 19:05:52', '2021-04-29 19:07:15'),
(17, '692457202151', '2021-05-01', 'nguyen the tai', '0356735120', 'anhtai0135@gmail.com', 'camonban123', 2500000, 'Tôi muốn mua sản phẩm này', 37, 1, 0, '52', '2', '2021-05-01 08:05:10', '2021-05-01 08:07:49'),
(18, '692254202151', '2021-05-01', 'the tài nguyễn', '0356735120', 'anhtai0135@gmail.com', 'camonan1231246666', 4000000, 'tôi muốn mua hàng liên hệ cho tôi', 39, 1, 0, '52', '2', '2021-05-01 08:14:23', '2021-05-01 08:14:57'),
(19, '540374202152', '2021-05-02', 'Nguyễn thế tài', '0356735120', 'anhtai0135@gmail.com', 'xincamon99999999999', 2500000, 'tôi muốn mua hàng', 37, 1, 0, '52', '2', '2021-05-02 01:54:45', '2021-05-02 01:55:08'),
(20, '699963202153', '2021-05-03', 'tai', '12091291', 'anhtai0135@gmail.com', '123', 2500000, 'mua hàng', 37, 1, 0, '52', '2', '2021-05-03 06:52:27', '2021-05-04 02:37:28'),
(21, '811170202155', '2021-05-05', 'nguyen the tai', '0356735120', 'anhtai0135@gmail.com', 'hoilamgi', 2500000, 'tôi muốn mua hàng', 37, 1, 0, '54', '2', '2021-05-05 00:20:28', '2021-06-04 02:14:01'),
(22, '529466202164', '2021-06-04', 'Nguyễn Thế Anh Tài', '0356735120', 'anhtai0135@gmail.com', 'hoilamgi', 4000000, '123123', 39, 1, 0, '52', '2', '2021-06-04 02:11:19', '2021-06-04 02:13:33'),
(23, '4949022021715', '2021-07-15', 'Nguyễn Thế Anh Tài', '0356735120', 'anhtai0135@gmail.com', '1212121', 2500000, 'ghghg', 37, 0, 0, '52', '2', '2021-07-14 19:54:53', '2021-07-14 21:44:27'),
(24, '7573932021715', '2021-07-15', 'nguyen te tai', '0356735120', 'anhtai0135@gmail.com', '123abc12', 2500000, 'No', 37, 1, 0, '55', '2', '2021-07-15 00:21:57', '2021-07-15 00:22:39'),
(25, '9887192021715', '2021-07-15', 'Nguyễn Thế Anh Tài', '0356735120', 'anhtai0135@gmail.com', '123abc1234', 2500000, 'no', 37, 1, 0, '59', '2', '2021-07-15 00:47:00', '2021-07-15 00:48:23'),
(26, '1921782021715', '2021-07-15', 'Nguyễn Thế Anh Tài', '0356735120', 'anhtai0135@gmail.com', '123khkh', 2200000, 'tôi muốn mua phần mềm này', 37, 1, 0, '61', '2', '2021-07-15 05:45:43', '2021-07-15 06:05:00'),
(27, '6795652021715', '2021-07-15', 'Nguyễn Thế Anh Tài', '0356735120', 'anhtai0135@gmail.com', '1212121', 2200000, 'plpl', 37, 1, 0, '61', '2', '2021-07-15 06:31:42', '2021-07-15 06:32:02'),
(28, '9893212021716', '2021-07-16', 'Nguyễn Thế Anh Tài', '0356735120', 'anhtai0135@gmail.com', '1212121', 2200000, 'mua hàng', 37, 1, 0, '63', '2', '2021-07-16 06:34:27', '2021-07-16 06:36:32'),
(29, '8898902021718', '2021-07-18', 'Nguyễn Thế Anh Tài', '0356735120', 'anhtai0135@gmail.com', '123fggg', 2200000, '123123123123đâsdsad', 37, 1, 0, '63', '2', '2021-07-18 00:52:05', '2021-07-18 00:52:48'),
(30, '8555132021718', '2021-07-18', 'Nguyễn Thế Anh Tài', '0356735120', 'anhtai0135@gmail.com', '1212121', 2200000, 'hhhhhh', 37, 1, 0, '64', '2', '2021-07-18 00:55:38', '2021-07-18 00:55:50'),
(31, '7684992021718', '2021-07-18', 'nguyen te tai', '0356735120', 'anhtai0135@gmail.com', 'taita123abc', 2200000, 'tôi muốn mua', 37, 1, 0, '65', '2', '2021-07-18 01:05:41', '2021-07-18 01:07:14');

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

INSERT INTO `products_tb` (`id`, `name`, `description`, `thumbnail`, `price`, `manufacturer_price`, `product_type_id`, `status`, `isdeleted`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(37, 'Phần mềm chỉnh sửa file PDF', '<p>Tr&igrave;nh chỉnh sửa PDF</p>\r\n\r\n<p><em>Thực hiện tất cả c&aacute;c cập nhật t&agrave;i liệu của bạn trong PDF</em></p>\r\n\r\n<ul>\r\n	<li>T&agrave;i liệu ph&aacute;t triển theo thời gian v&agrave; cần phải được cập nhật.</li>\r\n	<li>PhantomPDF cung cấp c&aacute;c khả năng PDF Editor mạnh mẽ để cho ph&eacute;p c&aacute;c t&aacute;c giả tự cập nhật t&agrave;i liệu của họ.</li>\r\n	<li>Đoạn văn chỉnh sửa v&agrave; c&oacute; luồng văn bản tr&ecirc;n nhiều đoạn, cột v&agrave; trang.</li>\r\n	<li>Thay đổi bố cục t&agrave;i liệu bằng c&aacute;ch di chuyển c&aacute;c hộp văn bản, thay đổi k&iacute;ch thước của ch&uacute;ng hoặc c&aacute;ch văn bản được chứng minh.</li>\r\n	<li>Chuy&ecirc;n nghiệp h&oacute;a c&aacute;c t&agrave;i liệu bằng c&aacute;ch th&ecirc;m tem, h&igrave;nh mờ, ti&ecirc;u đề, ch&acirc;n trang, đ&aacute;nh số thứ tự, v.v.</li>\r\n</ul>\r\n\r\n<p>Tổ chức</p>\r\n\r\n<p><em>Thao t&aacute;c với c&aacute;c tệp v&agrave; trang PDF</em></p>\r\n\r\n<ul>\r\n	<li>Th&ocirc;ng thường ch&uacute;ng t&ocirc;i tạo t&agrave;i liệu mới từ c&aacute;c trang của t&agrave;i liệu hiện c&oacute;.</li>\r\n	<li>hỉnh sửa PDF cho ph&eacute;p bạn nhanh ch&oacute;ng v&agrave; dễ d&agrave;ng sắp xếp v&agrave; thao t&aacute;c PDF của bạn để hỗ trợ quy tr&igrave;nh c&ocirc;ng việc của bạn.</li>\r\n	<li>Hợp nhất c&aacute;c t&agrave;i liệu PDF lại với nhau hoặc t&aacute;ch c&aacute;c tệp PDF ra.</li>\r\n	<li>K&eacute;o v&agrave; thả c&aacute;c trang trong t&agrave;i liệu hoặc từ t&agrave;i liệu n&agrave;y sang t&agrave;i liệu kh&aacute;c.</li>\r\n	<li>Cắt, x&oacute;a, th&ecirc;m, trao đổi, l&agrave;m phẳng v&agrave; xoay c&aacute;c trang PDF.</li>\r\n</ul>\r\n\r\n<p>Chia sẻ v&agrave; hợp t&aacute;c</p>\r\n\r\n<p><em>Ch&uacute; th&iacute;ch, chia sẻ v&agrave; cộng t&aacute;c với PDF</em></p>\r\n\r\n<ul>\r\n	<li>Khi c&aacute;c nh&oacute;m hợp t&aacute;c v&agrave; chia sẻ th&ocirc;ng tin, họ l&agrave;m việc hết sức m&igrave;nh.</li>\r\n	<li>PhantomPDF l&agrave; Tr&igrave;nh chỉnh sửa PDF li&ecirc;n kết c&aacute;c nh&acirc;n vi&ecirc;n tri thức với nhau để tăng t&iacute;nh linh hoạt v&agrave; kết quả.</li>\r\n	<li>T&iacute;ch hợp với c&aacute;c hệ thống quản l&yacute; nội dung h&agrave;ng đầu.</li>\r\n	<li>Sử dụng c&aacute;c sản phẩm chia sẻ lưu trữ phổ biến.</li>\r\n	<li>Bắt đầu đ&aacute;nh gi&aacute; được chia sẻ v&agrave; cung cấp v&agrave; quản l&yacute; &yacute; kiến.</li>\r\n</ul>', '2021-Jul-Thu_1626335612306.png', 2200000, 2500000, 24, 0, 0, '2', '2', '2021-04-29 17:57:26', '2021-07-15 01:03:51'),
(38, 'Phần mềm từ điển UTT SOFT', '<h3>&nbsp;</h3>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>Bản quyền từ điển&nbsp;hỗ trợ đa ng&ocirc;n ngữ</h3>\r\n\r\n<ul>\r\n	<li>Hỗ trợ dịch tr&ecirc;n 77 ng&ocirc;n ngữ tr&ecirc;n thế giới.</li>\r\n	<li>Hỗ trợ dịch cả đoạn văn bản.</li>\r\n	<li>Hỗ trợ dịch bằng giọng n&oacute;i.</li>\r\n	<li>T&agrave;i liệu hỗ trợ bằng ng&ocirc;n ngữ địa phương</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"about-private\" src=\"https://softvn.vn/wp-content/uploads/2019/05/about-private.png\" style=\"height:68px; width:72px\" /></p>\r\n\r\n<h3>Private users</h3>\r\n\r\n<p>Phần mềm dịch thuật miễn ph&iacute; tốt nhất, cung cấp bản dịch chỉ với một c&uacute; nhấp chuột tr&ecirc;n m&agrave;n h&igrave;nh của bạn!</p>\r\n\r\n<p><img alt=\"about-corporate\" src=\"https://softvn.vn/wp-content/uploads/2019/05/about-corporate.png\" style=\"height:68px; width:72px\" /></p>\r\n\r\n<h3>Corporate users</h3>\r\n\r\n<p>Tất cả c&aacute;c t&iacute;nh năng dịch c&oacute; sẵn cho người d&ugrave;ng doanh nghiệp, bao gồm triển khai đơn giản v&agrave; im lặng.</p>\r\n\r\n<p><img alt=\"about-enterprise\" src=\"https://softvn.vn/wp-content/uploads/2019/05/about-enterprise.png\" style=\"height:68px; width:72px\" /></p>\r\n\r\n<h3>Enterprise solutions</h3>\r\n\r\n<p>Giải ph&aacute;p doanh nghiệp cung cấp truy xuất dữ liệu chỉ với một c&uacute; nhấp chuột từ kho dữ liệu của ri&ecirc;ng bạn, với c&aacute;c t&iacute;nh năng dịch t&ugrave;y chọn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://softvn.vn/wp-content/uploads/2019/05/premium-text.png\" style=\"height:68px; width:72px\" /></p>\r\n\r\n<h3>Unlimited Text Translation</h3>\r\n\r\n<p>Kh&ocirc;ng cần phải chuyển đổi m&agrave;n h&igrave;nh, thay đổi ứng dụng hoặc thậm ch&iacute; sao ch&eacute;p v&agrave; d&aacute;n. Với Babylon, dịch thuật lu&ocirc;n chỉ l&agrave; một c&uacute; nhấn chuột.</p>\r\n\r\n<p><img alt=\"premium-doc\" src=\"https://softvn.vn/wp-content/uploads/2019/05/premium-doc.png\" style=\"height:68px; width:72px\" /></p>\r\n\r\n<h3>Unlimited Formatted Document Translation</h3>\r\n\r\n<p>Cho d&ugrave; đ&oacute; l&agrave; một b&aacute;o c&aacute;o cho cuộc họp tiếp theo của bạn, hoặc một b&agrave;i b&aacute;o cho trường học, bạn c&oacute; thể nhanh ch&oacute;ng dịch tất cả c&aacute;c t&agrave;i liệu của m&igrave;nh trong khi duy tr&igrave; định dạng ban đầu của ch&uacute;ng.</p>\r\n\r\n<p><img alt=\"premium-humanvoice\" src=\"https://softvn.vn/wp-content/uploads/2019/05/premium-humanvoice.png\" style=\"height:68px; width:72px\" /></p>\r\n\r\n<h3>The Babylon Human Voice</h3>\r\n\r\n<p>C&ocirc;ng nghệ chuyển văn bản th&agrave;nh giọng n&oacute;i ti&ecirc;n tiến của từ điển Babylon cho ph&eacute;p bạn nghe bất kỳ văn bản n&agrave;o được đọc bằng giọng n&oacute;i tự nhi&ecirc;n. Bạn chỉ cần biết từ đ&uacute;ng để n&oacute;i, từ điển Babylon sẽ tự động dịch cho bạn.</p>', '2021-Jul-Thu_1626335416837.png', 3000000, 2500000, 25, 0, 0, '2', '2', '2021-04-29 18:03:53', '2021-07-15 00:50:16'),
(39, 'Phần mềm tiện ích 1', '<p>m&ocirc; tả sản phẩm 1231231</p>', '2021-Jul-Thu_1626335398231.jpg', 4000000, 3900000, 26, 0, 0, '2', '2', '2021-05-01 08:13:29', '2021-07-15 00:49:58');

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
(24, 'Phần mềm văn phòng', 'Phần mềm văn phòng dùng cho các hoạt động văn phòng do utt soft thực hiện phát triển.', 0, '2', '2', '2021-04-29 17:53:42', '2021-04-29 17:53:42'),
(25, 'Phần mềm học tập', 'Phần mềm học tập dành cho các hoạt động học tập do utt soft phát triển', 0, '2', '2', '2021-04-29 17:54:38', '2021-04-29 18:08:37'),
(26, 'Phần mềm tiện ích', 'Mô tả phần mềm tiện ích', 0, '2', '2', '2021-05-01 08:10:03', '2021-05-01 08:10:03'),
(27, 'Phần mềm liên hệ', 'Phần mềm dùng để liên hệ do UTTer phát hành', 0, '2', '2', '2021-07-15 00:51:57', '2021-07-15 00:51:57');

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
(10, 'Staff', 'admin', '2021-05-05 02:48:55', '2021-05-05 02:48:55');

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
(138, 10),
(139, 4),
(139, 7),
(139, 10),
(140, 4),
(140, 7),
(140, 10),
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
(65, NULL, NULL, 'nguyen the tai', '$2y$10$zpeLjh/9jxEkmPRavg.N7en83E3IZaDdHVXFNeLdvId/lHJLTEAj2', NULL, 'anhtai0135@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-07-18 01:04:58', '2021-07-18 01:04:58');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT cho bảng `products_tb`
--
ALTER TABLE `products_tb`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `product_types_tb`
--
ALTER TABLE `product_types_tb`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
