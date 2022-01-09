-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 09, 2022 lúc 11:47 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `1951064066_kttv_bdkh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `duan`
--

CREATE TABLE `duan` (
  `maduan` int(11) NOT NULL,
  `tenduan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namthuchien` int(11) DEFAULT NULL,
  `linhvuc` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nhiemvu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coquanthuchien` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `duan`
--

INSERT INTO `duan` (`maduan`, `tenduan`, `namthuchien`, `linhvuc`, `nhiemvu`, `coquanthuchien`) VALUES
(1, 'Đánh giá mức độ biến đổi khi hậu', 2019, 'Biến đổi khí hậu', 'Nghiên cứu biến đổi khí hậu', 'Trung tâm ứng phó biến đổi khí hậu'),
(2, 'Xây dựng và triển khai kế hoạch biến đổi khí hậu', 2012, 'Biến đổi khí hậu', 'Nghiên cứu biến đổi khí hậu', 'Trung tâm ứng phó biến đổi khí hậu'),
(3, 'Cập nhật kế hoạch biến đổi khí hậu 2017', 2017, 'Biến đổi khí hậu', 'Nghiên cứu biến đổi khí hậu', 'Trung tâm ứng phó biến đổi khí hậu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `duan1`
--

CREATE TABLE `duan1` (
  `ma_duan` int(10) UNSIGNED NOT NULL,
  `ten_tenduan` varchar(118) NOT NULL,
  `namthuchien` int(11) NOT NULL,
  `linhvuc` varchar(118) NOT NULL,
  `nhiemvu` varchar(255) NOT NULL,
  `coquanthuchien` varchar(255) NOT NULL,
  `ma_donvicha` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `duan1`
--

INSERT INTO `duan1` (`ma_duan`, `ten_tenduan`, `namthuchien`, `linhvuc`, `nhiemvu`, `coquanthuchien`, `ma_donvicha`) VALUES
(2, 'đo lường khí hậu', 2019, 'khí tượng thủy văn', 'đo khí hậu', 'ttkt quốc gia', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
