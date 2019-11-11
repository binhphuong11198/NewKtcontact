-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 11, 2019 lúc 04:36 PM
-- Phiên bản máy phục vụ: 8.0.15
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `contactnew`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhba`
--

CREATE TABLE `danhba` (
  `MaDB` int(11) NOT NULL,
  `tenDB` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `maNhan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `danhba`
--

INSERT INTO `danhba` (`MaDB`, `tenDB`, `email`, `sdt`, `maNhan`) VALUES
(1, 'Lê Công Tuệ Quang', 'quangle@vietprojectgroup.com', '2131524534', 3),
(2, 'Phùng Hữu Duy Quang', 'quangphung@vietprojectgroup.com', '21241242', 3),
(3, 'Võ Trịnh Quang', 'quangvo@vietprojectgroup.com', '14234234', 5),
(4, 'Trần Thiện Thanh', 'thanhthien@vietprojectgroup.com', '124124124', 4),
(5, 'Nguyễn Thị Kim Thoa', 'thoanguyen@vietprojectgroup.com', '2141241', 2),
(6, 'Dương Viết Thuận', 'thuanduong@vietprojectgroup.com', '342352342', 2),
(7, 'Hoàng Quyết Thắng ', 'thanghoang@vietprojectgroup.com', '2131231', 4),
(8, 'Nguyễn Thị Quỳnh Trang', 'trangnguyen@vietprojectgroup.com', '12412213', 3),
(9, 'Nguyễn Đình Hải Triều', 'trieunguyen@vietprojectgroup.com', '21312312', 4),
(10, 'Đỗ Thanh Trí ', 'trido@vietprojectgroup.com', '231212', 5),
(11, 'Lê Minh Khôi ', 'ceo@vietprojectgroup.com', '213123', 1),
(12, 'jjj', '', '0192391239', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan`
--

CREATE TABLE `nhan` (
  `maNhan` int(11) NOT NULL,
  `MaUser` int(11) NOT NULL,
  `TenNhan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nhan`
--

INSERT INTO `nhan` (`maNhan`, `MaUser`, `TenNhan`) VALUES
(1, 1, 'Gia đinh'),
(2, 1, 'Xã hội'),
(3, 1, 'Công việc'),
(4, 1, 'Vui chơi'),
(5, 2, 'Nhậu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `maUser` int(11) NOT NULL,
  `tenUser` varchar(50) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `passWord` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`maUser`, `tenUser`, `userName`, `passWord`) VALUES
(1, 'Võ Ngọc Bình Phương', 'binhphuong', '123'),
(2, 'Võ Phước Đạt', 'phuocdat', '123');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhba`
--
ALTER TABLE `danhba`
  ADD PRIMARY KEY (`MaDB`),
  ADD KEY `maNhan` (`maNhan`);

--
-- Chỉ mục cho bảng `nhan`
--
ALTER TABLE `nhan`
  ADD PRIMARY KEY (`maNhan`),
  ADD KEY `MaUser` (`MaUser`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`maUser`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhba`
--
ALTER TABLE `danhba`
  MODIFY `MaDB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `nhan`
--
ALTER TABLE `nhan`
  MODIFY `maNhan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `maUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `danhba`
--
ALTER TABLE `danhba`
  ADD CONSTRAINT `danhba_ibfk_1` FOREIGN KEY (`maNhan`) REFERENCES `nhan` (`maNhan`);

--
-- Các ràng buộc cho bảng `nhan`
--
ALTER TABLE `nhan`
  ADD CONSTRAINT `nhan_ibfk_1` FOREIGN KEY (`MaUser`) REFERENCES `user` (`maUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
