-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 08, 2022 lúc 11:20 AM
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
-- Cơ sở dữ liệu: `restaurant`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `birthday` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `phoneNumber`, `name`, `address`, `birthday`) VALUES
(1, '0911175581', 'Cường', 'Nghệ An', '2000-04-09 10:00:00'),
(2, '0911175581', 'Linh', 'Hà Nội', '2000-09-16 10:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `startDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `permission` varchar(50) NOT NULL COMMENT 'manager-quản lý\r\nstaff-nhân viên\r\ninactive-nghỉ việc',
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `employee`
--

INSERT INTO `employee` (`id`, `username`, `password`, `name`, `phoneNumber`, `startDate`, `permission`, `salary`) VALUES
(1, 'XuanHuu', 'xuanhuu', 'Nguyễn Xuân Hữu', '0393942398', '2022-11-06 17:00:00', 'manager', 0),
(2, 'HuuTrong', 'huutrong', 'Đồng Hữu Trọng', '0349186599', '2022-11-07 05:15:08', 'manager', 0),
(3, 'TanDat', 'tandat', 'Nguyễn Tấn Đạt', '0938192032', '2022-11-07 13:21:37', 'manager', 0),
(4, 'VanHieu', 'vanhieu', 'Nguyễn Văn Hiếu', '0933656425', '2022-11-07 13:22:37', 'manager', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food_category`
--

CREATE TABLE `food_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `food_category`
--

INSERT INTO `food_category` (`id`, `name`, `slug`) VALUES
(1, 'Đồ Ăn', 'do-an'),
(2, 'Trà Sữa', 'tra-sua'),
(3, 'Cà Phê', 'ca-phe'),
(4, 'Topping', 'topping');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food_item`
--

CREATE TABLE `food_item` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `urlImage` varchar(50) DEFAULT NULL,
  `unitName` varchar(20) NOT NULL,
  `unitPrice` bigint(20) NOT NULL,
  `idCategory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `food_item`
--

INSERT INTO `food_item` (`id`, `name`, `description`, `urlImage`, `unitName`, `unitPrice`, `idCategory`) VALUES
(1, 'No Topping', '', '', 'Phần', 0, 4),
(2, 'Trân Châu Tuyết Sợi', NULL, 'Tran-Chau-Tuyet-Soi-scaled.png', 'Phần', 10000, 4),
(3, 'Trân Châu Đen', NULL, 'Tran-Chau-Den-scaled.png', 'Phần', 10000, 4),
(4, 'Trân Châu Trắng', NULL, 'Trân-châu-trắng.png', 'Phần', 10000, 4),
(5, 'Trà Sữa Trân Châu', '', 'Trà-sữa-Trân-châu-đen.png', 'Ly', 50000, 2),
(6, 'Trà Sữa Sương Sáo', NULL, 'Trà-sữa-sương-sáo.png', 'Ly', 45000, 2),
(7, 'Trà Sữa Matcha Đậu Đỏ(L)', '', 'Trà-sữa-Matcha-đậu-đỏ.png', 'Ly', 50000, 2),
(8, 'Sữa Tươi Trân Châu Đường Đen', NULL, 'Sữa-tươi-trân-châu-đường-đen.png', 'Ly', 45000, 2),
(9, 'Bánh Flan', '', 'Bánh-flan.png', 'Cái', 10000, 1),
(10, 'Hướng dương', NULL, 'hathuongduong.png', 'Túi', 10000, 1),
(11, 'Cafe truyền thống', NULL, 'cafe.png', 'Cốc', 35000, 3),
(12, 'Espresso', NULL, 'Espresso.png', 'Cốc', 45000, 3),
(13, 'Trà Sữa Matcha(XL)', NULL, 'Trà-sữa-matcha.png', 'Ly', 25000, 2),
(14, 'Trà Sữa Ô Long', '', 'Trà-sữa-ô-long.png', 'Ly', 20000, 2),
(15, 'Trà Đào', '', 'Trà-đào.png', 'Ly', 40000, 2),
(16, 'Trà Đào Sữa(L)', '', 'trà-đào-sữa.png', 'Ly', 50000, 2),
(29, 'Trà sen vàng long nhãn', '', 'Trà-sen-vàng-long-nhãn.png', 'Ly', 45000, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `idEmployee` int(11) NOT NULL,
  `idTable` int(11) DEFAULT NULL,
  `type` varchar(45) NOT NULL DEFAULT 'local' COMMENT 'local - tại quán\nonline - đặt online',
  `status` varchar(45) NOT NULL DEFAULT 'unpaid' COMMENT 'unpaid - chưa thanh toán\npaid - đã thanh toán',
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `payDate` timestamp NULL DEFAULT NULL,
  `paidAmount` bigint(20) DEFAULT 0,
  `totalAmount` bigint(20) NOT NULL DEFAULT 0,
  `discount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `idEmployee`, `idTable`, `type`, `status`, `orderDate`, `payDate`, `paidAmount`, `totalAmount`, `discount`) VALUES
(1, 1, 1, 'local', 'paid', '2022-11-07 13:12:18', '2022-11-07 13:31:38', 500000, 500000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_item`
--

CREATE TABLE `order_item` (
  `idOrder` int(11) NOT NULL,
  `idFoodItem` int(11) NOT NULL,
  `idTopping` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `foodPrice` bigint(20) NOT NULL DEFAULT 0,
  `toppingPrice` bigint(20) NOT NULL DEFAULT 0,
  `note` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_item`
--

INSERT INTO `order_item` (`idOrder`, `idFoodItem`, `idTopping`, `quantity`, `foodPrice`, `toppingPrice`, `note`) VALUES
(1, 1, 1, 1, 0, 0, ''),
(1, 2, 1, 1, 10000, 0, ''),
(1, 3, 1, 1, 10000, 0, ''),
(1, 4, 1, 1, 10000, 0, ''),
(1, 5, 1, 1, 50000, 0, ''),
(1, 6, 1, 1, 45000, 0, ''),
(1, 7, 1, 1, 50000, 0, ''),
(1, 8, 1, 1, 45000, 0, ''),
(1, 9, 1, 1, 10000, 0, ''),
(1, 10, 1, 1, 10000, 0, ''),
(1, 11, 1, 1, 35000, 0, ''),
(1, 12, 1, 1, 45000, 0, ''),
(1, 13, 1, 1, 25000, 0, ''),
(1, 14, 1, 1, 20000, 0, ''),
(1, 15, 1, 1, 40000, 0, ''),
(1, 16, 1, 1, 50000, 0, ''),
(1, 29, 1, 1, 45000, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `idEmployee` int(11) NOT NULL,
  `startTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `endTime` timestamp NULL DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `session`
--

INSERT INTO `session` (`id`, `idEmployee`, `startTime`, `endTime`, `message`) VALUES
(20, 1, '2020-12-26 05:58:09', '2020-12-26 05:58:15', 'logout'),
(21, 2, '2020-12-26 10:21:50', '2020-12-26 10:22:06', 'logout'),
(23, 2, '2020-12-26 10:22:59', '2020-12-26 12:13:20', 'logout'),
(24, 1, '2020-12-26 15:46:25', '2020-12-26 15:47:22', 'logout'),
(25, 1, '2020-12-27 05:46:33', '2020-12-27 06:53:14', 'logout'),
(26, 1, '2020-12-27 06:55:49', '2020-12-27 07:25:30', 'logout'),
(27, 1, '2020-12-27 07:25:37', '2020-12-27 09:37:44', 'logout'),
(28, 1, '2020-12-27 09:39:08', '2020-12-27 09:51:08', 'logout'),
(30, 1, '2020-12-27 15:13:40', '2020-12-27 15:13:51', 'logout'),
(31, 1, '2020-12-27 15:14:33', '2020-12-27 15:15:08', 'logout'),
(32, 1, '2020-12-27 15:15:23', '2020-12-27 15:15:32', 'logout'),
(33, 1, '2020-12-27 15:18:00', '2020-12-27 15:18:05', 'logout'),
(34, 1, '2020-12-27 15:19:20', '2020-12-27 15:19:25', 'logout'),
(35, 1, '2020-12-28 15:30:20', '2020-12-28 15:31:00', 'logout'),
(36, 1, '2020-12-28 15:35:36', '2020-12-28 15:36:39', 'logout'),
(37, 1, '2020-12-28 15:36:53', '2020-12-28 15:37:03', 'logout'),
(38, 1, '2020-12-28 16:10:47', '2020-12-28 16:17:10', 'logout'),
(39, 1, '2020-12-28 16:20:28', '2020-12-28 16:21:11', 'logout'),
(40, 1, '2020-12-28 16:21:43', '2020-12-28 16:21:58', 'logout'),
(41, 1, '2020-12-28 16:22:09', '2020-12-28 16:22:20', 'logout'),
(42, 1, '2020-12-28 16:22:31', '2020-12-28 16:22:53', 'logout'),
(43, 1, '2020-12-28 16:23:04', '2020-12-28 16:23:17', 'logout'),
(44, 1, '2020-12-28 16:23:27', NULL, 'login'),
(45, 1, '2020-12-28 16:37:35', '2020-12-28 16:37:47', 'logout'),
(46, 1, '2020-12-28 16:39:34', '2020-12-28 16:39:53', 'logout'),
(47, 1, '2020-12-28 16:40:02', '2020-12-28 16:40:14', 'logout'),
(48, 1, '2020-12-29 07:17:33', '2020-12-29 07:17:42', 'logout'),
(49, 1, '2020-12-29 07:18:06', '2020-12-29 07:18:14', 'logout'),
(50, 1, '2020-12-29 07:18:23', '2020-12-29 07:18:28', 'logout'),
(51, 1, '2020-12-29 07:18:37', '2020-12-29 07:18:44', 'logout'),
(52, 1, '2020-12-29 07:18:54', '2020-12-29 07:19:00', 'logout'),
(53, 1, '2020-12-29 07:19:12', '2020-12-29 07:19:18', 'logout'),
(54, 1, '2020-12-29 07:19:33', '2020-12-29 07:19:38', 'logout'),
(55, 1, '2021-01-09 03:42:06', NULL, 'login'),
(56, 1, '2021-01-10 14:17:16', '2021-01-10 14:17:42', 'logout'),
(57, 1, '2021-01-10 14:20:51', '2021-01-10 14:21:12', 'logout'),
(58, 1, '2022-11-06 22:44:52', '2022-11-06 22:46:06', 'logout'),
(59, 1, '2022-11-06 22:51:42', '2022-11-06 22:54:20', 'logout'),
(60, 1, '2022-11-07 04:46:27', '2022-11-07 04:50:49', 'logout'),
(61, 1, '2022-11-07 04:54:03', '2022-11-07 05:06:43', 'logout'),
(62, 1, '2022-11-07 05:17:00', '2022-11-07 05:23:05', 'logout'),
(63, 1, '2022-11-07 05:37:11', '2022-11-07 05:38:15', 'logout'),
(64, 1, '2022-11-07 05:38:25', '2022-11-07 05:40:56', 'logout'),
(65, 1, '2022-11-07 05:41:09', '2022-11-07 05:49:10', 'logout'),
(66, 1, '2022-11-07 05:49:26', '2022-11-07 06:03:48', 'logout'),
(67, 1, '2022-11-07 06:04:01', '2022-11-07 06:10:30', 'logout'),
(68, 1, '2022-11-07 06:10:48', '2022-11-07 06:11:25', 'logout'),
(69, 1, '2022-11-07 06:11:58', '2022-11-07 06:12:49', 'logout'),
(70, 1, '2022-11-07 06:13:03', '2022-11-07 06:23:10', 'logout'),
(71, 1, '2022-11-07 06:23:24', '2022-11-07 06:25:24', 'logout'),
(72, 1, '2022-11-07 06:25:33', '2022-11-07 06:32:43', 'logout'),
(73, 1, '2022-11-07 06:33:05', '2022-11-07 06:36:50', 'logout'),
(74, 1, '2022-11-07 06:37:05', '2022-11-07 06:39:09', 'logout'),
(75, 1, '2022-11-07 10:48:48', '2022-11-07 10:53:37', 'logout'),
(76, 1, '2022-11-08 00:41:04', '2022-11-08 00:45:26', 'logout'),
(77, 1, '2022-11-08 00:45:51', '2022-11-08 01:14:25', 'logout'),
(78, 1, '2022-11-08 01:14:49', '2022-11-08 01:17:40', 'logout');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipment`
--

CREATE TABLE `shipment` (
  `idOrder` int(11) NOT NULL,
  `idCustomer` int(11) NOT NULL,
  `shipperName` varchar(50) NOT NULL,
  `shipperPhoneNumber` varchar(20) NOT NULL,
  `shipCost` int(11) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'topay' COMMENT 'topay - chờ xác nhận\ntoship - chờ lấy hàng\ntoreceive - đang giao\ncompleted - hoàn thành\ncancelled - đã hủy',
  `notice` varchar(45) DEFAULT NULL,
  `startDate` timestamp NULL DEFAULT current_timestamp(),
  `endDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table`
--

CREATE TABLE `table` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'free' COMMENT 'free-Trống\nserving-Đang phục vụ\nreserving-Đặt trước'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `table`
--

INSERT INTO `table` (`id`, `name`, `status`) VALUES
(1, 'Bàn 1', 'serving'),
(2, 'Bàn 2', 'free'),
(3, 'Bàn 3', 'free'),
(4, 'Bàn 4', 'free'),
(5, 'Bàn 5', 'free'),
(6, 'Bàn 6', 'free'),
(7, 'Bàn 7', 'free'),
(8, 'Bàn 8', 'free'),
(10, 'Bàn 10', 'free'),
(11, 'Bàn 11', 'free'),
(15, 'Bàn 12', 'free');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `food_category`
--
ALTER TABLE `food_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `food_item`
--
ALTER TABLE `food_item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `fk_item_category` (`idCategory`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_employee_order` (`idEmployee`),
  ADD KEY `fk_order_table` (`idTable`);

--
-- Chỉ mục cho bảng `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`idOrder`,`idFoodItem`,`idTopping`),
  ADD KEY `fk_order_main_item` (`idFoodItem`),
  ADD KEY `fk_order_topping` (`idTopping`);

--
-- Chỉ mục cho bảng `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_session` (`idEmployee`);

--
-- Chỉ mục cho bảng `shipment`
--
ALTER TABLE `shipment`
  ADD PRIMARY KEY (`idOrder`),
  ADD KEY `fk_ship_customer` (`idCustomer`);

--
-- Chỉ mục cho bảng `table`
--
ALTER TABLE `table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `food_category`
--
ALTER TABLE `food_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `food_item`
--
ALTER TABLE `food_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `table`
--
ALTER TABLE `table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `food_item`
--
ALTER TABLE `food_item`
  ADD CONSTRAINT `fk_item_category` FOREIGN KEY (`idCategory`) REFERENCES `food_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_employee_order` FOREIGN KEY (`idEmployee`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_table` FOREIGN KEY (`idTable`) REFERENCES `table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `fk_order_item` FOREIGN KEY (`idOrder`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_main_item` FOREIGN KEY (`idFoodItem`) REFERENCES `food_item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_topping` FOREIGN KEY (`idTopping`) REFERENCES `food_item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `fk_session` FOREIGN KEY (`idEmployee`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `shipment`
--
ALTER TABLE `shipment`
  ADD CONSTRAINT `fk_order_ship` FOREIGN KEY (`idOrder`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ship_customer` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
