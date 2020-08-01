-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 23, 2020 lúc 07:35 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `waka`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(12) NOT NULL,
  `name` varchar(55) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(1, 'kynang'),
(2, 'kinhdoanh'),
(3, 'ngontinh'),
(4, 'tacphamkinhdien'),
(5, 'vanhoc'),
(6, 'vanhoa-xahoi'),
(8, 'truyentranh'),
(9, 'thieunhi'),
(10, 'chamsocgiadinh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(12) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iddm` int(12) NOT NULL,
  `idtacgia` int(12) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `view` int(12) DEFAULT 0,
  `mota` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vote` tinyint(1) DEFAULT 0,
  `price` double(10,2) DEFAULT 0.00,
  `luotmua` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `iddm`, `idtacgia`, `img`, `view`, `mota`, `vote`, `price`, `luotmua`) VALUES
(1, 'Nghề tay trái hái ra tiền', 1, 1, '1.jpg', 150, 'Với một số người, suy nghĩ nghỉ việc và tự làm chủ là một ý tưởng cực kỳ hấp dẫn', 5, 10.00, 1542),
(2, 'Bạn là ai trong mắt người khác', 3, 7, '2.jpg', 10, 'Từ những kinh nghiệm được đúc rút sau khi làm việc với các doanh nghiệp và nhà ...', 3, 8.00, 15),
(3, 'Cách tạo ra những sản phẩm trường tổn', 4, 4, '3.jpg', 0, 'Để thành công trong thời đại bùng nổ thông tin, hiện nay, bạn cần phải trở thành ...', 4, 11.00, 144),
(4, 'Hộ chiếu tình yêu', 3, 10, '4.jpg', 45, 'uốn sách là kinh nghiệm yêu người nước ngoài của một cô gái Việt, cung cấp ...', 5, 35.00, 84),
(5, 'Càng độc lập càng cao quý', 5, 8, '5.jpg', 75, 'Này cô gái, bất luận cuộc đời mang đến cho ta bao nhiêu chông gai thử thách', 0, 0.00, 0),
(6, 'Sổ tay giáo dục gia đình Nhật Bản\r\n', 6, 6, '6.jpg', 46, 'Sổ tay giáo dục gia đình Nhật Bản là cuốn sách tổng hợp những kiến thức thường', 4, 30.00, 15),
(7, 'Thực ra, em đã rất nhớ anh', 3, 4, '7.jpg', 56, 'Thực Ra, Em Đã Rất Nhớ Anh là tuyển tập truyện mới nhất của tác giả', 5, 18.00, 35),
(8, '[Tóm tắt sách] Tiểu sử Steve Jobs', 1, 1, '8.jpg', 159, 'Đây là bản tóm tắt của sách Tiểu sử Steve Jobs. Các nội dung trong sách đã được Alpha Books giản lược ', 5, 35.00, 148),
(9, 'Hỏi đáp về chủng Virus Corona mới 2019', 10, 3, '9.jpg', 5, 'Virus Corona mới năm 2019 (gọi tắt là 2019 nCoV) là chủng virus hô hấp ', 4, 5.00, 35),
(10, 'Content marketing trong kỷ nguyên trải nghiệm ', 9, 9, '10.jpg', 59, 'Đúng như những gì được nêu trong phần lời dẫn, đây không phải cuốn sách', 3, 150.00, 88);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgia`
--

CREATE TABLE `tacgia` (
  `id` int(12) NOT NULL,
  `name` varchar(55) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tacgia`
--

INSERT INTO `tacgia` (`id`, `name`) VALUES
(1, 'Jack Canfield'),
(2, 'Lee Young Min'),
(3, 'Carmine Gallo'),
(4, 'Eckhart Tolle'),
(5, 'Kyo won'),
(6, 'Seth Price, Barry Feldman'),
(7, 'Chris Guillebeau'),
(8, 'Ryan Holiday'),
(9, 'Claudio Torres'),
(10, 'Vãn Tình');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sp_dm` (`iddm`),
  ADD KEY `fk_sp_tg` (`idtacgia`);

--
-- Chỉ mục cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sp_dm` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sp_tg` FOREIGN KEY (`idtacgia`) REFERENCES `tacgia` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
