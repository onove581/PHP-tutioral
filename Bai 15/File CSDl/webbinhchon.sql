-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 18, 2020 lúc 02:52 PM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbinhchon`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhchon`
--

CREATE TABLE `binhchon` (
  `idBC` int(11) NOT NULL,
  `MoTa` varchar(255) NOT NULL,
  `idLT` int(11) NOT NULL,
  `SoLanChon` int(11) NOT NULL,
  `AnHien` int(11) NOT NULL,
  `ThuTu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binhchon`
--

INSERT INTO `binhchon` (`idBC`, `MoTa`, `idLT`, `SoLanChon`, `AnHien`, `ThuTu`) VALUES
(1, 'Bjan nghĩ hõ web có giúp bạn học tốt hơm không?', 1, 10, 1, 0),
(2, 'Bạn dự đoán Phương Mỹ Chi có đạot giải the voice năm nay không?', 1, 2, 1, 0),
(3, 'Bạn thích làm gì trong các nghề dưới đây?', 9, 1, 1, 0),
(4, 'Bạn sẽ cho con làm gì trong kỳ nghỉ hè này ?', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuongan`
--

CREATE TABLE `phuongan` (
  `idPA` int(11) NOT NULL,
  `Mota` varchar(255) NOT NULL,
  `SoLanChon` int(11) NOT NULL,
  `idBC` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phuongan`
--

INSERT INTO `phuongan` (`idPA`, `Mota`, `SoLanChon`, `idBC`) VALUES
(1, 'là nơi để sinh viên có thể tự học cntt tốt nhất', 20, 1),
(2, 'Nội dung không phong phú lắm', 5, 1),
(3, 'Làm công chức nhà nước', 0, 3),
(4, 'Làm cho các công ty', 0, 3),
(5, 'làm cho các cơ quan nghiên cứu', 0, 3),
(6, 'các lĩnh vực khác', 1, 3),
(7, 'Chất lượng thì cũng bình thường thôi', 2, 1),
(8, 'Chắc chắn đạot giải nhất ', 2, 2),
(9, 'hát dỡ quá, rớt chắc luôn', 0, 2),
(10, 'đi học thêm', 0, 4),
(11, 'Chơi ở nhà ', 0, 4),
(12, 'đi du lịch ', 0, 4);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhchon`
--
ALTER TABLE `binhchon`
  ADD PRIMARY KEY (`idBC`);

--
-- Chỉ mục cho bảng `phuongan`
--
ALTER TABLE `phuongan`
  ADD PRIMARY KEY (`idPA`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhchon`
--
ALTER TABLE `binhchon`
  MODIFY `idBC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `phuongan`
--
ALTER TABLE `phuongan`
  MODIFY `idPA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
