-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 12, 2022 lúc 06:17 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_sach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_don`
--

CREATE TABLE `chi_tiet_don` (
  `stt` int(32) NOT NULL,
  `ma_don_hang` varchar(225) NOT NULL,
  `ma_sach` int(10) NOT NULL,
  `ten_sach` text NOT NULL,
  `don_gia` decimal(10,0) NOT NULL,
  `so_luong` int(10) NOT NULL,
  `thanh_tien` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_don`
--

INSERT INTO `chi_tiet_don` (`stt`, `ma_don_hang`, `ma_sach`, `ten_sach`, `don_gia`, `so_luong`, `thanh_tien`) VALUES
(96, 'DH_tph1_1647604246443', 13, 'Mẹ Hỏi Bé Trả Lời 2-3 Tuổi (Tái Bản 2019)', '27480', 12, '329760'),
(97, 'DH_tph1_1647604246443', 16, 'Lớp Học Mật Ngữ - Tập 20 - Tặng Kèm Thỏi Hồ/Keo Khô Cộp Mác Lớp Học Mật Ngữ', '48000', 11, '528000'),
(98, 'DH_tph1_1647604246443', 14, 'Lớp Học Mật Ngữ - Tập 19 - Tặng Kèm 12 Bookmark Lớp Học Mật Ngữ Siêu Xinh (Mẫu Ngẫu Nhiên)', '43200', 3, '129600'),
(99, 'DH_tph1_1647604246443', 23, 'Bộ Sách Chuyện Kể Cho Bé Hiếu Thảo (Bộ 10 Cuốn)', '86700', 2, '173400'),
(100, 'DH_tph1_1647604246443', 24, 'Mẹ Hỏi Bé Trả Lời 3-4 Tuổi (Tái Bản 2019)', '28200', 2, '56400'),
(101, 'DH_tph1_1647604246443', 25, 'Lớp Học Mật Ngữ - Tập 18 - Tặng Kèm Khẩu Trang', '43200', 2, '86400'),
(102, 'DH_tph1_1647604246443', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(103, 'DH_tph1_1647604246443', 18, 'Lớp Học Mật Ngữ - Tuyển Tập Đặc Biệt Vol.5 - Tặng Kèm Lịch 2022 Lớp Học Mật Ngữ', '97200', 1, '97200'),
(104, 'DH_tph1_1647604246443', 19, 'Tôi Vẽ - Phương Pháp Tự Học Vẽ Truyện Tranh', '104400', 1, '104400'),
(105, 'DH_tph1_1647604246443', 29, 'Tập Tô Màu Nhà Trẻ - Chủ Đề Động Vật', '5850', 1, '5850'),
(106, 'DH_tph1_1647604280297', 13, 'Mẹ Hỏi Bé Trả Lời 2-3 Tuổi (Tái Bản 2019)', '27480', 12, '329760'),
(107, 'DH_tph1_1647604280297', 16, 'Lớp Học Mật Ngữ - Tập 20 - Tặng Kèm Thỏi Hồ/Keo Khô Cộp Mác Lớp Học Mật Ngữ', '48000', 11, '528000'),
(108, 'DH_tph1_1647604280297', 14, 'Lớp Học Mật Ngữ - Tập 19 - Tặng Kèm 12 Bookmark Lớp Học Mật Ngữ Siêu Xinh (Mẫu Ngẫu Nhiên)', '43200', 3, '129600'),
(109, 'DH_tph1_1647604280297', 23, 'Bộ Sách Chuyện Kể Cho Bé Hiếu Thảo (Bộ 10 Cuốn)', '86700', 2, '173400'),
(110, 'DH_tph1_1647604280297', 24, 'Mẹ Hỏi Bé Trả Lời 3-4 Tuổi (Tái Bản 2019)', '28200', 2, '56400'),
(111, 'DH_tph1_1647604280297', 25, 'Lớp Học Mật Ngữ - Tập 18 - Tặng Kèm Khẩu Trang', '43200', 2, '86400'),
(112, 'DH_tph1_1647604280297', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(113, 'DH_tph1_1647604280297', 18, 'Lớp Học Mật Ngữ - Tuyển Tập Đặc Biệt Vol.5 - Tặng Kèm Lịch 2022 Lớp Học Mật Ngữ', '97200', 1, '97200'),
(114, 'DH_tph1_1647604280297', 19, 'Tôi Vẽ - Phương Pháp Tự Học Vẽ Truyện Tranh', '104400', 1, '104400'),
(115, 'DH_tph1_1647604280297', 29, 'Tập Tô Màu Nhà Trẻ - Chủ Đề Động Vật', '5850', 1, '5850'),
(116, 'DH_tph1_1647604281608', 13, 'Mẹ Hỏi Bé Trả Lời 2-3 Tuổi (Tái Bản 2019)', '27480', 12, '329760'),
(117, 'DH_tph1_1647604281608', 16, 'Lớp Học Mật Ngữ - Tập 20 - Tặng Kèm Thỏi Hồ/Keo Khô Cộp Mác Lớp Học Mật Ngữ', '48000', 11, '528000'),
(118, 'DH_tph1_1647604281608', 14, 'Lớp Học Mật Ngữ - Tập 19 - Tặng Kèm 12 Bookmark Lớp Học Mật Ngữ Siêu Xinh (Mẫu Ngẫu Nhiên)', '43200', 3, '129600'),
(119, 'DH_tph1_1647604281608', 23, 'Bộ Sách Chuyện Kể Cho Bé Hiếu Thảo (Bộ 10 Cuốn)', '86700', 2, '173400'),
(120, 'DH_tph1_1647604281608', 24, 'Mẹ Hỏi Bé Trả Lời 3-4 Tuổi (Tái Bản 2019)', '28200', 2, '56400'),
(121, 'DH_tph1_1647604281608', 25, 'Lớp Học Mật Ngữ - Tập 18 - Tặng Kèm Khẩu Trang', '43200', 2, '86400'),
(122, 'DH_tph1_1647604281608', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(123, 'DH_tph1_1647604281608', 18, 'Lớp Học Mật Ngữ - Tuyển Tập Đặc Biệt Vol.5 - Tặng Kèm Lịch 2022 Lớp Học Mật Ngữ', '97200', 1, '97200'),
(124, 'DH_tph1_1647604281608', 19, 'Tôi Vẽ - Phương Pháp Tự Học Vẽ Truyện Tranh', '104400', 1, '104400'),
(125, 'DH_tph1_1647604281608', 29, 'Tập Tô Màu Nhà Trẻ - Chủ Đề Động Vật', '5850', 1, '5850'),
(126, 'DH_tph1_1647604282560', 13, 'Mẹ Hỏi Bé Trả Lời 2-3 Tuổi (Tái Bản 2019)', '27480', 12, '329760'),
(127, 'DH_tph1_1647604282560', 16, 'Lớp Học Mật Ngữ - Tập 20 - Tặng Kèm Thỏi Hồ/Keo Khô Cộp Mác Lớp Học Mật Ngữ', '48000', 11, '528000'),
(128, 'DH_tph1_1647604282560', 14, 'Lớp Học Mật Ngữ - Tập 19 - Tặng Kèm 12 Bookmark Lớp Học Mật Ngữ Siêu Xinh (Mẫu Ngẫu Nhiên)', '43200', 3, '129600'),
(129, 'DH_tph1_1647604282560', 23, 'Bộ Sách Chuyện Kể Cho Bé Hiếu Thảo (Bộ 10 Cuốn)', '86700', 2, '173400'),
(130, 'DH_tph1_1647604282560', 24, 'Mẹ Hỏi Bé Trả Lời 3-4 Tuổi (Tái Bản 2019)', '28200', 2, '56400'),
(131, 'DH_tph1_1647604282560', 25, 'Lớp Học Mật Ngữ - Tập 18 - Tặng Kèm Khẩu Trang', '43200', 2, '86400'),
(132, 'DH_tph1_1647604282560', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(133, 'DH_tph1_1647604282560', 18, 'Lớp Học Mật Ngữ - Tuyển Tập Đặc Biệt Vol.5 - Tặng Kèm Lịch 2022 Lớp Học Mật Ngữ', '97200', 1, '97200'),
(134, 'DH_tph1_1647604282560', 19, 'Tôi Vẽ - Phương Pháp Tự Học Vẽ Truyện Tranh', '104400', 1, '104400'),
(135, 'DH_tph1_1647604282560', 29, 'Tập Tô Màu Nhà Trẻ - Chủ Đề Động Vật', '5850', 1, '5850'),
(136, 'DH_tph1_1647604701577', 13, 'Mẹ Hỏi Bé Trả Lời 2-3 Tuổi (Tái Bản 2019)', '27480', 12, '329760'),
(137, 'DH_tph1_1647604701577', 16, 'Lớp Học Mật Ngữ - Tập 20 - Tặng Kèm Thỏi Hồ/Keo Khô Cộp Mác Lớp Học Mật Ngữ', '48000', 11, '528000'),
(138, 'DH_tph1_1647604701577', 14, 'Lớp Học Mật Ngữ - Tập 19 - Tặng Kèm 12 Bookmark Lớp Học Mật Ngữ Siêu Xinh (Mẫu Ngẫu Nhiên)', '43200', 3, '129600'),
(139, 'DH_tph1_1647604701577', 23, 'Bộ Sách Chuyện Kể Cho Bé Hiếu Thảo (Bộ 10 Cuốn)', '86700', 2, '173400'),
(140, 'DH_tph1_1647604701577', 24, 'Mẹ Hỏi Bé Trả Lời 3-4 Tuổi (Tái Bản 2019)', '28200', 2, '56400'),
(141, 'DH_tph1_1647604701577', 25, 'Lớp Học Mật Ngữ - Tập 18 - Tặng Kèm Khẩu Trang', '43200', 2, '86400'),
(142, 'DH_tph1_1647604701577', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(143, 'DH_tph1_1647604701577', 18, 'Lớp Học Mật Ngữ - Tuyển Tập Đặc Biệt Vol.5 - Tặng Kèm Lịch 2022 Lớp Học Mật Ngữ', '97200', 1, '97200'),
(144, 'DH_tph1_1647604701577', 19, 'Tôi Vẽ - Phương Pháp Tự Học Vẽ Truyện Tranh', '104400', 1, '104400'),
(145, 'DH_tph1_1647604701577', 29, 'Tập Tô Màu Nhà Trẻ - Chủ Đề Động Vật', '5850', 1, '5850'),
(146, 'DH_tph1_1647665775471', 13, 'Mẹ Hỏi Bé Trả Lời 2-3 Tuổi (Tái Bản 2019)', '27480', 12, '329760'),
(147, 'DH_tph1_1647665775471', 16, 'Lớp Học Mật Ngữ - Tập 20 - Tặng Kèm Thỏi Hồ/Keo Khô Cộp Mác Lớp Học Mật Ngữ', '48000', 11, '528000'),
(148, 'DH_tph1_1647665775471', 14, 'Lớp Học Mật Ngữ - Tập 19 - Tặng Kèm 12 Bookmark Lớp Học Mật Ngữ Siêu Xinh (Mẫu Ngẫu Nhiên)', '43200', 3, '129600'),
(149, 'DH_tph1_1647665775471', 23, 'Bộ Sách Chuyện Kể Cho Bé Hiếu Thảo (Bộ 10 Cuốn)', '86700', 2, '173400'),
(150, 'DH_tph1_1647665775471', 24, 'Mẹ Hỏi Bé Trả Lời 3-4 Tuổi (Tái Bản 2019)', '28200', 2, '56400'),
(151, 'DH_tph1_1647665775471', 25, 'Lớp Học Mật Ngữ - Tập 18 - Tặng Kèm Khẩu Trang', '43200', 2, '86400'),
(152, 'DH_tph1_1647665775471', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(153, 'DH_tph1_1647665775471', 18, 'Lớp Học Mật Ngữ - Tuyển Tập Đặc Biệt Vol.5 - Tặng Kèm Lịch 2022 Lớp Học Mật Ngữ', '97200', 1, '97200'),
(154, 'DH_tph1_1647665775471', 19, 'Tôi Vẽ - Phương Pháp Tự Học Vẽ Truyện Tranh', '104400', 1, '104400'),
(155, 'DH_tph1_1647665775471', 29, 'Tập Tô Màu Nhà Trẻ - Chủ Đề Động Vật', '5850', 1, '5850'),
(156, 'DH_tph1_1649760989908', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(157, 'DH_tph1_1649760989908', 18, 'Lớp Học Mật Ngữ - Tuyển Tập Đặc Biệt Vol.5 - Tặng Kèm Lịch 2022 Lớp Học Mật Ngữ', '97200', 1, '97200'),
(158, 'DH_tph1_1649761635837', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(159, 'DH_tph1_1649761635837', 18, 'Lớp Học Mật Ngữ - Tuyển Tập Đặc Biệt Vol.5 - Tặng Kèm Lịch 2022 Lớp Học Mật Ngữ', '97200', 1, '97200'),
(160, 'DH_tph1_1649761659076', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(161, 'DH_tph1_1649761659076', 18, 'Lớp Học Mật Ngữ - Tuyển Tập Đặc Biệt Vol.5 - Tặng Kèm Lịch 2022 Lớp Học Mật Ngữ', '97200', 1, '97200'),
(162, 'DH_tph1_1649766957585', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(163, 'DH_tph1_1649766957585', 18, 'Lớp Học Mật Ngữ - Tuyển Tập Đặc Biệt Vol.5 - Tặng Kèm Lịch 2022 Lớp Học Mật Ngữ', '97200', 1, '97200'),
(164, 'DH_tph1_1649766990225', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(165, 'DH_tph1_1649766990225', 18, 'Lớp Học Mật Ngữ - Tuyển Tập Đặc Biệt Vol.5 - Tặng Kèm Lịch 2022 Lớp Học Mật Ngữ', '97200', 1, '97200'),
(166, 'DH_tph1_1649767111193', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(167, 'DH_tph1_1649767111193', 18, 'Lớp Học Mật Ngữ - Tuyển Tập Đặc Biệt Vol.5 - Tặng Kèm Lịch 2022 Lớp Học Mật Ngữ', '97200', 1, '97200'),
(168, 'DH_tph1_1649767189401', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(169, 'DH_tph1_1649767189401', 18, 'Lớp Học Mật Ngữ - Tuyển Tập Đặc Biệt Vol.5 - Tặng Kèm Lịch 2022 Lớp Học Mật Ngữ', '97200', 1, '97200'),
(170, 'DH_tph1_1649767228049', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(171, 'DH_tph1_1649767228049', 18, 'Lớp Học Mật Ngữ - Tuyển Tập Đặc Biệt Vol.5 - Tặng Kèm Lịch 2022 Lớp Học Mật Ngữ', '97200', 1, '97200'),
(172, 'DH_tph1_1649767288434', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(173, 'DH_tph1_1649767288434', 18, 'Lớp Học Mật Ngữ - Tuyển Tập Đặc Biệt Vol.5 - Tặng Kèm Lịch 2022 Lớp Học Mật Ngữ', '97200', 1, '97200'),
(174, 'DH_tph1_1649767450441', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(175, 'DH_tph1_1649767450441', 18, 'Lớp Học Mật Ngữ - Tuyển Tập Đặc Biệt Vol.5 - Tặng Kèm Lịch 2022 Lớp Học Mật Ngữ', '97200', 1, '97200'),
(176, 'DH_tph1_1649767724866', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(177, 'DH_tph1_1649767724866', 18, 'Lớp Học Mật Ngữ - Tuyển Tập Đặc Biệt Vol.5 - Tặng Kèm Lịch 2022 Lớp Học Mật Ngữ', '97200', 1, '97200'),
(178, 'DH_tph1_1649770922772', 13, 'Mẹ Hỏi Bé Trả Lời 2-3 Tuổi (Tái Bản 2019)', '27480', 1, '27480'),
(179, 'DH_tph1_1649770922772', 14, 'Lớp Học Mật Ngữ - Tập 19 - Tặng Kèm 12 Bookmark Lớp Học Mật Ngữ Siêu Xinh (Mẫu Ngẫu Nhiên)', '43200', 1, '43200'),
(180, 'DH_tph1_1649770922772', 16, 'Lớp Học Mật Ngữ - Tập 20 - Tặng Kèm Thỏi Hồ/Keo Khô Cộp Mác Lớp Học Mật Ngữ', '48000', 1, '48000'),
(181, 'DH_tph1_1649774882188', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(182, 'DH_tph1_1649775024607', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(183, 'DH_tph1_1649775150372', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(184, 'DH_tph1_1649775221644', 17, 'Hoàng Tử Bé (Tái Bản 2019)', '65160', 1, '65160'),
(185, 'DH_tph1_1649775544372', 16, 'Lớp Học Mật Ngữ - Tập 20 - Tặng Kèm Thỏi Hồ/Keo Khô Cộp Mác Lớp Học Mật Ngữ', '48000', 1, '48000'),
(186, 'DH_tph1_1649775667441', 18, 'Lớp Học Mật Ngữ - Tuyển Tập Đặc Biệt Vol.5 - Tặng Kèm Lịch 2022 Lớp Học Mật Ngữ', '97200', 1, '97200');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_dat_hang`
--

CREATE TABLE `don_dat_hang` (
  `ma_don_hang` varchar(255) NOT NULL,
  `tai_khoan` varchar(255) NOT NULL,
  `ten_nn` text NOT NULL,
  `sdt` int(10) NOT NULL,
  `dia_chi` text NOT NULL,
  `tong_thanh_toan` decimal(10,0) NOT NULL,
  `ngay_dat` timestamp NOT NULL DEFAULT current_timestamp(),
  `trang_thai_don` tinyint(1) NOT NULL DEFAULT 0,
  `ghi_chu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `don_dat_hang`
--

INSERT INTO `don_dat_hang` (`ma_don_hang`, `tai_khoan`, `ten_nn`, `sdt`, `dia_chi`, `tong_thanh_toan`, `ngay_dat`, `trang_thai_don`, `ghi_chu`) VALUES
('DH_tph1_16471001112454', 'tph1', 'Hiếu Phúc', 12200345, '19 Lê Quang Sung, Tam Kỳ', '1576170', '2022-03-18 11:50:46', 1, ''),
('DH_tph1_164710011146454', 'tph1', 'Hiếu Phúc', 12200345, '19 Lê Quang Sung, Tam Kỳ', '1576170', '2022-03-18 11:50:46', 1, ''),
('DH_tph1_16471001246454', 'tph1', 'Hiếu Phúc', 12200345, '19 Lê Quang Sung, Tam Kỳ', '1576170', '2022-03-18 11:50:46', 1, ''),
('DH_tph1_1647604246431', 'tph1', 'Hiếu Phúc', 12200345, '19 Lê Quang Sung, Tam Kỳ', '1576170', '2022-03-18 11:50:46', 1, ''),
('DH_tph1_1647604246441', 'tph1', 'Hiếu Phúc', 12200345, '19 Lê Quang Sung, Tam Kỳ', '1576170', '2022-03-18 11:50:46', 1, ''),
('DH_tph1_1647604246443', 'tph1', 'Hiếu Phúc', 12200345, '19 Lê Quang Sung, Tam Kỳ', '1576170', '2022-03-18 11:50:46', 0, ''),
('DH_tph1_1647604280297', 'tph1', '', 0, '', '1576170', '2022-03-18 11:51:20', 1, ''),
('DH_tph1_1647604281608', 'tph1', '', 0, '', '1576170', '2022-03-18 11:51:21', 0, ''),
('DH_tph1_1647604282560', 'tph1', '', 0, '', '1576170', '2022-03-18 11:51:22', 1, ''),
('DH_tph1_1647604701577', 'tph1', '', 0, '', '1576170', '2022-03-18 11:58:21', 1, ''),
('DH_tph1_1647665775471', 'tph1', '', 0, '', '1576170', '2022-03-19 04:56:15', 1, ''),
('DH_tph1_1649760989908', 'tph1', '', 0, '', '162360', '2022-04-12 10:56:29', 0, ''),
('DH_tph1_1649761635837', 'tph1', 'Hieu', 934991843, '19 Lê Quang Sung', '162360', '2022-04-12 11:07:15', 0, ''),
('DH_tph1_1649761659076', 'tph1', 'Hieu', 2147483647, '19 L1233213ê Quang Sung', '162360', '2022-04-12 11:07:39', 0, ''),
('DH_tph1_1649766957585', 'tph1', 'Hieu', 934991843, '19 Lê Quang Sung', '162360', '2022-04-12 12:35:57', 0, ''),
('DH_tph1_1649766990225', 'tph1', 'Hieu', 934991843, '19 Lê Quang Sung', '162360', '2022-04-12 12:36:30', 0, ''),
('DH_tph1_1649767111193', 'tph1', 'Hieu', 934991843, '19 Lê Quang Sung', '162360', '2022-04-12 12:38:31', 0, ''),
('DH_tph1_1649767189401', 'tph1', 'Hieu', 934991843, '19 Lê Quang Sung', '162360', '2022-04-12 12:39:49', 0, ''),
('DH_tph1_1649767228049', 'tph1', 'Hieu', 934991843, '19 Lê Quang Sung', '162360', '2022-04-12 12:40:28', 0, ''),
('DH_tph1_1649767288434', 'tph1', 'Hieu', 934991843, '19 Lê Quang Sung', '162360', '2022-04-12 12:41:28', 0, ''),
('DH_tph1_1649767450441', 'tph1', 'Hieu', 934991843, '19 Lê Quang Sung', '162360', '2022-04-12 12:44:10', 0, ''),
('DH_tph1_1649767724866', 'tph1', 'Hieu', 934991843, '19 Lê Quang Sung', '162360', '2022-04-12 12:48:44', 0, ''),
('DH_tph1_1649770922772', 'tph1', 'Hieu', 934991843, '19 Lê Quang Sung', '118680', '2022-04-12 13:42:02', 0, ''),
('DH_tph1_1649774882188', 'tph1', 'Hieu', 934991843, '19 Lê Quang Sung', '65160', '2022-04-12 14:48:02', 0, ''),
('DH_tph1_1649775024607', 'tph1', 'Hieu', 934991843, '19 Lê Quang Sung', '65160', '2022-04-12 14:50:24', 0, ''),
('DH_tph1_1649775150372', 'tph1', 'Hieu', 934991843, '19 Lê Quang Sung', '65160', '2022-04-12 14:52:30', 0, ''),
('DH_tph1_1649775221644', 'tph1', 'Hieu', 934991843, '19 Lê Quang Sung', '65160', '2022-04-12 14:53:41', 0, ''),
('DH_tph1_1649775544372', 'tph1', 'Hieu', 934991843, '19 Lê Quang Sung', '48000', '2022-04-12 14:59:04', 0, ''),
('DH_tph1_1649775667441', 'tph1', 'Hieu', 934991843, '19 Lê Quang Sung', '97200', '2022-04-12 15:01:07', 0, ''),
('DH_tph2_1647604701571', 'tph2', '', 0, '', '1576170', '2022-03-19 11:58:21', 2, ''),
('DH_tph2_1647604701572', 'tph2', '', 0, '', '1576170', '2022-03-19 11:58:21', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `tai_khoan` varchar(255) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `ho_ten` text NOT NULL,
  `sdt` int(10) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `dia_chi` text NOT NULL,
  `ngay_tao_tk` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`tai_khoan`, `mat_khau`, `ho_ten`, `sdt`, `ngay_sinh`, `dia_chi`, `ngay_tao_tk`) VALUES
('tph1', 'tph1', 'Phúc Hiếu', 933433994, '2022-04-03', '139 Trần Thủ Độ,Phường Khuê Trung, Quận Cẩm Lệ, Đà Nẵng', '2022-03-18 10:55:13'),
('tph2', 'tph2', 'Quốc Hùng', 999488382, '2022-04-13', '30 Cách Mạng Tháng 8, Phường Khuê Trung, Quận Cẩm Lệ, Đà Nẵng', '2022-03-18 10:55:13'),
('tph3', 'tph3', 'Trung Kiên', 122345325, '2022-04-06', '30 Cầu Rồng, Hải Châu, Đà Nẵng', '2022-03-18 10:55:13'),
('tph4', 'tph4', 'Việt Tùng', 934991812, '2022-04-19', '52 Phan Hành Sơn, Quận Ngũ Hành Sơn, Đà Nẵng', '2022-03-18 10:56:32'),
('tph5', 'tph5', 'Đức Nguyên', 933433912, '2022-04-13', '293 Trần Phú, Cầu Rồng, Hải Châu, Đà Nẵng', '2022-03-18 10:56:32'),
('tphmaila1', 'tphmaila1', 'Quốc Đức', 92392929, '2022-04-14', '123 Trường Chinh, Quận Thanh Khuê ', '2022-04-10 09:40:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nha_xuat_ban`
--

CREATE TABLE `nha_xuat_ban` (
  `ma_nxb` varchar(10) NOT NULL,
  `ten_nxb` text NOT NULL,
  `mo_ta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nha_xuat_ban`
--

INSERT INTO `nha_xuat_ban` (`ma_nxb`, `ten_nxb`, `mo_ta`) VALUES
('bÂn', 'Nhà xuất bản Âm nhạc', ''),
('bBuđ', 'Nhà xuất bản Bưu điện', ''),
('bBđ', 'Nhà xuất bản Bản đồ', ''),
('bCand', 'Nhà xuất bản Công an nhân dân', ''),
('bCtQg', 'Nhà xuất bản Chính trị Quốc gia', ''),
('bGd', 'Nhà xuất bản Giáo dục', ''),
('bGt', 'Nhà xuất bản Giao thông', ''),
('bHN', 'Nhà xuất bản Hà Nội', ''),
('bHnv', 'Nhà xuất bản Hội nhà văn', ''),
('bHp', 'Nhà xuất bản Hải phòng', ''),
('bHĐ', 'Nhà xuất bản Hồng Đức', ''),
('bKhtnvCn', 'Nhà xuất bản Khoa học tự nhiên và Công nghệ', ''),
('bKhvkt', 'Nhà xuất bản Khoa học và kỹ thuật', ''),
('bKhxh', 'Nhà xuất bản Khoa học xã hội', ''),
('bKĐ', 'Nhà xuất bản Kim Đồng', ''),
('bLlct', 'Nhà xuất bản Lý \r\nluận chính trị', ''),
('bLđ', 'Nhà xuất bản Lao động', ''),
('bLđxh', 'Nhà xuất bản Lao động xã hội', ''),
('bMt', 'Nhà xuất bản Mỹ thuật', ''),
('bNA', 'Nhà xuất bản Nghệ An', ''),
('bNn', 'Nhà xuất bản Nông nghiệp', ''),
('bPn', 'Nhà xuất bản Phụ nữ', ''),
('bPĐ', 'Nhà xuất bản Phương Đông', ''),
('bQđ', 'Nhà xuất bản Quân đội', ''),
('bSk', 'Nhà xuất bản Sân khấu', ''),
('bT', 'Nhà xuất bản Trẻ', ''),
('bTc', 'Nhà xuất bản Tài chính', ''),
('bTdtt', 'Nhà xuất bản Thể dục thể thao', ''),
('bTg', 'Nhà xuất bản Tôn giáo', ''),
('bTgi', 'Nhà xuất bản Thế giới', ''),
('bTH', 'Nhà xuất bản Thuận Hoá', ''),
('bTHo', 'Nhà xuất bản Thanh Hoá', ''),
('bThtpHCM', 'Nhà xuất bản Tổng hợp thành phố Hồ Chí Minh', ''),
('bTk', 'Nhà xuất bản Thống kê', ''),
('bTn', 'Nhà xuất bản Thanh niên', ''),
('bTp', 'Nhà xuất bản Tư pháp', ''),
('bTrt', 'Nhà xuất bản Tri thức', ''),
('bTt', 'Nhà xuất bản Thông tấn', ''),
('bTđbk', 'Nhà xuất bản Từ điển bách khoa', ''),
('bVh', 'Nhà xuất bản Văn học', ''),
('bVh-Tt', 'Nhà xuất bản Văn hoá - Thông tin', ''),
('bVhdt', 'Nhà xuất bản Văn hoá dân tộc', ''),
('bVhSg', 'Nhà xuất bản Văn hoá Sài gòn', ''),
('bVn', 'Nhà xuất bản \r\nVăn nghệ', ''),
('bXd', 'Nhà xuất bản Xây dựng', ''),
('bYh', 'Nhà xuất bản Y học', ''),
('bĐhBkHN', 'Nhà xuất bản Đại học Bách \r\nkhoa Hà Nội', ''),
('bĐhH', 'Nhà xuất bản Đại học Huế', ''),
('bĐhktqd', 'Nhà xuất bản Đại học kinh tế quốc dân', ''),
('bĐhQgHN', 'Nhà xuất bản Đại học Quốc gia Hà Nội', ''),
('bĐhQgtpHCM', 'Nhà xuất bản Đại học Quốc gia thành phố Hồ Chí Minh', ''),
('bĐhsp', 'Nhà xuất bản Đại học sư phạm', ''),
('bĐhTN', 'Nhà xuất bản Đại học Thái Nguyên', ''),
('bĐN', 'Nhà xuất bản Đồng Nai', ''),
('bĐNA', 'Nhà xuất bản Đà Nẵng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `ma_sach` int(10) NOT NULL,
  `ten_sach` text NOT NULL,
  `the_loai` varchar(10) NOT NULL,
  `tac_gia` text NOT NULL,
  `nxb` varchar(10) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `so_luong` int(20) NOT NULL,
  `gia_nien_yet` decimal(10,0) NOT NULL,
  `gia_ban` decimal(10,0) NOT NULL,
  `mo_ta` text NOT NULL,
  `ngay_them` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`ma_sach`, `ten_sach`, `the_loai`, `tac_gia`, `nxb`, `hinh_anh`, `so_luong`, `gia_nien_yet`, `gia_ban`, `mo_ta`, `ngay_them`) VALUES
(13, 'Mẹ Hỏi Bé Trả Lời 2-3 Tuổi (Tái Bản 2019)', 'TN', 'Yosbook, Xiao Li', 'bKĐ', 'image_182814.jpg', 20, '22900', '27480', '', '2022-03-17 06:16:25'),
(14, 'Lớp Học Mật Ngữ - Tập 19 - Tặng Kèm 12 Bookmark Lớp Học Mật Ngữ Siêu Xinh (Mẫu Ngẫu Nhiên)', 'TN', 'B R O group', 'bKĐ', 'l_p-h_c-m_t-ng_-t_p-19.jpg', 20, '36000', '43200', '', '2022-03-17 06:23:23'),
(16, 'Lớp Học Mật Ngữ - Tập 20 - Tặng Kèm Thỏi Hồ/Keo Khô Cộp Mác Lớp Học Mật Ngữ', 'TN', 'B R O group', 'bKĐ', 'cover_lhmn20.jpg', 20, '40000', '48000', '', '2022-03-17 06:33:29'),
(17, 'Hoàng Tử Bé (Tái Bản 2019)', 'TN', 'Antoine De Saint-Exupéry', 'bKĐ', 'image_187010.jpg', 20, '54300', '65160', '', '2022-03-17 06:33:33'),
(18, 'Lớp Học Mật Ngữ - Tuyển Tập Đặc Biệt Vol.5 - Tặng Kèm Lịch 2022 Lớp Học Mật Ngữ', 'TN', 'Nhiều Tác Giả', 'bKĐ', '8938507002505.jpg', 20, '81000', '97200', '', '2022-03-17 06:33:35'),
(19, 'Tôi Vẽ - Phương Pháp Tự Học Vẽ Truyện Tranh', 'TN', 'Nhiều tác giả', 'bKĐ', '8936071672704.jpg', 20, '87000', '104400', '', '2022-03-17 06:33:38'),
(20, 'Mẹ Hỏi Bé Trả Lời 4-5 Tuổi (Tái Bản 2019)', 'TN', 'Yosbook, Xiao Li', 'bKĐ', 'image_182816.jpg', 20, '22900', '27480', '', '2022-03-17 06:33:41'),
(21, 'Bách Khoa Toàn Thư Cho Bé 2 - 3 Tuổi (Trọn Bộ 8 Cuốn)', 'TN', 'Nhiều Tác Giả', 'bKĐ', 'untitled-1_128_8.jpg', 20, '43200', '51840', '', '2022-03-17 06:33:45'),
(22, 'Tập Tô Màu Nhà Trẻ - Chủ Đề Quả', 'TN', 'Trung Kiên', 'bKĐ', 'image_60697.jpg', 20, '4875', '5850', '', '2022-03-17 06:33:49'),
(23, 'Bộ Sách Chuyện Kể Cho Bé Hiếu Thảo (Bộ 10 Cuốn)', 'TN', 'Nhiều Tác Giả', 'bKĐ', 'untitled-2sssssssss.jpg', 20, '72250', '86700', '', '2022-03-17 06:33:54'),
(24, 'Mẹ Hỏi Bé Trả Lời 3-4 Tuổi (Tái Bản 2019)', 'TN', 'Yosbook, Xiao Li', 'bKĐ', 'image_182815.jpg', 20, '23500', '28200', '', '2022-03-17 06:33:59'),
(25, 'Lớp Học Mật Ngữ - Tập 18 - Tặng Kèm Khẩu Trang', 'TN', 'Nhiều Tác Giả', 'bKĐ', '05b0dc68643430dd9e28edb7a04c4d62_2_1.jpg', 20, '36000', '43200', '', '2022-03-17 06:34:03'),
(26, 'Mẹ Hỏi Bé Trả Lời 1-2 Tuổi (Tái Bản 2019)', 'TN', 'Yosbook, Xiao Li', 'bKĐ', 'image_182813.jpg', 20, '23500', '28200', '', '2022-03-17 06:38:04'),
(27, 'Bé Tập Tô Màu - Động Vật Sống Dưới Nước', 'TN', 'Hải Nam', 'bKĐ', 'image_190044.jpg', 20, '6500', '7800', '', '2022-03-17 06:38:12'),
(28, 'Bộ Sách Những Tia Nắng Đầu Tiên (Bộ 10 Cuốn) - Tái Bản', 'TN', 'Nguyễn Thu Hiền, Song Long Studio', 'bKĐ', 'untitled-2_34_1.jpg', 20, '67300', '80760', '', '2022-03-17 06:38:36'),
(29, 'Tập Tô Màu Nhà Trẻ - Chủ Đề Động Vật', 'TN', 'Khánh Hòa', 'bKĐ', '8936046599142.jpg', 20, '4875', '5850', '', '2022-03-17 06:38:39'),
(30, 'Lớp Học Mật Ngữ Ngoại Truyện - Vũ Trụ Song Ngư - Tặng Kèm Khung Ảnh Để Bàn Song Ngư', 'TN', 'Nhiều Tác Giả', 'bKĐ', 'z2373588379501_324946b8e1e1032af49e749d9165fe0a.jpg', 20, '53900', '64680', '', '2022-03-17 06:38:44'),
(31, 'Chuyện Con Mèo Dạy Hải Âu Bay (Tái Bản 2019)', 'TN', 'Luis Sepúlveda', 'bKĐ', 'image_188285.jpg', 20, '34000', '40800', '', '2022-03-17 06:38:48'),
(32, 'Những Lời Yêu Thương Của Con Trẻ Dành Tặng Các Mẹ - Vì Sao Tớ Yêu Mẹ (Tái Bản 2019)', 'TN', 'Daniel Howarth', 'bKĐ', 'image_182427.jpg', 20, '22500', '27000', '', '2022-03-17 06:38:52'),
(33, 'Tập Tô Màu Nhà Trẻ - Chủ Đề Giao Thông', 'TN', 'Trung Kiên', 'bKĐ', '8936046599012.jpg', 20, '4875', '5850', '', '2022-03-17 06:38:56'),
(34, 'Những Lời Yêu Thương Của Con Trẻ Dành Tặng Các Bố - Vì Sao Tớ Yêu Bố (Tái Bản 2019)', 'TN', 'Daniel Howarth', 'bKĐ', 'image_182428.jpg', 20, '19000', '22800', '', '2022-03-17 06:39:04'),
(35, 'Bé Tập Kể Chuyện - Ba Người Bạn', 'TN', 'Nhật Tân', 'bKĐ', 'nxbtrestoryfull_25492016_124941.jpg', 20, '8500', '10200', '', '2022-03-17 06:39:17'),
(36, 'Bé Tập Đọc Và Tô Chữ Cái - Hành Trang Cho Bé Vào Lớp 1', 'TN', 'Vân Hương', 'bKĐ', 'untitled-4zzzzzzzz.jpg', 20, '8000', '9600', '', '2022-03-17 06:39:22'),
(37, 'Bách Khoa Khủng Long Toàn Tập', 'TN', 'Dougal Dixon', 'bKĐ', '8936071674753.jpg', 20, '188500', '226200', '', '2022-03-17 06:39:28'),
(38, 'Nhật Ký Chú Bé Nhút Nhát - Tập 16: Trùm Cuối', 'TN', 'Jeff Kinney', 'bKĐ', '8938537634233.jpg', 20, '44000', '52800', '', '2022-03-17 06:39:33'),
(39, 'Bách Khoa Khủng Long Toàn Tập', 'TN', 'Dougal Dixon', 'bKĐ', '8936071674753.jpg', 20, '188500', '226200', '', '2022-03-17 06:39:35'),
(40, '10 Vạn Câu Hỏi Vì Sao - Cuộc Sống Muôn Màu (Tái Bản 2018)', 'TN', 'Tôn Nguyên Vĩ', 'bKĐ', 'image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_641.jpg', 20, '42600', '51120', '', '2022-03-17 06:39:40'),
(41, '100 Kỹ Năng Sinh Tồn', 'TN', 'Clint Emerson', 'bKĐ', '8935212351621.jpg', 20, '76700', '92040', '', '2022-03-17 06:39:43'),
(42, 'Lớp Học Mật Ngữ - Tập Đặc Biệt 4', 'TN', 'B R O group', 'bKĐ', 'z2181752646902_e37d2723da549856ea0734930f77ac60.jpg', 20, '40000', '48000', '', '2022-03-17 06:39:47'),
(43, 'Bé Tập Tô Màu - Động Vật', 'TN', 'Hải Nam', 'bKĐ', 'image_190046.jpg', 20, '6500', '7800', '', '2022-03-17 06:39:51'),
(44, '100 Truyện Cổ Tích Việt Nam - Quyển 1', 'TN', 'Ngọc Hà', 'bKĐ', '9786048847357.jpg', 20, '25600', '30720', '', '2022-03-17 06:39:56'),
(45, 'Song Ngữ Việt - Anh - Diary Of A Wimpy Kid - Nhật Ký Chú Bé Nhút Nhát - Tập 4: Mùa Hè Tuyệt Vời - Dog Day', 'TN', 'Jeff Kinney', 'bKĐ', 'image_195509_1_31014.jpg', 20, '81600', '97920', '', '2022-03-17 06:40:01'),
(46, 'Who? Chuyện Kể Về Danh Nhân Thế Giới: Louis Pasteur (Tái Bản 2020)', 'TN', 'Lee, Heejung, Team kids', 'bKĐ', 'image_195509_1_45998.jpg', 20, '50000', '60000', '', '2022-03-17 06:40:04'),
(47, 'Danh Nhân Thế Giới: Niutơn (Tái Bản 2019)', 'TN', 'Ly Sơn Mi, Quân Thê Uôn', 'bKĐ', 'image_181941.jpg', 20, '27000', '32400', '', '2022-03-17 06:40:10'),
(48, 'Science Encyclopedia - Bách Khoa Thư Về Khoa Học - Cơ Thể Người', 'TN', 'Nhiều Tác Giả', 'bKĐ', 'image_195509_1_31096.jpg', 20, '54400', '65280', '', '2022-03-17 06:40:14'),
(49, 'Danh Nhân Thế Giới: Anhxtanh (Tái Bản 2019)', 'TN', 'Han Kiên', 'bKĐ', 'image_181944.jpg', 20, '27000', '32400', '', '2022-03-17 06:40:16'),
(50, 'Lớp Học Mật Ngữ - Tập Đặc Biệt 1 - Tái Bản 2021 - Tặng Kèm Huy Hiệu', 'TN', 'Nhiều Tác Giả', 'bKĐ', '8938507002246_1.jpg', 20, '31500', '37800', '', '2022-03-17 06:40:22'),
(51, 'Song Ngữ Việt - Anh - Diary Of A Wimpy Kid - Nhật Ký Chú Bé Nhút Nhát - Tập 1', 'TN', 'Jeff Kinney', 'bKĐ', 'image_195509_1_31011.jpg', 20, '81600', '97920', '', '2022-03-17 06:40:25'),
(52, 'Tập Tô Màu Nhà Trẻ - Chủ Đề Động Vật', 'TN', 'Trung Kiên', 'bKĐ', '8936046599036.jpg', 20, '4875', '5850', '', '2022-03-17 06:40:30'),
(53, 'Những Truyện Hay Viết Cho Thiếu Nhi - Tô Hoài (Tái Bản 2019)', 'TN', 'Tô Hoài', 'bKĐ', 'image_180888.jpg', 20, '55500', '66600', '', '2022-03-17 06:40:32'),
(54, 'Từ Điển Hình Ảnh Cho Bé: Động Vật (Tái Bản 2019)', 'TN', 'Lê Bích Thuỷ, Hiếu Minh', 'bKĐ', 'image_188750.jpg', 20, '24500', '29400', '', '2022-03-17 06:40:38'),
(55, 'Cổ Oai Ơi! - Tập 15: Xem Tivi, Điện Thoại Ít Thôi', 'TN', 'BS Trần Thị Uyên Thảo', 'bKĐ', 'z3162919790448_d06b6124ed83ab314a8b8dca6047eaf2.jpg', 20, '34800', '41760', '', '2022-03-17 06:40:42'),
(56, '300 Miếng Bóc Dán Thông Minh - Khả Năng Sáng Tạo', 'TN', 'Ưu Ưu Thử', 'bKĐ', 'image_195509_1_45917.jpg', 20, '24000', '28800', '', '2022-03-17 06:40:46'),
(57, 'Charlie Và Nhà Máy Sô Cô La (Tái Bản 2021)', 'TN', 'Roald Dahl', 'bKĐ', 'image_219998.jpg', 20, '54000', '64800', '', '2022-03-17 06:40:49'),
(58, 'Tập Tô Màu Nhà Trẻ - Chủ Đề Màu Sắc', 'TN', 'Khánh Hòa', 'bKĐ', '8936046599210.jpg', 20, '4875', '5850', '', '2022-03-17 06:40:53'),
(59, 'Cổ Oai Ơi! - Tập 13: Đi Ngủ Đúng Giờ Nha', 'TN', 'BS Trần Thị Uyên Thảo', 'bKĐ', 'z3162919793759_906b67c402f0b01e9b8aaae4104ae92c.jpg', 20, '34800', '41760', '', '2022-03-17 06:40:56'),
(60, 'Danh Nhân Thế Giới: Nôben (Tái Bản 2019)', 'TN', 'Han Kiên', 'bKĐ', 'image_181942.jpg', 20, '27000', '32400', '', '2022-03-17 06:41:03'),
(61, 'Bé Tập Kể Chuyện - Cáo, Thỏ, Gà Trống (Tái Bản 2016)', 'TN', 'Nguyễn Hoàng', 'bKĐ', 'be_tap_ke_chuyen___cao__tho__ga_trong_tai_ban_2016_1_2018_11_03_11_19_28.JPG', 20, '8500', '10200', '', '2022-03-17 06:41:10'),
(62, '100 Bí Ẩn Đáng Kinh Ngạc Về Khoa Học', 'TN', 'Alex Frith, Minna Lacey, Jerome Martin, Jonathan Melmoth', 'bKĐ', 'image_144930.jpg', 20, '72000', '86400', '', '2022-03-17 06:41:21'),
(63, 'Bé Tập Kể Chuyện - Chú Thỏ Tinh Khôn', 'TN', 'Nhiều Tác Giả', 'bKĐ', '8934974138938.jpg', 20, '8500', '10200', '', '2022-03-17 06:41:25'),
(64, 'Lớp Học Mật Ngữ - Tập 13 - Tặng Kèm Huy Hiệu Mẫu Ngẫu Nhiên', 'TN', 'Nhiều Tác Giả', 'bKĐ', 'lhmn13.jpg', 20, '30800', '36960', '', '2022-03-17 06:41:47'),
(65, 'Tập Tô Màu Nhà Trẻ - Chủ Đề Màu Sắc', 'TN', 'Khánh Hòa', 'bKĐ', '8936046599210.jpg', 20, '4875', '5850', '', '2022-03-17 06:41:51'),
(66, 'Dán Hình Trang Phục Công Chúa - Nữ Hoàng Dạ Hội', 'TN', 'Văn Tâm', 'bKĐ', 'image_189637.jpg', 20, '31200', '37440', '', '2022-03-17 06:41:53'),
(67, 'Bé Tập Kể Chuyện - Cáo, Thỏ, Gà Trống (Tái Bản 2016)', 'TN', 'Nguyễn Hoàng', 'bKĐ', 'be_tap_ke_chuyen___cao__tho__ga_trong_tai_ban_2016_1_2018_11_03_11_19_28.JPG', 20, '8500', '10200', '', '2022-03-17 06:41:56'),
(68, 'Danh Nhân Thế Giới: Nôben (Tái Bản 2019)', 'TN', 'Han Kiên', 'bKĐ', 'image_181942.jpg', 20, '27000', '32400', '', '2022-03-17 06:42:00'),
(69, 'Tập Tô Màu Nhà Trẻ - Chủ Đề Đồ Dùng Và Đồ Chơi', 'TN', 'Khánh Hòa', 'bKĐ', '8936046599197.jpg', 20, '4875', '5850', '', '2022-03-17 06:42:09'),
(70, 'Danh Nhân Thế Giới: Êđixơn (Tái Bản 2019)', 'TN', 'Han Kiên', 'bKĐ', 'image_181945.jpg', 20, '27000', '32400', '', '2022-03-17 06:42:20'),
(71, 'Danh Nhân Thế Giới: Fabrê (Tái Bản 2019)', 'TN', 'Han Kiên', 'bKĐ', 'image_181946.jpg', 20, '27000', '32400', '', '2022-03-17 06:42:27'),
(72, 'Bé Tập Tô Màu - Hoa', 'TN', 'Hải Nam', 'bKĐ', 'image_190041.jpg', 20, '6500', '7800', '', '2022-03-17 06:42:30'),
(73, 'Bé Học Lễ Giáo - Bubu Giúp Mẹ (Tập 24) (Tái Bản)', 'TN', 'Bìa Mềm', 'bKĐ', '8934974136842.jpg', 20, '9000', '10800', '', '2022-03-17 06:42:34'),
(74, 'Giáo Dục Giới Tính Và Nhân Cách Dành Cho Bé Gái - Tớ Biết Quý Trọng Cơ Thể Mình', 'TN', 'Trung tâm Sáng tạo Thiếu nhi Mộc Đầu Nhân', 'bKĐ', 'image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_2712.jpg', 20, '25600', '30720', '', '2022-03-17 06:42:37'),
(75, 'Kính Vạn Hoa Tập 1 (Phiên Bản Mới) (Tái Bản 2019)', 'TN', 'Nguyễn Nhật Ánh', 'bKĐ', 'image_188536.jpg', 20, '60030', '72036', '', '2022-03-17 06:42:40'),
(76, 'Who? Chuyện Kể Về Danh Nhân Thế Giới: Bill Gates (Tái Bản 2019)', 'TN', 'Chung Be Studios, Ahn Hyungmo', 'bKĐ', 'image_182979.jpg', 20, '49500', '59400', '', '2022-03-17 06:42:47'),
(77, 'Những Tù Nhân Của Địa Lí - Khám Phá Sự Vận Hành Của Thế Giới Qua Những Tấm Bản Đồ - Phiên Bản Minh Hoạ Màu Dành Cho Độc Giả Trẻ', 'TN', 'Tim Marshall, Grace Easton, Jessica Smith', 'bKĐ', 'image_232917.jpg', 20, '172000', '206400', '', '2022-03-17 06:42:55'),
(78, 'Combo Gieo Mầm Tính Cách Cho Bé Yêu (Bộ 9 Cuốn)', 'TN', 'Nhiều Tác Giả', 'bKĐ', 'untitled-1_36_1.jpg', 20, '191250', '229500', '', '2022-03-17 06:43:00'),
(79, 'Lớp Học Mật Ngữ - Tập 1 - Tái Bản 2020 - Tặng Kèm Quà Tặng Huy Hiệu', 'TN', 'B R O Group', 'bKĐ', 'z2023256882537_9ed40a5bf624cf04f14a8eed6f5090ae_1.jpg', 20, '31500', '37800', '', '2022-03-17 06:43:04'),
(80, 'Mẹ Hỏi Bé Trả Lời - Hỏi Đáp Rèn Trí Thông Minh - 2-3 Tuổi', 'TN', 'Thanh Anh', 'bKĐ', 'image_237442.jpg', 20, '32400', '38880', '', '2022-03-17 06:43:09'),
(81, 'Who? Chuyện Kể Về Danh Nhân Thế Giới: Leonardo Da Vinci (Tái Bản 2020)', 'TN', 'Choe, Byeongkuk, Ahn, Hyungmo', 'bKĐ', 'image_195509_1_34210.jpg', 20, '49500', '59400', '', '2022-03-17 06:43:14'),
(82, 'Bé Tập Kể Chuyện - Chú Vịt Xám', 'TN', 'Nhiều Tác Giả', 'bKĐ', 'image_188045.jpg', 20, '8500', '10200', '', '2022-03-17 06:43:17'),
(83, 'Danh Nhân Thế Giới: Hêlen (Tái Bản 2019)', 'TN', 'Pắc Chông Quan', 'bKĐ', 'image_181947.jpg', 20, '23100', '27720', '', '2022-03-17 06:43:29'),
(84, 'Danh Nhân Thế Giới: Lincôn (Tái Bản 2019)', 'TN', 'Kim Nam Kin, Kim Bôc Jông', 'bKĐ', 'image_181948.jpg', 20, '23400', '28080', '', '2022-03-17 06:43:32'),
(85, 'Cổ Oai Ơi! - Tập 14: Cắt Móng Tay, Móng Chân Nha', 'TN', 'BS Trần Thị Uyên Thảo', 'bKĐ', 'z3162919793761_e24fa1cb2e3c04898d0d76967dad9b5f.jpg', 20, '34800', '41760', '', '2022-03-17 06:43:37'),
(86, 'Bé Tập Kể Chuyện - Chú Dê Đen', 'TN', 'Nhiều Tác Giả', 'bKĐ', 'image_121414.jpg', 20, '8000', '9600', '', '2022-03-17 06:43:44'),
(87, 'Cổ Oai Ơi! - Tập 14: Cắt Móng Tay, Móng Chân Nha', 'TN', 'BS Trần Thị Uyên Thảo', 'bKĐ', 'z3162919793761_e24fa1cb2e3c04898d0d76967dad9b5f.jpg', 20, '34800', '41760', '', '2022-03-17 06:43:45'),
(88, 'Danh Nhân Thế Giới: Hêlen (Tái Bản 2019)', 'TN', 'Pắc Chông Quan', 'bKĐ', 'image_181947.jpg', 20, '23100', '27720', '', '2022-03-17 06:43:47'),
(89, 'Danh Nhân Thế Giới: Lincôn (Tái Bản 2019)', 'TN', 'Kim Nam Kin, Kim Bôc Jông', 'bKĐ', 'image_181948.jpg', 20, '23400', '28080', '', '2022-03-17 06:43:49'),
(90, 'Lớp Học Mật Ngữ - Tập 17 (Tái Bản 2021) - Tặng Kèm Huy Hiệu', 'TN', 'Nhiều Tác Giả', 'bKĐ', '8938507002208_1.jpg', 20, '31500', '37800', '', '2022-03-17 06:43:54'),
(91, 'Bé Tập Tô Màu - Phương Tiện Giao Thông', 'TN', 'Hải Nam', 'bKĐ', 'image_190042.jpg', 20, '6500', '7800', '', '2022-03-17 06:43:57'),
(92, 'Bé Tập Tô Và Ghép Vần - Hành Trang Cho Bé Vào Lớp 1', 'TN', 'Vân Hương', 'bKĐ', 'untitled-3zzzzzzzzzzz.jpg', 20, '8000', '9600', '', '2022-03-17 06:44:03'),
(93, 'Semantic Error - Lỗi Logic - Tập 1 - Tặng Kèm Bookmark + 01 Postcard', 'TT', 'J Soori', 'bBuđ', 'bia---semantic-error_1.jpg', 20, '220000', '264000', '', '2022-03-17 06:59:19'),
(94, 'Nhà Giả Kim (Tái Bản 2020)', 'TT', 'Paulo Coelho', 'bGd', 'image_195509_1_36793.jpg', 20, '56500', '67800', '', '2022-03-17 06:59:26'),
(95, 'Mong Mẹ Hãy Yêu Lấy Chính Mình', 'TT', 'Jang Hae Joo', 'bHN', 'z3201738096185_58cdcf91c91a4e6e5c90511975d567ac.jpg', 20, '86130', '103356', '', '2022-03-17 06:59:29'),
(96, 'Cây Cam Ngọt Của Tôi', 'TT', 'José Mauro de Vasconcelos', 'bGd', 'image_217480.jpg', 20, '67000', '80400', '', '2022-03-17 06:59:35'),
(97, 'Ra Bờ Suối Ngắm Hoa Kèn Hồng - Tặng Kèm Bookmark Bồi Hai Mặt + Thiệp Trái Tim In Bài Thơ Của Tác Giả', 'TT', 'Nguyễn Nhật Ánh', 'bSk', '600ra-bo-suoi---bm_1.jpg', 20, '108000', '129600', '', '2022-03-17 06:59:40'),
(98, 'Tiểu Thuyết Chuyển Thể - Thanh Gươm Diệt Quỷ: Tanjiro Và Nezuko - Khởi Đầu Của Định Mệnh', 'TT', 'Koyoharu Gotouge, Shuka Matsuda', 'bQđ', 'tieu-thuyet-chuyen-the---thanh-guom-diet-quy---khoi-dau-cua-dinh-menh.jpg', 20, '49500', '59400', '', '2022-03-17 06:59:47'),
(99, 'Con Chim Xanh Biếc Bay Về - Tặng Kèm 6 Postcard', 'TT', 'Nguyễn Nhật Ánh', 'bCtQg', 'biamem.jpg', 20, '101000', '121200', '', '2022-03-17 06:59:52'),
(100, 'Tớ Muốn Ăn Tụy Của Cậu', 'TT', 'Sumino Yoru', 'bHĐ', 'image_145277.jpg', 20, '69500', '83400', '', '2022-03-17 06:59:56'),
(101, 'Bước Chậm Lại Giữa Thế Gian Vội Vã (Tái Bản 2018)', 'TT', 'Hae Min', 'bQđ', 'buoc_cham_lai_giua_the_gian_voi_va.u335.d20160817.t102115.612356.jpg', 20, '60800', '72960', '', '2022-03-17 07:00:03'),
(102, 'Những Cậu Quý Tử Bí Ẩn Ở Thị Trấn Sakura - Tập 1', 'TT', 'K Area', 'bKhvkt', 'ph_t-h_nh-nh_ng-c_u-qu_-t_-b_-_n-_-th_-tr_n-sakurab_a-tr_c.jpg', 20, '108000', '129600', '', '2022-03-17 07:00:07'),
(103, 'Tăng Thông Khí (Bộ 2 Tập) - Tặng Kèm 2 Bookmark In 2 Mặt', 'TT', 'J Soori, Bboungbbangkkyu', 'bKhxh', 'bia1tap1_tangthongkhi600.jpg', 20, '193499', '232199', '', '2022-03-17 07:00:12'),
(104, 'Ông Trăm Tuổi Trèo Qua Cửa Số Và Biến Mất (Tái Bản 2018)', 'TT', 'Jonas Jonasson', 'bLđxh', 'image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_2728.jpg', 20, '119000', '142800', '', '2022-03-17 07:00:15'),
(105, 'Trường An Ly Ca - Tập 1: Máu Đỏ Hoa Đào', 'TT', 'Úc Phức', 'bSk', '8935235233003.jpg', 20, '152250', '182700', '', '2022-03-17 07:00:19'),
(106, 'Ra Bờ Suối Ngắm Hoa Kèn Hồng - Bìa Cứng - Tặng Kèm Bookmark Bồi Hai Mặt + Thiệp Trái Tim In Bài Thơ Của Tác Giả + Phiên Bản Khổ Nhỏ Sách Út Quyên Và Tôi', 'TT', 'Nguyễn Nhật Ánh', 'bKhvkt', '600ra-bo-suoi---bc_1.jpg', 20, '215000', '258000', '', '2022-03-17 07:00:24'),
(107, 'Trái Tim Phù Thuỷ', 'TT', 'Genevieve Gornichec', 'bMt', 'bia1_trai-tim-phu-thuy_final.jpg', 20, '120930', '145116', '', '2022-03-17 07:00:40'),
(108, 'Một Thoáng Ta Rực Rỡ Ở Nhân Gian', 'TT', 'Ocean Vuong', 'bHnv', 'image_244718_1_5473.jpg', 20, '108000', '129600', '', '2022-03-17 07:00:46'),
(109, 'Tìm Em Nơi Anh - Find Me', 'TT', 'André Aciman', 'bLđxh', 'image_225272.jpg', 20, '92000', '110400', '', '2022-03-17 07:00:49'),
(110, 'Cho Tôi Xin Một Vé Đi Tuổi Thơ (Bìa Mềm) (Tái Bản 2018)', 'TT', 'Nguyễn Nhật Ánh', 'bNn', 'image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_1233.jpg', 20, '64000', '76800', '', '2022-03-17 07:00:54'),
(111, 'Tôi Thấy Hoa Vàng Trên Cỏ Xanh (Bản In Mới - 2018)', 'TT', 'Nguyễn Nhật Ánh', 'bKhtnvCn', 'image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_2199.jpg', 20, '87500', '105000', '', '2022-03-17 07:01:00'),
(112, 'Mắt Biếc (Tái Bản 2019)', 'TT', 'Nguyễn Nhật Ánh', 'bLlct', 'mat-biec_bia-mem_in-lan-thu-44.jpg', 20, '71000', '85200', '', '2022-03-17 07:01:04'),
(113, 'Chiến Binh Cầu Vồng (Tái Bản 2020)', 'TT', 'Andrea Hirata', 'bKhtnvCn', 'image_195509_1_36366.jpg', 20, '68000', '81600', '', '2022-03-17 07:01:10'),
(114, 'Julie Hay Nàng Héloïse Mới', 'TT', 'Jean Jacques Rousseau', 'bKĐ', 'julie-hay-nang-heloise-moi-01.jpg', 20, '254150', '304980', '', '2022-03-17 07:01:13'),
(115, 'Totto-Chan Bên Cửa Sổ (Tái Bản 2019)', 'TT', 'Kuroyanagi Tetsuko', 'bPn', 'image_181775.jpg', 20, '83300', '99960', '', '2022-03-17 07:01:20'),
(116, 'Red, White & Royal Blue - Tặng Kèm 1 Ticket Cinema', 'TT', 'Casey McQuiston', 'bGd', 'red_-white-_-royal-bluebia-1_1.jpg', 20, '122320', '146784', '', '2022-03-17 07:01:24'),
(117, 'Rừng Nauy (Tái Bản 2021)', 'TT', 'Haruki Murakami', 'bLđxh', 'image_240307.jpg', 20, '109000', '130800', '', '2022-03-17 07:01:46'),
(118, 'Cô Gái Đến Từ Hôm Qua', 'TT', 'Nguyễn Nhật Ánh', 'bHN', 'co_gai_den_tu_hom_qua_1_2018_11_16_11_03_46.JPG', 20, '72000', '86400', '', '2022-03-17 07:01:52'),
(119, 'Trúc Thư Dao 1 - Nước Tần - Có Nàng Tên Thập', 'TT', 'Văn Giản Tử', 'bBuđ', '8935235233133.jpg', 20, '155730', '186876', '', '2022-03-17 07:01:55'),
(120, 'Cuộc Phiêu Lưu Của Thuyền Trưởng Corcoran', 'TT', 'Alfred Assollant', 'bKhxh', '8936067597752.jpg', 20, '33300', '39960', '', '2022-03-17 07:02:01'),
(121, 'Bố Già (Đông A)', 'TT', 'Mario Puzo', 'bLđxh', '8936071673381.jpg', 20, '72100', '86520', '', '2022-03-17 07:02:06'),
(122, 'Tôi Là Bêtô (Tái Bản 2018)', 'TT', 'Nguyễn Nhật Ánh', 'bNA', 'image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_1236.jpg', 20, '59500', '71400', '', '2022-03-17 07:02:10'),
(123, 'Mùa Hè Dối Trá', 'TT', 'Bernhard Schlink', 'bGd', 'image_187007.jpg', 20, '91800', '110160', '', '2022-03-17 07:02:16'),
(124, 'Tội Lỗi Của Người Cha', 'TT', 'Jeffrey Archer', 'bKhvkt', 'image_195509_1_19556.jpg', 20, '113600', '136320', '', '2022-03-17 07:02:20'),
(125, 'Những Kẻ Đáng Ngờ', 'TT', 'Keigo Higashino', 'bKhxh', 'nhung-ke-dang-ngo.jpg', 20, '85260', '102312', '', '2022-03-17 07:02:25'),
(126, 'Bố Già - Bìa Cứng', 'TT', 'Mario Puzo', 'bKhtnvCn', 'z2611575615164_9f60c133cfed1c7bb3f59b247f-600.jpg', 20, '150000', '180000', '', '2022-03-17 07:02:32'),
(127, '999 Lá Thư Gửi Cho Chính Mình - Mong Bạn Trở Thành Phiên Bản Hoàn Hảo Nhất (Tập 1) - Tái Bản 2021', 'TT', 'Miêu Công Tử', 'bBđ', '999lathu-taibbb1_2.jpg', 20, '105780', '126936', '', '2022-03-17 07:02:44'),
(128, 'Đẹp Là Một Nỗi Đau', 'TT', 'Eka Kurniawan', 'bSk', 'image_195509_1_19549.jpg', 20, '148750', '178500', '', '2022-03-17 07:02:50'),
(129, 'Biên Niên Ký Chim Vặn Dây Cót (Tái Bản 2020)', 'TT', 'Haruki Murakami', 'bLlct', 'image_195509_1_34399.jpg', 20, '129350', '155220', '', '2022-03-17 07:02:56'),
(130, 'Phía Tây Không Có Gì Lạ', 'TT', 'Erich Maria Remarque', 'bBđ', '8936071674135_2.jpg', 20, '56550', '67860', '', '2022-03-17 07:03:04'),
(131, 'Anne Tóc Đỏ Làng Avonlea', 'TT', 'Lucy Maud Montgomery', 'bMt', '8935235233270.jpg', 20, '97440', '116928', '', '2022-03-17 07:03:09'),
(132, 'Cô Gái Dưới Tầng Hầm', 'TT', 'Stacey Lee', 'bBđ', 'image_195509_1_29466.jpg', 20, '120000', '144000', '', '2022-03-17 07:03:14'),
(133, 'Tôi Lại Mơ Thấy Giấc Mơ Ấy', 'TT', 'Yoru Sumino', 'bPn', '_toi-lai-mo-thay-giac-mo-ay_14-mm.jpg', 20, '85260', '102312', '', '2022-03-17 07:03:19'),
(134, 'Shosha (Bìa Mềm)', 'TT', 'Isaac Bashevis Singer', 'bLlct', 'image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_76.jpg', 20, '143200', '171840', '', '2022-03-17 07:03:26'),
(135, 'Chỉ Mình Tôi Thăng Cấp - Solo Leveling - Tập 1 - Tặng Kèm Standee', 'TT', 'Chugong', 'bHnv', 'ch_-m_nh-t_i-th_ng-c_p---solo-leveling-1111_2.jpg', 20, '217500', '261000', '', '2022-03-17 07:03:40'),
(136, 'Mơ Về Bầu Trời Đỏ Tía - Tặng Kèm Bookmark + Postcard Có Chữ Kí Tác Giả (10x15 cm)', 'TT', 'Yui Yoshikawa', 'bHN', 'z25846_6008aacf037eab.jpg', 20, '86200', '103440', '', '2022-03-17 07:03:49'),
(137, 'Bộ Sách Ma Đạo Tổ Sư - Tập 3&4', 'TT', 'Mặc Hương Đồng Khứu', 'bLđ', 'madaotosutap45.jpg', 20, '213400', '256080', '', '2022-03-17 07:03:53'),
(138, 'Bi Thương Ngược Dòng Thành Sông (Tái Bản 2020)', 'TT', 'Quách Kính Minh', 'bBuđ', 'biaao_bithuongnguocdongthanhsong_3.jpg', 20, '119200', '143040', '', '2022-03-17 07:03:59'),
(139, 'Arsène Lupin - Siêu Trộm Hào Hoa - Cây Kim Rỗng', 'TT', 'Maurice Leblanc', 'bHnv', 'image_195509_1_37516.jpg', 20, '76000', '91200', '', '2022-03-17 07:04:04'),
(140, 'Việt Nam Danh Tác - Tiêu Sơn Tráng Sĩ', 'TT', 'Khái Hưng', 'bNn', '8935235232907.jpg', 20, '120930', '145116', '', '2022-03-17 07:04:09'),
(141, 'Có Hai Con Mèo Ngồi Bên Cửa Sổ (Tái Bản 2018)', 'TT', 'Nguyễn Nhật Ánh', 'bSk', 'cohaiconmeobencuasotaiban2018_1.jpg', 20, '71000', '85200', '', '2022-03-17 07:04:18'),
(142, 'Anne Tóc Đỏ Dưới Chái Nhà Xanh (Tái Bản 2021)', 'TT', 'Lucy Maud Montgomery', 'bGt', 'image_239652.jpg', 20, '103530', '124236', '', '2022-03-17 07:04:24'),
(143, 'Hoa Vẫn Nở Mỗi Ngày', 'TT', 'Valérie Perrin', 'bGd', 'image_206332.jpg', 20, '198900', '238680', '', '2022-03-17 07:04:29'),
(144, 'Từ Dụ Thái Hậu - Quyển Thượng', 'TT', 'Trần Thuỳ Mai', 'bKĐ', 'image_186311.jpg', 20, '120250', '144300', '', '2022-03-17 07:04:36'),
(145, 'Việt Nam Danh Tác - Sống Mòn', 'TT', 'Nam Cao', 'bLđ', '8935235232914.jpg', 20, '94830', '113796', '', '2022-03-17 07:04:39'),
(146, 'Luật Tâm Thức - Giải Mã Ma Trận Vũ Trụ', 'KH', 'Ngô Sa Thạch', 'bKhxh', 'bia1_luttttttttttattamthuc.jpg', 20, '222000', '266400', '', '2022-03-17 07:12:16'),
(147, 'Sao Chúng Ta Lại Ngủ - Why We SLeep', 'KH', 'Matthew Walker', 'bGd', 'biaao-01.jpg', 20, '174300', '209160', '', '2022-03-17 07:12:22'),
(148, 'Thần Số Học Ứng Dụng', 'KH', 'Joy Woodward', 'bNA', 'image_217703.jpg', 20, '77400', '92880', '', '2022-03-17 07:12:27'),
(149, 'Cơ Thể Tự Chữa Lành: Thực Phẩm Thay Đổi Cuộc Sống', 'KH', 'Anthony William', 'bMt', 'image_195509_1_39595.jpg', 20, '148000', '177600', '', '2022-03-17 07:12:30'),
(150, 'Luật Tâm Thức - Giải Mã Ma Trận Vũ Trụ - Bản Đặc Biệt - Bìa Cứng', 'KH', 'Ngô Sa Thạch', 'bBuđ', 'bia1_luttttttttttattamthuc_1.jpg', 20, '249000', '298800', '', '2022-03-17 07:12:35'),
(151, 'IC3 GS6 - Tăng Cường Tin Học Quốc Tế - Dành Cho Học Sinh Lớp 6', 'KH', 'IIG Việt Nam', 'bLlct', '9786043352504.jpg', 20, '71250', '85500', '', '2022-03-17 07:12:40'),
(152, 'Nghề Thầy', 'KH', 'Hoàng Đạo Thúy', 'bNA', 'nghe-thay-01.jpg', 20, '59500', '71400', '', '2022-03-17 07:12:45'),
(153, 'Bí Mật Dinh Dưỡng Cho Sức Khỏe Toàn Diện', 'KH', 'T Collin Campbell, Thomas M Cambpell II', 'bHnv', 'image_244718_1_5019.jpg', 20, '246000', '295200', '', '2022-03-17 07:12:52'),
(154, 'Raw Vegan - Sức Mạnh Chữa Lành Của Thực Vật', 'KH', 'Norman W Walker', 'bPn', 'image_209338.jpg', 20, '73600', '88320', '', '2022-03-17 07:12:57'),
(155, 'Cơ Thể Tự Chữa Lành: Giải Cứu Gan', 'KH', 'Anthony William', 'bGt', 'co-the-tu-chua-lanh-3_bia-1.jpg', 20, '200000', '240000', '', '2022-03-17 07:13:00'),
(156, 'Nhân Tố Enzyme - Phương Thức Sống Lành Mạnh (Tái Bản 2019)', 'KH', 'Hiromi Shinya', 'bSk', 'image_223771.jpg', 20, '71200', '85440', '', '2022-03-17 07:13:05'),
(157, 'Thần Số Học Ứng Dụng Cho Con: Hiểu Con Toàn Diện, Giúp Con Thành Công', 'KH', 'Duke Tran', 'bLđ', 'z3086480004598_0693fcc1efe237a22517291360c0ecc8.jpg', 20, '179900', '215880', '', '2022-03-17 07:13:08'),
(158, 'Ăn Gì Không Chết - Sức Mạnh Chữa Lành Của Thực Phẩm', 'KH', 'Michael Greger - Gene Stone', 'bKhvkt', '8934974154136.jpg', 20, '250750', '300900', '', '2022-03-17 07:13:13'),
(159, 'Giáo Trình C++ Và Lập Trình Hướng Đối Tượng', 'KH', 'Phạm Văn Ất, Lê Trường Thông', 'bPn', 'image_144923.jpg', 20, '116000', '139200', '', '2022-03-17 07:13:44'),
(160, 'Ăn Xanh Để Khỏe', 'KH', 'Norman W Walker', 'bMt', 'image_195509_1_3032.jpg', 20, '68000', '81600', '', '2022-03-17 07:13:48'),
(161, 'Minh Triết - Trong Ăn Uống Của Phương Đông (Tái Bản)', 'KH', 'Ngô Đức Vượng', 'bPĐ', 'image_184179.jpg', 20, '110400', '132480', '', '2022-03-17 07:13:55'),
(162, 'Ứng Dụng Casio Fx - 580Vn X Đối Với Các Môn THPT Lý - Hóa - Sinh', 'KH', 'Bitex', 'bKhvkt', 'image_195509_1_27541.jpg', 20, '96000', '115200', '', '2022-03-17 07:13:58'),
(163, 'Nhân Tố Enzyme 3 - Trẻ Hóa (Tái Bản 2021)', 'KH', 'Hiromi Shinya', 'bKhxh', 'image_241456.jpg', 20, '72980', '87576', '', '2022-03-17 07:14:02'),
(164, 'Cơ Thể Tự Chữa Lành: Phục Hồi Tuyến Giáp', 'KH', 'Anthony William', 'bLlct', 'image_224058.jpg', 20, '147600', '177120', '', '2022-03-17 07:14:05'),
(165, 'Cơ Thể Tự Chữa Lành: Nước Ép Cần Tây', 'KH', 'Anthony William', 'bQđ', 'image_217697.jpg', 20, '118400', '142080', '', '2022-03-17 07:14:08'),
(166, 'Cơ Thể Tự Chữa Lành: Nước Ép Cần Tây', 'KH', 'Anthony William', 'bCtQg', 'image_217697.jpg', 20, '118400', '142080', '', '2022-03-17 07:18:46'),
(167, 'Microsoft Office Word 2016', 'KH', 'IIG Việt Nam', 'bLđxh', 'image_195509_1_50168_1.jpg', 20, '74100', '88920', '', '2022-03-17 07:18:57'),
(168, 'Cơ Thể Tự Chữa Lành', 'KH', 'Anthony William', 'bQđ', 'image_195509_1_30513.jpg', 20, '128000', '153600', '', '2022-03-17 07:18:59'),
(169, 'Nhân Tố Enzyme 4 - Minh Họa (Tái Bản 2021)', 'KH', 'Hiromi Shinya', 'bKhtnvCn', 'bia_nhan-to-enzyme_minh-hoa.u5465.d20170809.t121006.899359.jpg', 20, '77430', '92916', '', '2022-03-17 07:19:02'),
(170, 'Cuộc Cách Mạng Một - Cọng - Rơm (Tái Bản 2020)', 'KH', 'Masanobu Fukuoka', 'bSk', 'image_195509_1_19851_1.jpg', 20, '90000', '108000', '', '2022-03-17 07:19:06'),
(171, 'Chiêm Tinh Học - Vận Dụng Trí Tuệ Về Các Vì Sao Vào Đời Sống', 'KH', 'Carole Taylor', 'bKhxh', '8936071678010.jpg', 20, '297500', '357000', '', '2022-03-17 07:19:11'),
(172, 'Em Học Python - Sách Hướng Dẫn Vui Học Lập Trình', 'KH', 'Jason R Briggs', 'bLđxh', 'image_244718_1_5805.jpg', 20, '156600', '187920', '', '2022-03-17 07:19:13'),
(173, 'Sống Lành Để Trẻ', 'KH', 'Norman W Walker', 'bPn', 'image_195509_1_3033.jpg', 20, '68000', '81600', '', '2022-03-17 07:19:18'),
(174, 'Trong Phòng Chờ Với Bác Sĩ Wynn', 'KH', 'BS Wynn Huỳnh Trần', 'bNA', 'gioi-thieu-sach-dr-wynn-1.jpg', 20, '122180', '146616', '', '2022-03-17 07:19:21'),
(175, 'Atlas Giải Phẫu Cơ Thể Người', 'KH', 'BS Alice Roberts', 'bSk', 'atlas-giai-phau-co-the-nguoi.jpg', 20, '550800', '660960', '', '2022-03-17 07:19:24'),
(176, 'DevUP - Cuốn Sách Toàn Diện Phát Triển Sự Nghiệp Của Lập Trình Viên', 'KH', 'Nguyễn Hiển', 'bKĐ', 'devup.jpg', 20, '122180', '146616', '', '2022-03-17 07:19:29'),
(177, 'Gieo Mầm Trên Sa Mạc', 'KH', 'Masanobu Fukuoka', 'bCand', 'image_195509_1_19852.jpg', 20, '90000', '108000', '', '2022-03-17 07:19:36'),
(178, '1800 Bài Thuốc Thông Dụng Hay Nhất Chữa Bệnh Trong Gia Đình', 'KH', 'Lương y Tuệ Minh', 'bHnv', 'image_195509_1_21698.jpg', 20, '50400', '60480', '', '2022-03-17 07:19:42'),
(179, 'Kỹ Thuật Trồng Mai', 'KH', 'Việt Chương', 'bBđ', 'image_64207.jpg', 20, '39150', '46980', '', '2022-03-17 07:19:48'),
(180, 'Combo Sống Lành Để Trẻ + Ăn Xanh Để Khỏe (Bộ 2 Cuốn)', 'KH', 'Norman W Walker', 'bNA', 'untitled-2_51.jpg', 20, '136000', '163200', '', '2022-03-17 07:19:53'),
(181, 'IC3 Spark - Cuộc Sống Trực Tuyến (Tái Bản)', 'KH', 'IIG Việt Nam', 'bHp', 'image_244718_1_1484.jpg', 20, '35150', '42180', '', '2022-03-17 07:19:55'),
(182, 'Sách Giải Nhanh Bài Thi Trắc Nghiệm Môn Toán Với Sự Hỗ Trợ Của Máy Tính Casio Fx - 580 VN X', 'KH', 'Bitex', 'bHN', 'img_20191226_0003.jpg', 20, '120000', '144000', '', '2022-03-17 07:19:58'),
(183, 'Bí Ẩn Mãi Mãi Là Bí Ẩn - Tập 3 (Tái Bản 2017)', 'KH', 'Nhiều Tác Giả', 'bMt', 'image_132958.jpg', 20, '32000', '38400', '', '2022-03-17 07:20:01'),
(184, 'Giáo Trình Kỹ Thuật Lập Trình C Căn Bản & Nâng Cao', 'KH', 'PGS. TS Phạm Văn Ất, TS. Đỗ Văn Tuấn', 'bLđxh', 'c8d7c174cbca49acb9b8ef31cb690557.jpg', 20, '108000', '129600', '', '2022-03-17 07:20:08'),
(185, 'Bí Mật Dotcom (Tái Bản 2021)', 'KH', 'Russel Brunson', 'bSk', 'f04e1b3ae0ee1629b12ad084d661c03a.jpg', 20, '162360', '194832', '', '2022-03-17 07:20:11'),
(186, 'Thông Điệp Của Nước (Tái Bản 2020)', 'KH', 'Masaru Emoto', 'bNn', 'image_195509_1_40496.jpg', 20, '71200', '85440', '', '2022-03-17 07:20:14'),
(187, 'Hướng Dẫn Sử Dụng Máy Tính Khoa Học Casio Fx - 580 Vn X Trong Chương Trình Phổ Thông', 'KH', 'Bitex', 'bNA', 'image_195509_1_27540.jpg', 20, '96000', '115200', '', '2022-03-17 07:20:18'),
(188, 'Ung Thư - Sự Thật, Hư Cấu Và Gian Lận - Những Phương Pháp Chữa Bệnh Không Độc Hại (Tái Bản 2021)', 'KH', 'Ty Bollinger', 'bNA', 'ung-th_---s_-th_t_-h_-c_u_-gian-l_n-_-b_a-1.jpg', 20, '147030', '176436', '', '2022-03-17 07:20:23'),
(189, 'Số Ơi, Mở Ra! - Tư Duy Phân Tích Số Liệu Và Thiết Kế Báo Cáo Excel Dashboard Chuyên Nghiệp', 'KH', 'Nguyễn Thị Lan Phượng', 'bCtQg', '9786043446883.jpg', 20, '148720', '178464', '', '2022-03-17 07:20:26'),
(190, 'Từ Vô Hình Đến Hữu Hình - Khám Phá Thế Giới Diệu Kỳ Của Các Loại Vật Chất', 'KH', 'Mark Miodownik', 'bCtQg', 'image_228512.jpg', 20, '81180', '97416', '', '2022-03-17 07:20:29'),
(191, 'Sức Mạnh Chữa Lành Của Tinh Dầu', 'KH', 'Eric Zielinski', 'bPĐ', 'image_220928.jpg', 20, '138580', '166296', '', '2022-03-17 07:20:31'),
(192, 'IC3 Spark - Các Ứng Dụng Chủ Chốt - Tập 1: Microsoft Office Và Microsoft Word (Tái Bản)', 'KH', 'IIG Việt Nam', 'bKhtnvCn', 'image_195509_1_51673.jpg', 20, '42750', '51300', '', '2022-03-17 07:20:35'),
(193, 'IC3 Spark - Máy Tính Thật Đơn Giản - Tập 2: Phần Cứng Và Phần Mềm Máy Tính (Tái Bản)', 'KH', 'IIG Việt Nam', 'bSk', 'image_244718_1_1483.jpg', 20, '40850', '49020', '', '2022-03-17 07:20:38'),
(194, 'IC3 Spark - Các Ứng Dụng Chủ Chốt - Tập 2: Microsoft Excel Và Microsoft Powerpoint (Tái Bản)', 'KH', 'IIG Việt Nam', 'bÂn', 'image_195509_1_51674.jpg', 20, '37050', '44460', '', '2022-03-17 07:20:41'),
(195, 'Sức Mạnh Chữa Lành Của Tinh Dầu', 'KH', 'Eric Zielinski', 'bKhxh', 'image_220928.jpg', 20, '138580', '166296', '', '2022-03-17 07:20:44'),
(196, 'IC3 Spark - Các Ứng Dụng Chủ Chốt - Tập 1: Microsoft Office Và Microsoft Word (Tái Bản)', 'KH', 'IIG Việt Nam', 'bHnv', 'image_195509_1_51673.jpg', 20, '42750', '51300', '', '2022-03-17 07:20:46'),
(197, 'IC3 Spark - Máy Tính Thật Đơn Giản - Tập 2: Phần Cứng Và Phần Mềm Máy Tính (Tái Bản)', 'KH', 'IIG Việt Nam', 'bCtQg', 'image_244718_1_1483.jpg', 20, '40850', '49020', '', '2022-03-17 07:20:48'),
(198, 'IC3 Spark - Các Ứng Dụng Chủ Chốt - Tập 2: Microsoft Excel Và Microsoft Powerpoint (Tái Bản)', 'KH', 'IIG Việt Nam', 'bHĐ', 'image_195509_1_51674.jpg', 20, '37050', '44460', '', '2022-03-17 07:20:50'),
(199, 'Khí Tâm Trị Liệu - Ứng Dụng Luân Xa Chữa Lành 5 Thể Con Người', 'KH', 'Master Sridevi Tố Hải', 'bKhtnvCn', 'image_221904.jpg', 20, '85000', '102000', '', '2022-03-17 07:20:54'),
(200, 'Số Tay Tìm Huyệt (Tái Bản 2019)', 'KH', 'Đỗ Đức Ngọc', 'bKhxh', 'image_189657.jpg', 20, '54400', '65280', '', '2022-03-17 07:20:57'),
(201, 'Y Học Phổ Thông Dành Cho Mọi Người - Chuyên Đề: Rối Loạn Tim Mạch 1', 'KH', 'Nhiều Tác Giả', 'bHnv', 'image_233171.jpg', 20, '23750', '28500', '', '2022-03-17 07:21:04'),
(202, 'Làm Quen Với Nghệ Thuật Bonsai - Dành Cho Người Mới Chơi', 'KH', 'Bìa Mềm', 'bKhxh', '8935095611072.jpg', 20, '21600', '25920', '', '2022-03-17 07:21:10'),
(203, 'Một Nửa Sự Thật - Nhận Định Về \"Nhân Tố Enzyme\" Của BS Hiromi Shinya', 'KH', 'Vũ Thế Thành, Trần Phạm Chí, Phạm Nguyên Quý', 'bBuđ', '179b36a454b833db0c55b4f3073f8e04.jpg', 20, '86130', '103356', '', '2022-03-17 07:21:16'),
(204, 'Hướng Dẫn Sử Dụng Microsoft Office - Tự Học Nhanh Word-Excel - Dùng Cho Các Phiên Bản 2021-2019-2016', 'KH', 'Phạm Quang Hiển, Phạm Phương Hoa', 'bCtQg', 'image_244718_1_4608.jpg', 20, '154160', '184992', '', '2022-03-17 07:21:22'),
(205, 'Y Học Phổ Thông Dành Cho Mọi Người - Chuyên Đề: Dinh Dưỡng Người Tiểu Đường', 'KH', 'Nhiều Tác Giả', 'bKhvkt', 'image_195509_1_9249.jpg', 20, '17100', '20520', '', '2022-03-17 07:21:29'),
(206, 'Kỹ Thuật Sửa Chữa Ô Tô Cơ Bản (Tái Bản 2019)', 'KH', 'Đức Huy', 'bCtQg', 'image_180859.jpg', 20, '78400', '94080', '', '2022-03-17 07:21:33'),
(207, 'Y Học Sức Khỏe - Thai Kỳ Khỏe Mạnh - Vượt Cạn Bình An', 'KH', 'TS BS Bùi Chí Thương', 'bHĐ', 'image_195509_1_56293.jpg', 20, '66300', '79560', '', '2022-03-17 07:21:36'),
(208, 'Bấm Huyệt Bàn Chân - Chữa Lành Tự Thân (Bấm Huyệt Nhập Môn)', 'KH', 'Stefanie Sabounchian', 'bQđ', 'bamhuyetbanchan-chualanhtuthan.jpg', 20, '103530', '124236', '', '2022-03-17 07:21:40'),
(209, 'Hướng Dẫn Lập Trình Quản Lý Với Microsoft Access', 'KH', 'ThS Huỳnh Tôn Nghĩa', 'bLlct', 'image_191548.jpg', 20, '102060', '122472', '', '2022-03-17 07:21:45'),
(210, 'Bốn Mùa Cuộc Sống - Châm Ngôn Ngày Mới (Tái Bản 2021)', 'KH', 'Jim Rohn', 'bLlct', 'image_241455.jpg', 20, '61500', '73800', '', '2022-03-17 07:21:48'),
(211, 'Khoa Học Dỏm: Vạch Mặt Lang Băm Và Ngành Công Nghiệp Dược Phẩm', 'KH', 'Ben Goldacre', 'bKhvkt', '-khoa-h_c-d_mb_a-s_ch.jpg', 20, '138330', '165996', '', '2022-03-17 07:21:51'),
(212, 'Vũ Trụ Trong Vỏ Hạt Dẻ (Tái Bản 2017)', 'KH', 'Stephen Hawking', 'bNn', '8934974152088.jpg', 20, '78400', '94080', '', '2022-03-17 07:21:55'),
(213, 'Thực Đơn Dinh Dưỡng Cho Người Bệnh Tiểu Đường', 'KH', 'Hoài Thương', 'bCand', 'untitled-12_3_4.jpg', 20, '50400', '60480', '', '2022-03-17 07:21:58'),
(214, 'Kỹ Thuật Nuôi Nhím Và Dúi', 'KH', 'Nguyễn Thị Hồng', 'bHp', '8935073100345.jpg', 20, '16380', '19656', '', '2022-03-17 07:22:04'),
(215, 'Microsoft Office Powerpoint 2016', 'KH', 'IIG Việt Nam', 'bHN', 'image_195509_1_50170_1.jpg', 20, '74100', '88920', '', '2022-03-17 07:22:09'),
(216, 'Excel Dành Cho Người Tự Học', 'KH', 'Phạm Phương Hoa, Phạm Quang Huấn', 'bSk', 'image_195509_1_51659.jpg', 20, '137600', '165120', '', '2022-03-17 07:22:14'),
(217, 'Nước Ép Xanh Chữa Lành Cơ Thể', 'KH', 'Tôn Thụ Hiệp, Vu Nhã Đình', 'bHp', 'image_224069.jpg', 20, '146780', '176136', '', '2022-03-17 07:22:22'),
(218, 'Trồng Mai - Kỹ Thuật Bón Tưới, Phòng Trừ Sâu Rầy, Bệnh Hại', 'KH', 'Việt Chương, Phúc Quyên', 'bKhtnvCn', 'image_64201.jpg', 20, '30100', '36120', '', '2022-03-17 07:22:39'),
(219, 'Thần Dược Xanh', 'KH', 'Ryu Seung Sun', 'bPn', 'than-duoc-xanh_cover.jpg', 20, '159200', '191040', '', '2022-03-17 07:22:46'),
(220, 'Y Học Phổ Thông Dành Cho Mọi Người - Chuyên Đề: Vật Lí Trị Liệu', 'KH', 'Nhiều Tác Giả', 'bPĐ', 'image_225887.jpg', 20, '20500', '24600', '', '2022-03-17 07:22:53'),
(221, 'Đừng Chết Bởi Canxi', 'KH', 'Thomas E Levy', 'bKhvkt', 'image_195509_1_56135.jpg', 20, '127200', '152640', '', '2022-03-17 07:22:56'),
(222, 'Y Học Phổ Thông Dành Cho Mọi Người - Chuyên Đề: Rối Loạn Tim Mạch 1', 'KH', 'Nhiều Tác Giả', 'bGt', 'image_233171.jpg', 20, '23750', '28500', '', '2022-03-17 07:22:58'),
(223, 'Làm Quen Với Nghệ Thuật Bonsai - Dành Cho Người Mới Chơi', 'KH', 'Bìa Mềm', 'bNA', '8935095611072.jpg', 20, '21600', '25920', '', '2022-03-17 07:23:03'),
(224, 'Một Nửa Sự Thật - Nhận Định Về \"Nhân Tố Enzyme\" Của BS Hiromi Shinya', 'KH', 'Vũ Thế Thành, Trần Phạm Chí, Phạm Nguyên Quý', 'bHnv', '179b36a454b833db0c55b4f3073f8e04.jpg', 20, '86130', '103356', '', '2022-03-17 07:23:06'),
(225, 'Hướng Dẫn Sử Dụng Microsoft Office - Tự Học Nhanh Word-Excel - Dùng Cho Các Phiên Bản 2021-2019-2016', 'KH', 'Phạm Quang Hiển, Phạm Phương Hoa', 'bPn', 'image_244718_1_4608.jpg', 20, '154160', '184992', '', '2022-03-17 07:23:07'),
(226, 'Y Học Phổ Thông Dành Cho Mọi Người - Chuyên Đề: Dinh Dưỡng Người Tiểu Đường', 'KH', 'Nhiều Tác Giả', 'bLđ', 'image_195509_1_9249.jpg', 20, '17100', '20520', '', '2022-03-17 07:23:11'),
(227, 'Kỹ Thuật Sửa Chữa Ô Tô Cơ Bản (Tái Bản 2019)', 'KH', 'Đức Huy', 'bGd', 'image_180859.jpg', 20, '78400', '94080', '', '2022-03-17 07:23:14'),
(228, 'Y Học Sức Khỏe - Thai Kỳ Khỏe Mạnh - Vượt Cạn Bình An', 'KH', 'TS BS Bùi Chí Thương', 'bBđ', 'image_195509_1_56293.jpg', 20, '66300', '79560', '', '2022-03-17 07:23:17'),
(229, 'Hướng Dẫn Lập Trình Quản Lý Với Microsoft Access', 'KH', 'ThS Huỳnh Tôn Nghĩa', 'bHnv', 'image_191548.jpg', 20, '102060', '122472', '', '2022-03-17 07:23:19'),
(230, 'Bấm Huyệt Bàn Chân - Chữa Lành Tự Thân (Bấm Huyệt Nhập Môn)', 'KH', 'Stefanie Sabounchian', 'bHp', 'bamhuyetbanchan-chualanhtuthan.jpg', 20, '103530', '124236', '', '2022-03-17 07:23:21'),
(231, 'Bốn Mùa Cuộc Sống - Châm Ngôn Ngày Mới (Tái Bản 2021)', 'KH', 'Jim Rohn', 'bHĐ', 'image_241455.jpg', 20, '61500', '73800', '', '2022-03-17 07:23:22'),
(232, 'Khoa Học Dỏm: Vạch Mặt Lang Băm Và Ngành Công Nghiệp Dược Phẩm', 'KH', 'Ben Goldacre', 'bLlct', '-khoa-h_c-d_mb_a-s_ch.jpg', 20, '138330', '165996', '', '2022-03-17 07:23:24'),
(233, 'Vũ Trụ Trong Vỏ Hạt Dẻ (Tái Bản 2017)', 'KH', 'Stephen Hawking', 'bKhxh', '8934974152088.jpg', 20, '78400', '94080', '', '2022-03-17 07:23:26'),
(234, 'Thực Đơn Dinh Dưỡng Cho Người Bệnh Tiểu Đường', 'KH', 'Hoài Thương', 'bKhvkt', 'untitled-12_3_4.jpg', 20, '50400', '60480', '', '2022-03-17 07:23:29'),
(235, 'Lịch Sử Ung Thư - Hoàng Đế Của Bách Bệnh (Bìa Mềm)', 'KH', 'Siddhartha Mukherjee', 'bBđ', 'image_195509_1_35340.jpg', 20, '231200', '277440', '', '2022-03-17 07:23:35'),
(236, 'Giải Mã Bí Mật Giảm Cân - The Obesity Code', 'KH', 'Jason Fung', 'bÂn', 'gi_i-m_-b_-m_t-gi_m-c_n.jpg', 20, '140000', '168000', '', '2022-03-17 07:23:39'),
(237, 'Nhà Tiên Tri Vanga - Vũ Trụ Huyền Bí', 'KH', 'Anna Marianis', 'bNn', 'image_183150.jpg', 20, '79200', '95040', '', '2022-03-17 07:23:45'),
(238, '100 Bí Ẩn Đáng Kinh Ngạc Về Vũ Trụ', 'KH', 'Alex Frith, Alice James, Jerome Martin', 'bNA', 'image_195509_1_41044.jpg', 20, '80000', '96000', '', '2022-03-17 07:23:50'),
(239, 'Vũ Trụ Từ Hư Không', 'KH', 'Lawrence M Krauss', 'bQđ', 'image_187550.jpg', 20, '118900', '142680', '', '2022-03-17 07:23:54'),
(240, 'Dinh Dưỡng Xanh (Tái Bản 2021)', 'KH', 'Victoria Boutenko', 'bGd', 'image_244718_1_4847.jpg', 20, '81180', '97416', '', '2022-03-17 07:24:00'),
(241, 'Y Học Phổ Thông Dành Cho Mọi Người - Chuyên Đề: Khí Công Và Sức Khỏe', 'KH', 'Nhiều Tác Giả', 'bSk', 'image_195509_1_9259.jpg', 20, '17100', '20520', '', '2022-03-17 07:24:07'),
(242, 'Bác Sĩ Tốt Nhất Là Chính Mình - Tập 8: Để Trái Tim Luôn Khỏe Mạnh (Tái Bản)', 'KH', 'Nhiều Tác Giả', 'bBđ', '8934974163398.jpg', 20, '34000', '40800', '', '2022-03-17 07:24:10'),
(243, 'Sinh Học Phân Tử Của Tế Bào (Tập 2)', 'KH', 'Nhiều Tác Giả', 'bCand', '8934974141471.jpg', 20, '313950', '376740', '', '2022-03-17 07:24:17'),
(244, 'Hệ Miễn Dịch - Kiệt Tác Của Sự Sống', 'KH', 'Cao Bảo Anh', 'bLlct', 'image_195509_1_30116.jpg', 20, '76700', '92040', '', '2022-03-17 07:24:33'),
(245, 'Dinh Dưỡng Học Bị Thất Truyền - Dinh Dưỡng Đẩy Lùi Bệnh Tật', 'KH', 'Vương Đào', 'bKhxh', '8935095632138.jpg', 20, '154860', '185832', '', '2022-03-17 07:24:36'),
(246, 'Sức Khỏe Trong Tay Bạn - Tập 2', 'KH', 'Trần Bích Hà', 'bBđ', 'image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_2716.jpg', 20, '75650', '90780', '', '2022-03-17 07:24:45'),
(247, 'Chinh Phục Các Dạng Toán Thực Tế THCS Với Máy Tính Casio FX - 580 VN X / CASIO FX - 570 VN PLUS', 'KH', 'Nhiều Tác Giả', 'bHN', '109427245_3052261904809171_8930975660767821119_n.jpg', 20, '144000', '172800', '', '2022-03-17 07:24:51'),
(248, 'Dinh Dưỡng Chữa Bệnh - Gia Vị & Thảo Dược (Tái Bản 2020)', 'KH', 'Susan Curtis, Pat Thomas, Dragana Vilinac', 'bKhtnvCn', 'image_195509_1_36788.jpg', 20, '68800', '82560', '', '2022-03-17 07:24:57'),
(249, 'Thuật Giả Kim', 'KH', 'Sarah Durn', 'bSk', 'thu_t-gi_-kim---b_a-1.jpg', 20, '81180', '97416', '', '2022-03-17 07:25:05'),
(250, 'Dinh Dưỡng Chữa Bệnh - Đậu, Hạt & Ngũ Cốc', 'KH', 'Susan Curtis, Pat Thomas, Dragana Vilinac', 'bGd', 'image_195509_1_36789.jpg', 20, '68800', '82560', '', '2022-03-17 07:25:11'),
(251, 'Bí Ẩn Mãi Mãi Là Bí Ẩn 04 Tái Bản 2017', 'KH', 'Bìa Mềm', 'bPn', '8934974144946_1.jpg', 20, '30400', '36480', '', '2022-03-17 07:25:18'),
(252, 'Khám Định Bệnh Bằng Máy Đo Huyết Áp', 'KH', 'Đỗ Đức Ngọc', 'bGd', 'image_189850.jpg', 20, '71200', '85440', '', '2022-03-17 07:25:22'),
(253, 'Chữa Bệnh Bằng Luân Xa - Hướng Dẫn Cơ Bản Các Kĩ Thuật Tự Phục Hồi Bằng Phương Pháp Cân Bằng Luân Xa', 'KH', 'Margarita Alcantara', 'bCtQg', 'image_219220.jpg', 20, '127200', '152640', '', '2022-03-17 07:25:25'),
(254, 'Sổ Tay Y Học - Những Bài Thuốc Hay 71', 'KH', 'Nhiều Tác Giả', 'bLđxh', 'image_235417.jpg', 20, '6650', '7980', '', '2022-03-17 07:25:30'),
(255, 'Giáo Trình Vi Điều Khiển ARM - Hướng Dẫn Sử Dụng STM32 (Lý Thuyết - Thực Hành)', 'KH', 'Nhiều Tác Giả', 'bKhxh', 'image_195509_1_40164.jpg', 20, '120000', '144000', '', '2022-03-17 07:25:34'),
(256, 'Xứ Phẳng: Du Hành Vào Cõi Đa Chiều', 'KH', 'Edwin A Abbott', 'bCtQg', 'xu-phang-_du-hanh-vao-coi-da-chieu_-01.jpg', 20, '67150', '80580', '', '2022-03-17 07:25:39'),
(257, 'Bác Sĩ Tốt Nhất Là Chính Mình Tập 6: Bệnh Gout (Tái Bản 2019)', 'KH', 'Nhiều Tác Giả', 'bPn', 'image_195509_1_26376.jpg', 20, '29750', '35700', '', '2022-03-17 07:25:45'),
(258, 'How Food Works - Hiểu Hết Về Thức Ăn', 'KH', 'Nhiều Tác Giả', 'bQđ', '8935235220485.jpg', 20, '255000', '306000', '', '2022-03-17 07:25:50'),
(259, 'Não Bộ Mất Trí - Tình Dục, Chứng Cuồn Loạn Và Bí Ẩn Về Bệnh Tâm Thần', 'KH', 'Allan H Ropper, Brian Burrell', 'bPĐ', 'z3175722613653_c460e1326164605eb886d1dac8af8b1f.jpg', 20, '120930', '145116', '', '2022-03-17 07:25:54'),
(260, 'Hiểu Biết Để Điều Trị Thành Công Bệnh Đái Tháo Đường', 'KH', 'Nguyễn Quang Bảy', 'bPĐ', 'image_195509_1_48397.jpg', 20, '61100', '73320', '', '2022-03-17 07:25:57'),
(261, 'Sức Khỏe Từ Thiên Nhiên - Cây Thuốc Nam', 'KH', 'Nam Thuận', 'bSk', 'image_195509_1_56261.jpg', 20, '68850', '82620', '', '2022-03-17 07:26:01'),
(262, 'Giáo Trình Điện Tử - Linh Kiện Điện Tử Transistor', 'KH', 'Nguyễn Văn Phước, Phạm Quang Huy', 'bMt', 'image_236049.jpg', 20, '173700', '208440', '', '2022-03-17 07:26:04'),
(263, 'Chó Và Mèo Dưới Lăng Kính Khoa Học', 'KH', 'Antonio Fischetti', 'bPĐ', 'image_195509_1_16502.jpg', 20, '106250', '127500', '', '2022-03-17 07:26:10'),
(264, 'Y Học Phổ Thông Dành Cho Mọi Người - Chuyên Đề: Rối Loạn Tim Mạch 2', 'KH', 'Nhiều Tác Giả', 'bGd', 'image_233172.jpg', 20, '23750', '28500', '', '2022-03-17 07:26:14'),
(265, 'Tâm Hơn Thuốc - Minh Chứng Khoa Học Về Sự Tự Chữa Lành', 'KH', 'Lissa Rankin', 'bKĐ', 'image_240924.jpg', 20, '146780', '176136', '', '2022-03-17 07:26:18'),
(266, 'Cẩm Nang Hướng Dẫn Thải Độc & Chế Độ Ăn Uống Lành Mạnh', 'KH', 'Trần Bích Hà, Nguyễn Hải', 'bHN', 'image_195509_1_17263.jpg', 20, '116000', '139200', '', '2022-03-17 07:26:24'),
(267, 'Microsoft Office Excel 2016', 'KH', 'IIG Việt Nam', 'bKĐ', 'image_195509_1_50169.jpg', 20, '92150', '110580', '', '2022-03-17 07:26:30'),
(268, 'Y Học Phổ Thông Dành Cho Mọi Người - Chuyên Đề: Thuốc Nam Và Huyết Áp (Tập 1)', 'KH', 'Nhiều Tác Giả', 'bCtQg', 'image_195509_1_9289.jpg', 20, '22750', '27300', '', '2022-03-17 07:26:37'),
(269, 'Phòng Và Hỗ Trợ Điều Trị Các Bệnh Rối Loạn Chuyển Hóa', 'KH', 'VS GS TSKH Đái Duy Ban', 'bPĐ', 'image_223356.jpg', 20, '89380', '107256', '', '2022-03-17 07:26:40'),
(270, 'Làm Sạch Mạch Và Máu (Tái Bản 2021)', 'KH', 'Nishi Katsuzo', 'bLđxh', 'image_235288.jpg', 20, '72980', '87576', '', '2022-03-17 07:26:43'),
(271, 'Khoa Học Về Yoga', 'KH', 'Ann Swanson', 'bGt', 'khoa-hoc-ve-yoga-04.jpg', 20, '255000', '306000', '', '2022-03-17 07:26:47'),
(272, 'Sổ Tay Y Học - Những Bài Thuốc Hay 117', 'KH', 'Nhiều Tác Giả', 'bGt', 'image_195509_1_18297.jpg', 20, '8550', '10260', '', '2022-03-17 07:26:52'),
(273, 'Deep Nutrition - Dinh Dưỡng Chuyên Sâu', 'KH', 'Catherine Shanahan, MD', 'bPĐ', 'bbbdeep-nutrition---dinh-d_ng-chuy_n-s_u.jpg', 20, '220580', '264696', '', '2022-03-17 07:27:01'),
(274, 'Lịch Sử Ung Thư - Hoàng Đế Của Bách Bệnh (Bìa Mềm)', 'KH', 'Siddhartha Mukherjee', 'bPĐ', 'image_195509_1_35340.jpg', 20, '231200', '277440', '', '2022-03-17 07:27:04'),
(275, 'Giải Mã Bí Mật Giảm Cân - The Obesity Code', 'KH', 'Jason Fung', 'bHN', 'gi_i-m_-b_-m_t-gi_m-c_n.jpg', 20, '140000', '168000', '', '2022-03-17 07:27:08'),
(276, '100 Bí Ẩn Đáng Kinh Ngạc Về Vũ Trụ', 'KH', 'Alex Frith, Alice James, Jerome Martin', 'bNn', 'image_195509_1_41044.jpg', 20, '80000', '96000', '', '2022-03-17 07:27:12'),
(277, 'Dạy Con Làm Giàu - Tập 1 (Tái Bản 2018)', 'KT', 'Robert T Kiyosaki', 'bMt', 'image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_2354.jpg', 20, '47878', '57454', '', '2022-03-17 07:28:11'),
(278, 'Dạy Con Làm Giàu 02 - Sử Dụng Đồng Vốn (Tái Bản 2020)', 'KT', 'Robert T Kiyosaki, Sharon, L Lechter', 'bQđ', 'image_195509_1_29722.jpg', 20, '84000', '100800', '', '2022-03-17 07:28:15'),
(279, 'Digital Marketing - Từ Chiến Lược Đến Thực Thi (Tái Bản)', 'KT', 'Vinalink', 'bGt', '3300000012223_1.jpg', 20, '191400', '229680', '', '2022-03-17 07:28:16'),
(280, 'Người Bán Hàng Vĩ Đại Nhất Thế Giới', 'KT', 'Og Mandino', 'bMt', 'image_195509_1_47973.jpg', 20, '98000', '117600', '', '2022-03-17 07:28:20'),
(281, 'Tài Chính Cá Nhân Dành Cho Người Việt Nam - Tặng Kèm Khóa Học Online Về Tài Chính Cá Nhân (Tái Bản)', 'KT', 'Lâm Minh Chánh', 'bGd', 'z2419560586680_de0ef54b3338f198722d3fe76e34643e_2.jpg', 20, '174000', '208800', '', '2022-03-17 07:28:26'),
(282, 'Blockchain - Bản Chất Của Blockchain, Bitcoin, Tiền Điện Tử, Hợp Đồng Thông Minh Và Tương Lai Của Tiền Tệ', 'KT', 'Mark Gates', 'bGt', '8936066684996.jpg', 20, '66000', '79200', '', '2022-03-17 07:28:34'),
(283, 'Bán Hàng Shopee Thực Chiến Từ A-Z - 36 Chiến Lược Đỉnh Cao Bùng Nổ Doanh Số', 'KT', 'Văn Chính', 'bLlct', 'shopee.jpg', 20, '186750', '224100', '', '2022-03-17 07:28:37'),
(284, 'Từ Tốt Đến Vĩ Đại - Jim Collins (Tái Bản 2021)', 'KT', 'Jim Collins', 'bPĐ', 'nxbtre_full_09462021_024609.jpg', 20, '104000', '124800', '', '2022-03-17 07:28:40'),
(285, 'Bước Đi Ngẫu Nhiên Trên Phố Wall (Tái Bản 2021)', 'KT', 'Burton G Malkiel', 'bKhvkt', 'image_234131.jpg', 20, '149000', '178800', '', '2022-03-17 07:28:43'),
(286, 'Nhà Lãnh Đạo Không Chức Danh', 'KT', 'Robin Sharma', 'bHnv', '8934974145936.jpg', 20, '56000', '67200', '', '2022-03-17 07:28:46'),
(287, 'Phân Tích Chứng Khoán (Security Analysis)', 'KT', 'Benjamin Graham - David L Dodd', 'bLđxh', 'phan-tich-chung-khoan-outline-26.jpg', 20, '299000', '358800', '', '2022-03-17 07:28:51'),
(288, 'Nhà Đầu Tư Thông Minh (Tái Bản 2020)', 'KT', 'Benjamin Graham', 'bLđxh', 'image_195509_1_44030.jpg', 20, '139300', '167160', '', '2022-03-17 07:28:53'),
(289, 'Bí Mật Tư Duy Triệu Phú (Tái Bản 2021)', 'KT', 'T Harv Eker', 'bPn', 'image_188995_1_1.jpg', 20, '78300', '93960', '', '2022-03-17 07:28:57'),
(290, 'Trên Đỉnh Phố Wall (Tái Bản 2021)', 'KT', 'Peter Lynch, John Rothchild', 'bCtQg', 'image_230105.jpg', 20, '131000', '157200', '', '2022-03-17 07:29:01'),
(291, 'Báo Cáo Tài Chính Dưới Góc Nhìn Của Warren Buffett (Tái Bản)', 'KT', 'David Clark, Mary Buffett', 'bKhvkt', 'image_244718_1_5018.jpg', 20, '86100', '103320', '', '2022-03-17 07:29:04'),
(292, '7 Phương Pháp Đầu Tư Warren Buffet', 'KT', 'Mary Buffett, Sean Seah', 'bCtQg', 'image_195509_1_10704.jpg', 20, '76450', '91740', '', '2022-03-17 07:29:07'),
(293, 'Kiểm Soát Chi Phí Mua Hàng Và Quản Lí Nhà Cung Cấp', 'KT', 'Chu Vân', 'bCtQg', 'image_231242.jpg', 20, '114000', '136800', '', '2022-03-17 07:29:13'),
(294, 'Năng Đoạn Kim Cương (Tái Bản 2020)', 'KT', 'Geshe Michael Roach', 'bKhtnvCn', 'nang_oankimcuong.jpg', 20, '67100', '80520', '', '2022-03-17 07:29:16'),
(295, 'Nghĩ Giàu & Làm Giàu (Tái Bản 2020)', 'KT', 'Napoleon Hill', 'bHN', 'nghigiaulamgiau_110k-01_bia-1.jpg', 20, '88000', '105600', '', '2022-03-17 07:29:20'),
(296, 'Phân Tích Kỹ Thuật Trong Thị Trường Tài Chính', 'KT', 'John J Murphy', 'bCtQg', 'image_225971.jpg', 20, '245180', '294216', '', '2022-03-17 07:29:23'),
(297, 'Nghĩ Giàu & Làm Giàu (Khổ Nhỏ) - Tái Bản 2020', 'KT', 'Napoleon Hill', 'bHnv', 'z2212144539430_cf14db45eb526b88be9d32fa9995a0d6.jpg', 20, '73440', '88128', '', '2022-03-17 07:29:26'),
(298, 'Bí Mật Của Phan Thiên Ân (Tái Bản 2021)', 'KT', 'Alan Phan', 'bCand', 'image_238091.jpg', 20, '69000', '82800', '', '2022-03-17 07:29:31'),
(299, 'Hành Trình 28 Ngày Trở Thành Môi Giới Bất Động Sản Chuyên Nghiệp', 'KT', 'Dương Huy Hùng', 'bPn', 'image_195509_1_50155.jpg', 20, '123380', '148056', '', '2022-03-17 07:29:41'),
(300, 'Đầu Tư Tài Chính (Tái Bản)', 'KT', 'Nhiều Tác Giả', 'bKhtnvCn', 'image_183257_1.jpg', 20, '559000', '670800', '', '2022-03-17 07:29:46'),
(301, 'NFT - Cuộc Cách Mạng Công Nghệ Tiếp Nối Blockchain Và Kỷ Nguyên Tiền Điện Tử', 'KT', 'Marc Beckman', 'bMt', 'nft---b_a-1.jpg', 20, '138330', '165996', '', '2022-03-17 07:30:00'),
(302, 'Tiền Đẻ Ra Tiền - Đầu Tư Tài Chính Thông Minh', 'KT', 'Duncan Bannatyne', 'bLđ', 'image_195509_1_47056.jpg', 20, '72790', '87348', '', '2022-03-17 07:30:03'),
(303, 'Kinh Doanh - Khái Lược Những Tư Tưởng Lớn', 'KT', 'DK', 'bCand', 'bia-1---kinh-doanh.jpg', 20, '253500', '304200', '', '2022-03-17 07:30:08'),
(304, '21 Nguyên Tắc Tự Do Tài Chính (Tái Bản 2018)', 'KT', 'Brian Tracy', 'bPn', '21-nguy_n-t_c-t_i-ch_nh.jpg', 20, '41650', '49980', '', '2022-03-17 07:30:11'),
(305, 'Một Đời Quản Trị (Tái Bản 2019)', 'KT', 'Phan Văn Trường', 'bHnv', 'image_195509_1_27259.jpg', 20, '134000', '160800', '', '2022-03-17 07:30:16'),
(306, 'Triệu Phú Thức Tỉnh - Bí Kíp Để Khơi Dòng Suối Nguồn Thịnh Vượng Trong Tâm Thức (Tái Bản 2021)', 'KT', 'Joe Vitale', 'bHĐ', '9786047793129_1.jpg', 20, '219760', '263712', '', '2022-03-17 07:30:18'),
(307, 'Những Kẻ Xuất Chúng (Tái Bản 2021)', 'KT', 'Malcolm Gladwel', 'bKhvkt', 'image_230370.jpg', 20, '95000', '114000', '', '2022-03-17 07:30:21'),
(308, 'How Money Works - Hiểu Hết Về Tiền', 'KT', 'DK', 'bLđ', 'image_195509_1_554.jpg', 20, '187000', '224400', '', '2022-03-17 07:30:26');
INSERT INTO `sach` (`ma_sach`, `ten_sach`, `the_loai`, `tac_gia`, `nxb`, `hinh_anh`, `so_luong`, `gia_nien_yet`, `gia_ban`, `mo_ta`, `ngay_them`) VALUES
(309, 'Tiếp Thị 4.0 - Dịch Chuyển Từ Truyền Thống Sang Công Nghệ Số', 'KT', 'Philip Kotler, Hermawan Kartajaya, Iwan Setiawan', 'bCand', '8934974151265.jpg', 20, '65000', '78000', '', '2022-03-17 07:30:32'),
(310, 'Nghệ Thuật Bán Hàng Bậc Cao', 'KT', 'Zig Ziglar', 'bCand', 'nghethuatbanhangbaccao-16x24-xp_bia-1.jpg', 20, '127638', '153166', '', '2022-03-17 07:30:40'),
(311, 'Cổ Phiếu Thường Lợi Nhuận Phi Thường (Tái Bản)', 'KT', 'Philip A. Fisher', 'bKĐ', 'image_239806.jpg', 20, '119000', '142800', '', '2022-03-17 07:30:46'),
(312, 'Lời Thú Tội Mới Của Một Sát Thủ Kinh Tế', 'KT', 'John Perkins', 'bNA', 'loithutoicuamotsatthukinhte.jpg', 20, '132500', '159000', '', '2022-03-17 07:30:52'),
(313, 'Làm Điều Quan Trọng', 'KT', 'John Doerr', 'bBđ', 'cover-measure-what-matte-_b_a_1_1.jpg', 20, '113000', '135600', '', '2022-03-17 07:31:00'),
(314, 'Trải Nghiệm Khách Hàng Xuất Sắc', 'KT', 'Nguyễn Dương', 'bKhxh', 'image_195509_1_49944.jpg', 20, '125000', '150000', '', '2022-03-17 07:31:09'),
(315, 'Báo Cáo Tài Chính - Hướng Dẫn Từng Bước Hiểu Và Lập Báo Cáo Tài Chính', 'KT', 'Thomas R Ittelson', 'bSk', 'image_183262.jpg', 20, '126400', '151680', '', '2022-03-17 07:31:17'),
(316, 'Kỹ Năng Bán Hàng Tuyệt Đỉnh', 'KT', 'Grant Cardone', 'bHp', 'ky-nang-ban-hang-tuyet-dinh.jpg', 20, '54500', '65400', '', '2022-03-17 07:31:23'),
(317, 'D. Trump - Nghệ Thuật Đàm Phán (Tái Bản 2020)', 'KT', 'Donald J Trump, Tony Schartz', 'bKhvkt', 'image_195509_1_49918.jpg', 20, '75000', '90000', '', '2022-03-17 07:31:36'),
(318, 'Tâm Lý Học Trong Đầu Tư Chứng Khoán', 'KT', 'Mark Douglas', 'bLđxh', 'image_224047.jpg', 20, '103950', '124740', '', '2022-03-17 07:31:43'),
(319, 'Dạy Con Làm Giàu - Tập 11: Trường Dạy Kinh Doanh Cho Những Người Thích Giúp Đỡ Người Khác (Tái Bản 2017)', 'KT', 'Robert T.Kiyosaki', 'bHnv', 'image_121398.jpg', 20, '38440', '46128', '', '2022-03-17 07:31:48'),
(320, 'Các Cuộc Chiến Tranh Tiền Tệ (Tái Bản 2019)', 'KT', 'James Rickards', 'bLđ', 'image_183638.jpg', 20, '123250', '147900', '', '2022-03-17 07:31:54'),
(321, 'KPI - Công Cụ Quản Lý Nhân Sự Hiệu Quả', 'KT', 'Ryuichiro Nakao', 'bMt', '_1_-_169_-kpi.jpg', 20, '70950', '85140', '', '2022-03-17 07:32:00'),
(322, 'Nguyên Lý Kế Toán (Tái Bản)', 'KT', 'Nhiều Tác Giả', 'bKhxh', 'image_231219.jpg', 20, '78300', '93960', '', '2022-03-17 07:32:05'),
(323, 'Nhận Diện Rủi Ro Trong Mua Bán Nhà Đất', 'KT', 'Luật Sư Phạm Thanh Hữu', 'bNn', 'z3183145995586_7e51790205e5bbb3e22ae523ccdadfe6.jpg', 20, '63900', '76680', '', '2022-03-17 07:32:10'),
(324, 'Vị Giám Đốc Một Phút (Tái Bản 2019)', 'KT', 'Ken Blanchard, Spencer Johnson', 'bBđ', '23f7f2605cd1a37ed4849f0bdfda61ea.jpg', 20, '36000', '43200', '', '2022-03-17 07:32:18'),
(325, 'Nhận Diện Rủi Ro Trong Mua Bán Nhà Đất', 'KT', 'Luật Sư Phạm Thanh Hữu', 'bSk', 'z3183145995586_7e51790205e5bbb3e22ae523ccdadfe6.jpg', 20, '63900', '76680', '', '2022-03-17 07:32:23'),
(326, '22 Quy Luật Bất Biến Trong Marketing - The 22 Immutable Laws Of Marketing (Tái Bản 2021)', 'KT', 'Al Ries, Jack Trout', 'bHĐ', 'image_222251.jpg', 20, '63960', '76752', '', '2022-03-17 07:32:27'),
(327, 'Kỹ Năng Quản Lý Nhân Sự Chuyên Nghiệp', 'KT', 'Whitney Johnson', 'bCand', 'bia_1_2_13.jpg', 20, '65450', '78540', '', '2022-03-17 07:32:31'),
(328, 'Bản Đồ Thành Công Nghề BHNT - 12 Bước Trở Thành MDRT', 'KT', 'Joseph Nguyễn', 'bNn', 'image_195509_1_48205.jpg', 20, '239200', '287040', '', '2022-03-17 07:32:34'),
(329, 'Phân Tích Thị Trường Chứng Khoán', 'KT', 'Howard Marks', 'bCtQg', 'image_193380.jpg', 20, '113400', '136080', '', '2022-03-17 07:32:37'),
(330, 'Hiệu Ứng Lan Truyền (Tái Bản 2018)', 'KT', 'Jonah Berger', 'bKhvkt', 'a376f1b84db93bac1c011adc8c4698c3.jpg', 20, '75650', '90780', '', '2022-03-17 07:32:40'),
(331, 'Tiktok Marketing', 'KT', 'Markus Rach', 'bBđ', 'tiktok_outline-01.jpg', 20, '76450', '91740', '', '2022-03-17 07:32:43'),
(332, '21 Nguyên Tắc Tự Do Tài Chính (Tái Bản 2021)', 'KT', 'Brian Tracy', 'bCand', 'bia_21-nguyen-tac-tu-do-tai-chinh--bia-1.jpg', 20, '45100', '54120', '', '2022-03-17 07:32:46'),
(333, 'Nguyên Tắc Thiết Kế Slide Chuẩn Ted', 'KT', 'Akash Karia', 'bCand', 'image_194489.jpg', 20, '49999', '59999', '', '2022-03-17 07:32:49'),
(334, 'Rio Book No.1 - Xấu Thế Nào, Đẹp Ra Sao (Tái Bản 2021)', 'KT', 'Nhiều Tác Giả', 'bGt', '2021_04_05_11_47_14_1.jpg', 20, '148750', '178500', '', '2022-03-17 07:32:58'),
(335, 'Kỷ Nguyên Tiền Điện Tử', 'KT', 'Paul Vigna, Michael J. Casey', 'bCand', '8936066685122.jpg', 20, '103950', '124740', '', '2022-03-17 07:33:04'),
(336, 'Khởi Nghiệp Tinh Gọn - The Lean Startup (Tái Bản 2021)', 'KT', 'Eric Ries', 'bBuđ', 'image_235119.jpg', 20, '131500', '157800', '', '2022-03-17 07:33:08'),
(337, 'Chết Vì Chứng Khoán', 'KT', 'Richard Smitten', 'bHp', 'image_230368.jpg', 20, '132000', '158400', '', '2022-03-17 07:33:11'),
(338, 'Dốc Hết Trái Tim (Tái Bản 2018)', 'KT', 'Howard Schultz , Dori Jones Yang', 'bQđ', '2e7c4c99c9faceda9e926727bb5cc92a.jpg', 20, '93000', '111600', '', '2022-03-17 07:33:16'),
(339, 'Elon Musk: Tesla, Spacex Và Sứ Mệnh Tìm Kiếm Một Tương Lai Ngoài Sức Tưởng Tượng (Tái Bản 2020)', 'KT', 'Ashlee Vance', 'bÂn', 'elon-musk_outline_23.2.2018-01.jpg', 20, '147000', '176400', '', '2022-03-17 07:33:26'),
(340, 'Nâng Tầm Dịch Vụ (Tái Bản 2020)', 'KT', 'Ron Kaufman', 'bHnv', 'image_195509_1_49929.jpg', 20, '120000', '144000', '', '2022-03-17 07:33:29'),
(341, 'Content Marketing Trong Kỷ Nguyên 4.0', 'KT', 'Alexander Jutkowitz', 'bBđ', 'image_182714.jpg', 20, '76450', '91740', '', '2022-03-17 07:33:34'),
(342, 'Bán Hàng Cho Người Giàu', 'KT', 'Dan S Kennedy', 'bBđ', 'image_196494.jpg', 20, '220000', '264000', '', '2022-03-17 07:33:38'),
(343, 'Bộ Sách Nghĩ Giàu Là Giàu (Bộ 2 Cuốn)', 'KT', 'Napoleon Hill', 'bBđ', 'image_232371.jpg', 20, '229600', '275520', '', '2022-03-17 07:33:45'),
(344, 'Hướng Dẫn Căn Bản Về Cách Kiếm Tiền Từ Youtube', 'KT', 'Benji Travis, Sean Canell', 'bBuđ', 'b_a-1_youtube-secrets--outline.jpg', 20, '81950', '98340', '', '2022-03-17 07:33:48'),
(345, 'Nam Châm Hút Nhân Tài', 'KT', 'Mark Miller', 'bQđ', 'image_214087.jpg', 20, '52000', '62400', '', '2022-03-17 07:33:51'),
(346, 'Nghệ Thuật Bán Hàng Bằng Câu Chuyện', 'KT', 'Paul Smith', 'bNn', 'image_195509_1_15424.jpg', 20, '109299', '131159', '', '2022-03-17 07:33:54'),
(347, 'Nghệ Thuật Bán Hàng Của Người Hướng Nội', 'KT', 'Matthew Pollard, Derek Lewis', 'bKĐ', 'image_195509_1_17838.jpg', 20, '86800', '104160', '', '2022-03-17 07:33:58'),
(348, 'Khéo Ăn Nói Sẽ Có Được Thiên Hạ - Bản Mới', 'TL', 'Trác Nhã', 'bÂn', 'bia_26_8.jpg', 20, '60000', '72000', '', '2022-03-17 07:40:15'),
(349, 'Thay Đổi Cuộc Sống Với Nhân Số Học', 'TL', 'Lê Đỗ Quỳnh Hương', 'bPĐ', 'tdcsvnsh.jpg', 20, '164000', '196800', '', '2022-03-17 07:40:20'),
(350, 'Rèn Luyện Tư Duy Phản Biện', 'TL', 'Albert Rutherford', 'bHnv', 'image_195509_1_18448.jpg', 20, '54450', '65340', '', '2022-03-17 07:40:23'),
(351, 'Tâm Lý Học - Phác Họa Chân Dung Kẻ Phạm Tội', 'TL', 'Diệp Hồng Vũ', 'bHĐ', 'ph_c-h_a-ch_n-dung-k_-ph_m-t_i.jpg', 20, '98400', '118080', '', '2022-03-17 07:40:26'),
(352, 'Khi Bạn Đang Mơ Thì Người Khác Đang Nỗ Lực', 'TL', 'Vĩ Nhân', 'bHnv', 'khi_ban_dang_mo_thi_nguoi_khac_dang_no_luc_1_2018_07_16_08_54_43.jpg', 20, '69000', '82800', '', '2022-03-17 07:40:31'),
(353, 'Đọc Vị Bất Kỳ Ai (Tái Bản 2019)', 'TL', 'TS David J Lieberman', 'bHnv', 'image_195509_1_12542.jpg', 20, '51350', '61620', '', '2022-03-17 07:40:34'),
(354, 'Trên Đường Băng (Tái Bản 2017)', 'TL', 'Tony Buổi Sáng', 'bSk', 'trenduongbang.jpg', 20, '53300', '63960', '', '2022-03-17 07:40:40'),
(355, 'Hiểu Về Trái Tim (Tái Bản 2019)', 'TL', 'Minh Niệm', 'bLđxh', 'image_195509_1_14922.jpg', 20, '115000', '138000', '', '2022-03-17 07:40:47'),
(356, 'Thiên Tài Bên Trái, Kẻ Điên Bên Phải (Tái Bản 2021)', 'TL', 'Cao Minh', 'bNA', 'b_a-thi_n-t_i-b_n-tr_i-k_-_i_n-b_n-ph_i_1.jpg', 20, '118900', '142680', '', '2022-03-17 07:40:51'),
(357, 'Chủ Nghĩa Khắc Kỷ - Phong Cách Sống Bản Lĩnh Và Bình Thản', 'TL', 'William B Irvine', 'bHN', 'chu-nghia-khac-ky-14.5x20.5cm-final.jpg', 20, '76250', '91500', '', '2022-03-17 07:40:58'),
(358, 'Bộ Sách Tâm Lý Học Tội Phạm (Bộ 2 Tập)', 'TL', 'Stanton E Samenow', 'bGt', '93-6066-690-126.jpg', 20, '172800', '207360', '', '2022-03-17 07:41:05'),
(359, 'Search Inside Yourself - Tạo Ra Lợi Nhuận Vượt Qua Đại Dương Và Thay Đổi Thế Giới (Tái Bản 2019)', 'TL', 'Chade Meng Tan', 'bCtQg', 'image_195509_1_4866.jpg', 20, '72000', '86400', '', '2022-03-17 07:41:11'),
(360, 'Tuổi Trẻ Đáng Giá Bao Nhiêu (Tái Bản 2021)', 'TL', 'Rosie Nguyễn', 'bPĐ', 'image_239651.jpg', 20, '64300', '77160', '', '2022-03-17 07:41:19'),
(361, 'Đúng Việc - Một Góc Nhìn Về Câu Chuyện Khai Minh (Tái Bản 2021)', 'TL', 'Giản Tư Trung', 'bSk', 'untitled-2dungviec.jpg', 20, '77900', '93480', '', '2022-03-17 07:41:22'),
(362, 'Đời Ngắn Đừng Ngủ Dài (Tái Bản 2018)', 'TL', 'Robin Sharma', 'bLđ', 'image_180164_1_43_1_57_1_4_1_2_1_210_1_29_1_98_1_25_1_21_1_5_1_3_1_18_1_18_1_45_1_26_1_32_1_14_1_2730.jpg', 20, '52500', '63000', '', '2022-03-17 07:41:26'),
(363, 'Tư Duy Phản Biện', 'TL', 'Zoe McKey', 'bHp', 'tuduyphanbien_bia1.jpg', 20, '46750', '56100', '', '2022-03-17 07:41:29'),
(364, 'Đi Tìm Lẽ Sống (Tái Bản)', 'TL', 'Viktor E Frankl', 'bGd', '8935086847695.jpg', 20, '51000', '61200', '', '2022-03-17 07:41:35'),
(365, 'Hãy Khiến Tương Lai Biết Ơn Vì Hiện Tại Bạn Đã Cố Gắng Hết Mình', 'TL', 'Bạch Tô', 'bHnv', 'image_226524.jpg', 20, '68000', '81600', '', '2022-03-17 07:41:39'),
(366, 'OSHO - Yêu - Being In Love', 'TL', 'OSHO', 'bBuđ', 'beinglove.jpg', 20, '117400', '140880', '', '2022-03-17 07:41:48'),
(367, 'Người Giàu Có Nhất Thành Babylon', 'TL', 'George S Clason', 'bHp', 'image_195509_1_41914.jpg', 20, '66640', '79968', '', '2022-03-17 07:41:51'),
(368, 'Yêu Những Điều Không Hoàn Hảo', 'TL', 'Hae Min', 'bGd', '4ceb6ba3bd81614df8ff4c1411b11f59.jpg', 20, '99300', '119160', '', '2022-03-17 07:41:58'),
(369, 'Ho’oponopono: Sống Như Người Hawaii - Chấp Nhận, Biết Ơn Và Tha Thứ', 'TL', 'Carole Berger', 'bQđ', 'image_195509_1_48352.jpg', 20, '71940', '86328', '', '2022-03-17 07:42:03'),
(370, 'Đắc Nhân Tâm (Tái Bản 2021)', 'TL', 'Dale Carnegie', 'bLđxh', 'dntttttuntitled.jpg', 20, '57000', '68400', '', '2022-03-17 07:42:08'),
(371, 'The Magic - Phép Màu (Tái Bản 2021)', 'TL', 'Rhowa Byrne (Nguyễn Phúc Quang Ngọc_dịch)', 'bHnv', 'image_244718_1_5271.jpg', 20, '172260', '206712', '', '2022-03-17 07:42:11'),
(372, '13 Nguyên Tắc Nghĩ Giàu Làm Giàu - Think And Grow Rich (Tái Bản 2020)', 'TL', 'Napoleon Hill', 'bGd', 'image_195509_1_39473.jpg', 20, '88000', '105600', '', '2022-03-17 07:42:15'),
(373, 'Một Đời Như Kẻ Tìm Đường', 'TL', 'Phan Văn Trường', 'bGt', 'image_195509_1_5358.jpg', 20, '148750', '178500', '', '2022-03-17 07:42:19'),
(374, 'The Secret - Bí Mật (Tái Bản 2021)', 'TL', 'Rhonda Byrne (Nguyễn Phúc Quang Ngọc_dịch)', 'bKhtnvCn', 'image_244718_1_5272.jpg', 20, '259260', '311112', '', '2022-03-17 07:42:22'),
(375, 'Ba Người Thầy Vĩ Đại (Tái Bản 2019)', 'TL', 'Robin Sharma', 'bNn', 'image_195509_1_10692.jpg', 20, '59000', '70800', '', '2022-03-17 07:42:26'),
(376, 'Bắt Đầu Với Câu Hỏi Tại Sao - Nghệ Thuật Truyền Cảm Hứng Trong Kinh Doanh (Tái Bản 2021)', 'TL', 'Simon Sinek', 'bNn', 'image_234134.jpg', 20, '71940', '86328', '', '2022-03-17 07:42:30'),
(377, 'Sức Mạnh Của Ngôn Từ - Tặng Kèm 1 Photocard Mintbooks Limited', 'TL', 'Shin Dohyeon, Yun Naru', 'bNn', 'biatrong_sucmanhcuangontu_infinal.jpg', 20, '64320', '77184', '', '2022-03-17 07:42:33'),
(378, 'Người Nam Châm (Tái Bản 2019)', 'TL', 'Jack Canfield, DD Watkins', 'bKhxh', 'image_195509_1_9484.jpg', 20, '40000', '48000', '', '2022-03-17 07:42:39'),
(379, 'Tâm Lý Học Biểu Cảm', 'TL', 'Mã Hạo Thiên', 'bÂn', 'ttph-t_mffffffbi_u-c_m.jpg', 20, '67400', '80880', '', '2022-03-17 07:42:43'),
(380, 'Đàn Ông Sao Hỏa Đàn Bà Sao Kim', 'TL', 'John Gray', 'bBđ', 'image_183259.jpg', 20, '150400', '180480', '', '2022-03-17 07:42:47'),
(381, 'Bí Mật Của May Mắn (Khổ Nhỏ) - Tái Bản 2021', 'TL', 'Alex Rovira, Ferrnando Trias De Bes', 'bCand', 'image_226526.jpg', 20, '36900', '44280', '', '2022-03-17 07:42:51'),
(382, 'Nói Chuyện Là Bản Năng, Giữ Miệng Là Tu Dưỡng, Im Lặng Là Trí Tuệ', 'TL', 'Trương Tiếu Hằng', 'bKhxh', 'image_198737.jpg', 20, '87450', '104940', '', '2022-03-17 07:42:54'),
(383, 'Dám Mơ Lớn, Đừng Hoài Phí Tuổi Trẻ (Tái Bản)', 'TL', 'Lư Tư Hạo', 'bKhtnvCn', 'b_a-1-d_m-m_-l_n_1.jpg', 20, '69395', '83274', '', '2022-03-17 07:43:01'),
(384, 'Sức Mạnh Tiềm Thức (Tái Bản 2021)', 'TL', 'Joseph Murphyc', 'bLđxh', 'image_237646.jpg', 20, '85000', '102000', '', '2022-03-17 07:43:04'),
(385, 'Gieo Trồng Hạnh Phúc (Tái Bản 2021)', 'TL', 'Thích Nhất Hạnh', 'bÂn', 'image_234140.jpg', 20, '61500', '73800', '', '2022-03-17 07:43:08'),
(386, 'Dám Bị Ghét', 'TL', 'Kishimi Ichiro, Koga Fumitake', 'bQđ', '8935235215283_1.jpg', 20, '68600', '82320', '', '2022-03-17 07:43:16'),
(387, 'Tư Duy Nhanh Và Chậm (Tái Bản 2021)', 'TL', 'Daniel Kahneman', 'bGd', 'image_230367.jpg', 20, '161000', '193200', '', '2022-03-17 07:43:19'),
(388, 'Tử Huyệt Cảm Xúc', 'TL', 'Roy Garn', 'bKhvkt', 'image_195509_1_41697.jpg', 20, '100640', '120768', '', '2022-03-17 07:43:22'),
(389, 'Tâm Lý Học Tính Cách', 'TL', 'Trâu Hoành Minh', 'bLđ', 'd_1__2_.jpg', 20, '75000', '90000', '', '2022-03-17 07:43:25'),
(390, '7 Chiến Lược Thịnh Vượng Và Hạnh Phúc (Tái Bản 2021)', 'TL', 'Jim Rohn', 'bBuđ', 'image_240468.jpg', 20, '69700', '83640', '', '2022-03-17 07:43:28'),
(391, 'Sức Mạnh Của Ngôn Từ (Tái Bản 2019)', 'TL', 'Don Gabor', 'bGd', 'image_190115.jpg', 20, '64000', '76800', '', '2022-03-17 07:43:37'),
(392, 'Trí Tuệ Do Thái (Tái Bản 2018)', 'TL', 'Eran Katz', 'bBuđ', 'tr_-tue-do-thai_outline_15.9.2017-02.jpg', 20, '101400', '121680', '', '2022-03-17 07:43:40'),
(393, 'Think And Grow Rich - Nghĩ Giàu Và Làm Giàu (Phiên Bản Đặc Biệt Bìa Cứng)', 'TL', 'Napoleon Hill', 'bKĐ', 'image_195509_1_39245.jpg', 20, '111000', '133200', '', '2022-03-17 07:43:51'),
(394, 'Cân Bằng Cảm Xúc, Cả Lúc Bão Giông (Tái Bản 2021)', 'TL', 'Richard Nicholls', 'bKhvkt', 'image_195509_1_32561_1.jpg', 20, '72200', '86640', '', '2022-03-17 07:43:54'),
(395, 'Power Vs Force - Trường Năng Lượng Và Những Nhân Tố Quyết Định Tinh Thần Và Sức Khỏe Con Người', 'TL', 'David R Hawkins', 'bBđ', 'image_195509_1_40816.jpg', 20, '117000', '140400', '', '2022-03-17 07:43:58'),
(396, 'Power Vs Force - Trường Năng Lượng Và Những Nhân Tố Quyết Định Tinh Thần Và Sức Khỏe Con Người', 'TL', 'David R Hawkins', 'bLđxh', 'image_195509_1_40816.jpg', 20, '117000', '140400', '', '2022-03-17 07:44:01'),
(397, 'Tâm Lý Học - Nghệ Thuật Giải Mã Hành Vi', 'TL', 'Trần Lộ', 'bKhvkt', 't_m-l_-h_c---gi_i-m_-h_nh-vi.jpg', 20, '103100', '123720', '', '2022-03-17 07:44:03'),
(398, 'Câu Hỏi Là Câu Trả Lời (Tái Bản 2021)', 'TL', 'Allan Pease', 'bPn', 'image_244718_1_3285.jpg', 20, '50840', '61008', '', '2022-03-17 07:44:07'),
(399, 'Little Stories - To Have A Nice Day', 'TL', 'Sracey Riches', 'bKĐ', '9786048400088.jpg', 20, '43550', '52260', '', '2022-03-17 07:44:11'),
(400, 'How Psychology Works - Hiểu Hết Về Tâm Lý Học', 'TL', 'Jo Hemmings', 'bLđxh', 'image_208345.jpg', 20, '187000', '224400', '', '2022-03-17 07:44:13'),
(401, 'Khuyến Học (Tái Bản 2021)', 'TL', 'Fukuzawa Yukichi', 'bPn', 'image_214482_1.jpg', 20, '52000', '62400', '', '2022-03-17 07:44:19'),
(402, 'Thế Giới Quả Là Rộng Lớn Và Có Rất Nhiều Việc Phải Làm (Tái Bản 2021)', 'TL', 'Kim Woo Choong', 'bHĐ', 'image_232221.jpg', 20, '92040', '110448', '', '2022-03-17 07:44:22'),
(403, 'Không Sợ Chậm Chỉ Sợ Dừng', 'TL', 'Vãn Tình', 'bCand', 'image_217473.jpg', 20, '84000', '100800', '', '2022-03-17 07:44:28'),
(404, 'Ai Che Lưng Cho Bạn (Tái Bản 2017)', 'TL', 'Keith Ferrazzi', 'bHN', '8934974145943.jpg', 20, '74000', '88800', '', '2022-03-17 07:44:32'),
(405, 'Trở Về Từ Cõi Sáng', 'TL', 'Nguyên Phong', 'bNn', 'image_195509_1_12814.jpg', 20, '60000', '72000', '', '2022-03-17 07:44:37'),
(406, 'Đừng Lựa Chọn An Nhàn Khi Còn Trẻ (Tái Bản 2021)', 'TL', 'Cảnh Thiên', 'bHN', 'dung-lua-chon-an-nhan-khi-con-tre-_tai-ban_.jpg', 20, '74250', '89100', '', '2022-03-17 07:44:46'),
(407, 'Sang Chấn Tâm Lý - Hiểu Để Chữa Lành', 'TL', 'Bessel Van Der Kolk, M.D', 'bHĐ', 'image_195509_1_27676.jpg', 20, '175000', '210000', '', '2022-03-17 07:44:51'),
(408, 'OKRs - Hiểu Đúng, Làm Đúng', 'TL', 'Mai Xuân Đạt', 'bHnv', 'okrs-hieu-dung-lam-dung.jpg', 20, '143000', '171600', '', '2022-03-17 07:44:58'),
(409, 'Người Dám Cho Đi', 'TL', 'Bob Burg & JohnDavid Mann', 'bKhtnvCn', 'nguoidamchodi.jpg', 20, '44000', '52800', '', '2022-03-17 07:45:04'),
(410, 'Mỗi Lần Vấp Ngã Là Một Lần Trưởng Thành', 'TL', 'Liêu Trí Phong', 'bPĐ', 'vvvv_7.jpg', 20, '72000', '86400', '', '2022-03-17 07:45:11'),
(411, 'Đừng Bao Giờ Đi Ăn Một Mình (Tái Bản 2017)', 'TL', 'Keith Ferrazzi , Tahl Raz', 'bKhvkt', '8934974150619.jpg', 20, '76999', '92399', '', '2022-03-17 07:45:18'),
(412, 'Tuần Làm Việc 4 Giờ (Tái Bản 2021)', 'TL', 'Timothy Ferriss', 'bGd', 'image_234797.jpg', 20, '70150', '84180', '', '2022-03-17 07:45:25'),
(413, 'Đắc Nhân Tâm - Bìa Cứng (Tái Bản 2021)', 'TL', 'Dale Carnegie', 'bPn', 'dntttttuntitled_1.jpg', 20, '88560', '106272', '', '2022-03-17 07:45:32'),
(414, 'Đắc Nhân Tâm (Khổ Nhỏ)', 'TL', 'Dale Carnegie', 'bGd', 'dac-nhan-tam-kho-nho-1.jpg', 20, '51200', '61440', '', '2022-03-17 07:45:37'),
(415, 'Bạn Không Thông Minh Lắm Đâu (Tái Bản 2021)', 'TL', 'David McRaney', 'bHnv', 'z20805_5d203f939815181e8ab0a307a87dea01-_1_.jpg', 20, '95500', '114600', '', '2022-03-17 07:45:42'),
(416, 'Làm Chủ Bình Minh - Sống Đời Xuất Chúng', 'TL', 'Robin Sharma', 'bBuđ', 'lam-chu-binh-minh_song-doi-xuat-chung_bia1_1.jpg', 20, '157250', '188700', '', '2022-03-17 07:45:47'),
(417, 'Khéo Ăn Khéo Nói Sẽ Có Được Thiên Hạ (Bìa Cứng)', 'TL', 'Trác Nhã', 'bGt', 'image_173937.jpg', 20, '75000', '90000', '', '2022-03-17 07:45:55'),
(418, 'Muốn Thành Công Nói Không Với Trì Hoãn - 21 Nguyên Tắc Vàng Đập Tan Sự Trì Hoãn', 'TL', 'Damon Rahariades', 'bQđ', 'image_197563.jpg', 20, '76800', '92160', '', '2022-03-17 07:46:01'),
(419, 'Combo Cà Phê Cùng Tony + Trên Đường Băng (Bộ 2 Cuốn)', 'TL', 'Tony Buổi Sáng', 'bÂn', 'image_180438_1.jpg', 20, '110187', '132224', '', '2022-03-17 07:46:04'),
(420, 'Muôn Kiếp Nhân Sinh - Many Times, Many Lives', 'XH', 'Nguyên Phong', 'bGd', 'muonkiepnhansinh.jpg', 20, '114240', '137088', '', '2022-03-17 07:46:42'),
(421, 'Những Tù Nhân Của Địa Lý', 'XH', 'Tim Marshall', 'bLđxh', 'image_216920.jpg', 20, '178500', '214200', '', '2022-03-17 07:46:48'),
(422, 'Sapiens Lược Sử Loài Người (Tái Bản)', 'XH', 'Yuval Noah Harari', 'bLđ', 'image_240064.jpg', 20, '155000', '186000', '', '2022-03-17 07:46:52'),
(423, 'Muôn Kiếp Nhân Sinh - Many Times, Many Lives - Tập 2', 'XH', 'Nguyên Phong', 'bSk', 'muonkiepnhansinh2_bia-01.jpg', 20, '201000', '241200', '', '2022-03-17 07:47:11'),
(424, 'Muôn Kiếp Nhân Sinh - Many Times, Many Lives (Khổ Nhỏ)', 'XH', 'Nguyên Phong', 'bKhtnvCn', 'muonkiepnhansinh_1.jpg', 20, '78400', '94080', '', '2022-03-17 07:47:17'),
(425, 'Muôn Kiếp Nhân Sinh - Many Times, Many Lives - Tập 2 (Khổ Nhỏ)', 'XH', 'Nguyên Phong', 'bLđxh', '600_mkns2_khonho.jpg', 20, '128760', '154512', '', '2022-03-17 07:47:22'),
(426, 'Súng, Vi Trùng Và Thép (Tái Bản)', 'XH', 'Jared Diamond', 'bPn', 'image_244718_1_4935.jpg', 20, '161000', '193200', '', '2022-03-17 07:47:26'),
(427, 'Tĩnh Lặng - Sức Mạnh Tĩnh Lặng Trong Thế Giới Huyền Ảo (Tái Bản 2020)', 'XH', 'Thích Nhất Hạnh', 'bBđ', '8935280906402.jpg', 20, '55200', '66240', '', '2022-03-17 07:47:31'),
(428, 'Ám Ảnh Từ Kiếp Trước (Tái Bản 2020)', 'XH', 'Brian L Weiss', 'bLđ', 'image_197918.jpg', 20, '71200', '85440', '', '2022-03-17 07:47:35'),
(429, 'Sử Việt - 12 Khúc Tráng Ca (Tái Bản 2019)', 'XH', 'Dũng Phan', 'bHnv', 'bia1_su-viet-tb2019.jpg', 20, '79200', '95040', '', '2022-03-17 07:47:42'),
(430, 'Cuộc Thập Tự Chinh Thứ Nhất - Tiếng Gọi Từ Phương Đông - The First Crusade: The Call From The East', 'XH', 'Peter Frankopan', 'bKĐ', 'image_232400.jpg', 20, '233700', '280440', '', '2022-03-17 07:47:54'),
(431, 'Hành Trình Về Phương Đông (Tái Bản 2021)', 'XH', 'Baird T Spalding', 'bQđ', 'h_nh-tr_nh-v_-ph_ng-_ng.jpg', 20, '96760', '116112', '', '2022-03-17 07:48:08'),
(432, 'Hành Trình Về Phương Đông (Khổ Nhỏ) - Tái Bản 2021', 'XH', 'Nguyên Phong', 'bÂn', 'htpd33333.jpg', 20, '63960', '76752', '', '2022-03-17 07:48:16'),
(433, 'Muôn Kiếp Nhân Sinh - Many Times, Many Lives (Bìa Cứng)', 'XH', 'Nguyên Phong', 'bSk', 'muonkiepnhansinh-biacung1.jpg', 20, '182400', '218880', '', '2022-03-17 07:48:25'),
(434, 'Hành Trình Của Linh Hồn (Tái Bản 2020)', 'XH', 'Michael Duff Newton', 'bLđxh', 'image_215554.jpg', 20, '103200', '123840', '', '2022-03-17 07:48:33'),
(435, 'Từng Bước Nở Hoa Sen (Tái Bản 2019)', 'XH', 'Thích Nhất Hạnh', 'bBuđ', 'image_189318.jpg', 20, '45000', '54000', '', '2022-03-17 07:48:39'),
(436, 'TalMud - Tinh Hoa Trí Tuệ Do Thái (Tái Bản)', 'XH', 'Từ Quang Á', 'bPn', '8935074127549_1.jpg', 20, '95700', '114840', '', '2022-03-17 07:48:56'),
(1999, 'Hieu', 'CT', 'Hieu', 'bÂn', 'khongco.png', 1, '111', '111', '<p>www</p>', '2022-04-09 01:59:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `the_loai`
--

CREATE TABLE `the_loai` (
  `ma_the_loai` varchar(10) NOT NULL,
  `ten_the_loai` text NOT NULL,
  `mo_ta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `the_loai`
--

INSERT INTO `the_loai` (`ma_the_loai`, `ten_the_loai`, `mo_ta`) VALUES
('CT', 'Chính Trị - Pháp Luật', ''),
('KH', 'Khoa Học - Công Nghệ', ''),
('KT', 'Kinh Tế', ''),
('NT', 'Nghệ Thuật', ''),
('T', 'Truyện', ''),
('TG', 'Tâm Linh - Tôn Giáo', ''),
('TL', 'Tâm Lý', ''),
('TN', 'Thiếu Nhi', ''),
('Truyen', 'Truyện Tranh', ''),
('TT', 'Tiểu Thuyết', ''),
('XH', 'Xã Hội – Lịch Sử', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chi_tiet_don`
--
ALTER TABLE `chi_tiet_don`
  ADD PRIMARY KEY (`stt`),
  ADD KEY `ma_sach` (`ma_sach`),
  ADD KEY `ma_don_hang` (`ma_don_hang`);

--
-- Chỉ mục cho bảng `don_dat_hang`
--
ALTER TABLE `don_dat_hang`
  ADD PRIMARY KEY (`ma_don_hang`),
  ADD KEY `tai_khoan` (`tai_khoan`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`tai_khoan`);

--
-- Chỉ mục cho bảng `nha_xuat_ban`
--
ALTER TABLE `nha_xuat_ban`
  ADD PRIMARY KEY (`ma_nxb`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`ma_sach`),
  ADD KEY `the_loai` (`the_loai`),
  ADD KEY `nxb` (`nxb`);

--
-- Chỉ mục cho bảng `the_loai`
--
ALTER TABLE `the_loai`
  ADD PRIMARY KEY (`ma_the_loai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chi_tiet_don`
--
ALTER TABLE `chi_tiet_don`
  MODIFY `stt` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT cho bảng `sach`
--
ALTER TABLE `sach`
  MODIFY `ma_sach` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2000;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chi_tiet_don`
--
ALTER TABLE `chi_tiet_don`
  ADD CONSTRAINT `chi_tiet_don_ibfk_1` FOREIGN KEY (`ma_sach`) REFERENCES `sach` (`ma_sach`),
  ADD CONSTRAINT `chi_tiet_don_ibfk_2` FOREIGN KEY (`ma_don_hang`) REFERENCES `don_dat_hang` (`ma_don_hang`);

--
-- Các ràng buộc cho bảng `don_dat_hang`
--
ALTER TABLE `don_dat_hang`
  ADD CONSTRAINT `don_dat_hang_ibfk_1` FOREIGN KEY (`tai_khoan`) REFERENCES `khach_hang` (`tai_khoan`);

--
-- Các ràng buộc cho bảng `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `sach_ibfk_1` FOREIGN KEY (`the_loai`) REFERENCES `the_loai` (`ma_the_loai`),
  ADD CONSTRAINT `sach_ibfk_2` FOREIGN KEY (`nxb`) REFERENCES `nha_xuat_ban` (`ma_nxb`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
