-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 15, 2019 lúc 09:51 AM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cua_hang_ban_quan_ao_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_don_hang`
--

CREATE TABLE `chi_tiet_don_hang` (
  `ma_don_hang` int(11) NOT NULL,
  `ma_san_pham` int(11) NOT NULL,
  `don_gia` bigint(20) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `thanh_tien` bigint(20) NOT NULL,
  `trang_thai` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_don_hang`
--

INSERT INTO `chi_tiet_don_hang` (`ma_don_hang`, `ma_san_pham`, `don_gia`, `so_luong`, `thanh_tien`, `trang_thai`) VALUES
(11, 1, 100000, 9, 900000, 0),
(24, 2, 200000, 1, 200000, 0),
(25, 2, 200000, 1, 200000, 0),
(26, 1, 100000, 1, 100000, 0),
(26, 2, 200000, 1, 200000, 0),
(27, 2, 200000, 1, 200000, 0),
(28, 2, 200000, 1, 200000, 0),
(29, 8, 80000, 1, 80000, 0),
(29, 9, 100000, 1, 100000, 0),
(30, 1, 100000, 1, 100000, 0),
(30, 2, 200000, 1, 200000, 0),
(30, 3, 200000, 1, 200000, 0),
(30, 5, 200000, 1, 200000, 0),
(31, 2, 200000, 1, 200000, 0),
(31, 3, 200000, 1, 200000, 0),
(32, 1, 100000, 10, 1000000, 0),
(32, 3, 200000, 9, 1800000, 0),
(33, 2, 200000, 2, 400000, 0),
(34, 1, 100000, 4, 400000, 0),
(35, 1, 100000, 4, 400000, 0),
(36, 1, 100000, 4, 400000, 0),
(37, 1, 100000, 2, 200000, 0),
(38, 4, 150000, 3, 450000, 0),
(39, 3, 200000, 3, 600000, 0),
(40, 2, 200000, 4, 800000, 0),
(41, 2, 200000, 3, 600000, 0),
(42, 96, 240000, 2, 480000, 0),
(43, 3, 200000, 3, 600000, 0),
(44, 1, 100000, 3, 300000, 0),
(45, 1, 100000, 2, 200000, 0),
(46, 2, 200000, 1, 200000, 0),
(47, 2, 200000, 3, 600000, 0),
(48, 1, 100000, 4, 400000, 0),
(49, 1, 100000, 4, 400000, 0),
(49, 2, 200000, 7, 1400000, 0),
(50, 2, 200000, 4, 800000, 0),
(51, 1, 100000, 4, 400000, 0),
(51, 20, 180000, 4, 720000, 0),
(51, 21, 200000, 5, 1000000, 0),
(51, 25, 300000, 5, 1500000, 0),
(51, 28, 220000, 10, 2200000, 0),
(51, 56, 320000, 10, 3200000, 0),
(52, 1, 100000, 4, 400000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `ma_don_hang` bigint(20) NOT NULL,
  `khach_hang` bigint(20) NOT NULL,
  `ghi_chu` text NOT NULL,
  `ngay_lap_don_hang` varchar(30) NOT NULL,
  `phi_ship` int(11) NOT NULL,
  `tong_tien` bigint(20) NOT NULL,
  `trang_thai` int(1) NOT NULL DEFAULT '0',
  `ngay_thanh_toan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`ma_don_hang`, `khach_hang`, `ghi_chu`, `ngay_lap_don_hang`, `phi_ship`, `tong_tien`, `trang_thai`, `ngay_thanh_toan`) VALUES
(11, 3, 'chú qq', '22/10/2018 11:10:00', 0, 1500000, 0, NULL),
(24, 3, '', '2018-11-28 06:11:42', 0, 200000, 0, NULL),
(25, 3, '', '2018-11-28 06:18:32', 0, 200000, 0, NULL),
(26, 3, '', '2018-11-28 06:19:47', 0, 300000, 0, NULL),
(27, 3, '', '2018-11-28 06:31:17', 0, 200000, 0, NULL),
(28, 3, '', '2018-11-28 06:36:11', 0, 200000, 0, NULL),
(29, 4, '', '2018-11-28 08:33:19', 0, 180000, 0, NULL),
(30, 4, '', '2018-12-01 06:40:02', 0, 700000, 0, NULL),
(31, 4, '', '2018-12-02 12:44:08', 0, 400000, 0, NULL),
(32, 3, '', '2018-12-03 08:06:51', 0, 2800000, 0, NULL),
(33, 22, 'hihihi', '2018-12-03 08:31:11', 0, 400000, 0, NULL),
(34, 23, 'ghi chú nè', '09/12/2018 10:57:07', 0, 400000, 0, NULL),
(35, 23, '', '09/12/2018 14:20:12', 0, 400000, 0, NULL),
(36, 23, '', '09/12/2018 14:22:08', 0, 400000, 0, NULL),
(37, 23, '', '09/12/2018 14:27:54', 0, 200000, 0, NULL),
(38, 23, '', '09/12/2018 14:28:51', 0, 450000, 0, NULL),
(39, 23, '', '09/12/2018 14:34:14', 0, 600000, 0, NULL),
(40, 23, '', '09/12/2018 14:38:17', 0, 800000, 0, NULL),
(41, 23, '', '09/12/2018 14:41:05', 0, 600000, 0, NULL),
(42, 23, '', '09/12/2018 14:45:30', 0, 480000, 0, NULL),
(43, 23, '', '09/12/2018 14:50:29', 0, 600000, 0, NULL),
(44, 23, '', '09/12/2018 14:58:07', 0, 300000, 0, NULL),
(48, 3, '', '10/12/2018 15:55:43', 0, 400000, 0, NULL),
(49, 23, '', '14/12/2018 09:15:22', 0, 1800000, 0, NULL),
(50, 23, '', '14/12/2018 09:19:23', 0, 800000, 0, NULL),
(51, 3, '', '15/12/2018 10:55:52', 0, 9020000, 0, NULL),
(52, 3, '', '19/12/2018 12:39:54', 0, 400000, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gio_hang`
--

CREATE TABLE `gio_hang` (
  `khach_hang` bigint(20) NOT NULL,
  `ma_san_pham` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `gio_hang`
--

INSERT INTO `gio_hang` (`khach_hang`, `ma_san_pham`, `so_luong`) VALUES
(0, 45, 4),
(3, 2, 5),
(25, 2, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh_anh_san_pham`
--

CREATE TABLE `hinh_anh_san_pham` (
  `id` int(11) NOT NULL,
  `ma_san_pham` int(11) NOT NULL,
  `url_hinh_anh` varchar(255) NOT NULL,
  `da_xoa` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hinh_anh_san_pham`
--

INSERT INTO `hinh_anh_san_pham` (`id`, `ma_san_pham`, `url_hinh_anh`, `da_xoa`) VALUES
(1, 1, 'img/sp1.jpg', 0),
(2, 1, 'img/sp7.jpg', 0),
(3, 1, 'img/sp4.png', 0),
(4, 1, 'img/sp3.jpg', 0),
(5, 2, 'img/sp2.jpg', 0),
(6, 2, 'img/sp13.jpg', 0),
(7, 2, 'img/sp14.jpg', 0),
(8, 2, 'img/sp15.jpg', 0),
(9, 3, 'img/sp3.jpg', 0),
(10, 3, 'img/sp10.jpg', 0),
(11, 3, 'img/sp5.jpg', 0),
(12, 3, 'img/sp6.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `id` bigint(20) NOT NULL,
  `ten_khach_hang` varchar(255) NOT NULL,
  `so_dien_thoai` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dia_chi` text,
  `avata` text,
  `khach_chinh` int(1) DEFAULT NULL,
  `mac_dinh` int(1) NOT NULL DEFAULT '0',
  `da_xoa` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`id`, `ten_khach_hang`, `so_dien_thoai`, `email`, `dia_chi`, `avata`, `khach_chinh`, `mac_dinh`, `da_xoa`) VALUES
(1, 'a', '123', 'thien1@gmail.com', NULL, NULL, 0, 0, 0),
(2, 'a', '123', 'thien@123', NULL, NULL, 0, 0, 0),
(3, 'Vũ Quốc Thiênnn', '0128232815', 'vuquocthien8156@gmail.com', '45 Đường Số 333, Tam Bình , Thủ Đức , Hồ Chí Minh', 'img/avatavuquocthien8156@gmail.com.jpeg', 0, 1, 0),
(4, 'Nhung', '123456', 'vuquocthien8156@gmail.com', 'ádqweqweqweqwe', 'img/avatavuquocthien8156@gmail.com.jpeg', 1, 0, 1),
(5, 'thiennn', '123456', 't@123', NULL, NULL, 0, 0, 0),
(7, 'abc', '123456', 'thien7@123', NULL, NULL, 0, 0, 0),
(8, 'a', '123456', 'thien@gmail.com', NULL, NULL, 0, 0, 0),
(9, 'a', '123', 'ahihi@123', NULL, NULL, 0, 0, 0),
(12, 'aaa', '123', 'd@123', NULL, NULL, 0, 0, 0),
(13, 'Thiên', '123456', 'thiennnnnnnnnn@gmail.com', NULL, NULL, 0, 0, 0),
(20, 'Ahihi', '123456', '', 'dqeriiuoiruqwre', NULL, 1, 0, 0),
(21, 'Ahihi', '123456', 'vuquocthien8156@gmail.com', 'dqeriiuoiruqwre', 'img/avatavuquocthien8156@gmail.com.jpeg', 1, 0, 1),
(22, 'quuququ', '123456789', 'vuquocthien8156@gmail.com', 'ủepiwueriuqwpour', 'img/avatavuquocthien8156@gmail.com.jpeg', 1, 0, 1),
(23, 'nhungg', '123456', 'nhung@123', 'okk', 'img/avatanhung@123.jpeg', 0, 0, 0),
(24, 'Thien', '123456', 'vuquocthien8156@gmail.com', NULL, 'img/avatavuquocthien8156@gmail.com.jpeg', 1, 0, 1),
(25, 'Xuân Nhung', '154648487', 'sun.synk69@gmail.com', NULL, NULL, 0, 1, 0),
(26, 'Nhung', '0763198311', 'vuquocthien8156@gmail.com', '40  đường 4,Tam Phú,Thủ Đức,Hồ Chí Minh', NULL, 1, 0, 0),
(27, 'yyyy', '123456', 'vuquocthien8156@gmail.com', '45 ahihi,Tam Bình,Thủ Đức,Hồ Chí Minh', NULL, 1, 0, 0),
(28, 'aa', '123456', 'vuquocthien8156@gmail.com', '34 đường 2,Tam Bình,Thủ Đức,Hồ Chí Minh', NULL, 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_cu_the`
--

CREATE TABLE `loai_cu_the` (
  `ma_loai_cu_the` int(11) NOT NULL,
  `ten_loai_cu_the` varchar(150) NOT NULL,
  `ma_loai` int(11) NOT NULL,
  `link` text NOT NULL,
  `da_xoa` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loai_cu_the`
--

INSERT INTO `loai_cu_the` (`ma_loai_cu_the`, `ten_loai_cu_the`, `ma_loai`, `link`, `da_xoa`) VALUES
(1, 'Áo thun nam', 1, 'https://vn-test-11.slatic.net/p/7/bo-3-ao-thun-nam-body-co-tron-den-trang-xam-9215-2462394-e5ca1af88c60776aff93a47252a5b5d6-catalog.jpg_340x340q80.jpg_.webp', 0),
(2, 'Áo polo nam', 1, 'http://taru.vn/image/cache/data/product-5383/H21865-500x500.jpg', 0),
(3, 'Áo thun nữ', 2, 'http://tstfashion.com/wp-content/uploads/2018/05/ao-thun-nu-tay-lo-thoi-trang-99k.jpg', 0),
(4, 'Áo khoác nữ', 2, 'http://aokhoactreem.net/upload/sanpham/ao-khoac-nu-only-holy-story.jpg', 0),
(5, 'Áo ba lỗ nam', 1, 'http://jkshop.vn/wp-content/uploads/JA101-XS-S-M-L-XL-XXL-300x300.jpg', 0),
(6, 'Áo ba lỗ nữ', 2, 'http://tieudung.vn/upload_images/images/2018/06/26/ao-ba-lo-2.jpg', 0),
(7, 'Quần jean nữ', 3, 'http://file.hstatic.net/1000237083/file/923bcae0991d75432c0c_grande.jpg', 0),
(8, 'Quần jean nam', 4, 'http://dongphucmattana.vn/wp-content/uploads/2017/07/quan-jeans-nam-mattana-2.jpg', 0),
(9, 'Quần tây nữ', 3, 'https://thoitrangeva.vn/wp-content/uploads/2016/03/quan-nu-696x779.jpg', 0),
(10, 'Váy jean nữ', 5, 'http://thoitranggiaubunghq.com/wp-content/uploads/2017/05/90-400x400.jpg', 0),
(11, 'Áo somi nữ', 2, 'https://sw001.hstatic.net/10/138c510478e88c/ao-so-mi-theu__32__1024x1024.jpg', 0),
(12, 'Áo somi nam', 1, 'http://cdn.nhanh.vn/cdn/store/7136/artCT/15782/4.jpg', 0),
(13, 'Đầm nữ', 6, 'https://shopcat.vn/images/product/product_s574.jpg', 0),
(14, 'Giày cao gót', 8, 'http://giaygiavi.vn/wp-content/uploads/2016/10/giay-cao-got-cho-nu-dep.jpg', 0),
(15, 'Giày búp bê', 8, 'http://panora.vn/upload/images/giay-bup-be-bb2043.png', 0),
(16, 'Giày thể thao nữ', 8, 'https://cf.shopee.vn/file/6730c0ccbd38edbde53cdc39112b164a', 0),
(17, 'Giày lười nam', 7, 'https://tamanh.net/wp-content/uploads/2015/08/mua-giay-nam-o-ha-noi1.jpg', 0),
(18, 'Giày da nam', 7, 'http://product.hstatic.net/1000092380/product/giay-casual-nam-rozalo-rmg2127k-kaki-01.jpg', 0),
(19, 'Giày thể thao nam', 7, 'http://mabring.com/wp-content/uploads/2017/03/Giay-the-thao.png', 0),
(20, 'Túi xách nữ', 10, 'http://lazadan.vn/wp-content/uploads/2018/04/FADXE4MONC-001.jpg', 0),
(21, 'Ví da nam', 9, 'http://dathatcaocap.com/wp-content/uploads/2017/01/vi-da-nam-da-that-joshep-am.jpg', 0),
(22, 'Nón cói nữ', 12, 'https://chuistore.com/wp-content/uploads/2017/09/N%C3%93N-C%C3%93I-7.jpg', 0),
(23, 'Nón lưỡi chai nam', 11, 'http://thoitrangt3shop.com/wp-content/uploads/2018/05/e5ffc5d43103df5d8612.jpg', 0),
(24, 'Dây nịt da nam', 13, 'http://jokleather.com/wp-content/uploads/2018/01/daynitdajokleather-dn004.jpg', 0),
(25, 'Dây nịt nữ khóa búp', 14, 'http://www.ngoctue.com/admin/upload/products/NT5654IMG_0218.JPG', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_san_pham`
--

CREATE TABLE `loai_san_pham` (
  `ma_loai` int(11) NOT NULL,
  `ten_loai` varchar(150) NOT NULL,
  `loai_thoi_trang` int(11) NOT NULL,
  `da_xoa` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loai_san_pham`
--

INSERT INTO `loai_san_pham` (`ma_loai`, `ten_loai`, `loai_thoi_trang`, `da_xoa`) VALUES
(1, 'Áo Nam', 1, 0),
(2, 'Áo Nữ', 2, 0),
(3, 'Quần Nữ', 2, 0),
(4, 'Quần Nam', 1, 0),
(5, 'Váy Nữ', 2, 0),
(6, 'Đầm Nữ', 2, 0),
(7, 'Giày Nam', 1, 0),
(8, 'Giày Nữ', 2, 0),
(9, 'Túi Nam', 1, 0),
(10, 'Túi Nữ', 2, 0),
(11, 'Nón Nam', 1, 0),
(12, 'Nón Nữ', 2, 0),
(13, 'Dây nịt nam', 1, 0),
(14, 'Dây nịt nữ', 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_tai_khoan`
--

CREATE TABLE `loai_tai_khoan` (
  `ma_loai_tai_khoan` int(11) NOT NULL,
  `ten_loai_tai_khoan` varchar(150) CHARACTER SET utf8 NOT NULL,
  `da_xoa` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_tai_khoan`
--

INSERT INTO `loai_tai_khoan` (`ma_loai_tai_khoan`, `ten_loai_tai_khoan`, `da_xoa`) VALUES
(1, 'Admin', 0),
(2, 'Khách hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mau_sac`
--

CREATE TABLE `mau_sac` (
  `ma_mau` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_mau` varchar(50) CHARACTER SET utf8 NOT NULL,
  `da_xoa` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mau_san_pham`
--

CREATE TABLE `mau_san_pham` (
  `ma_san_pham` int(11) NOT NULL,
  `ma_mau` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `da_xoa` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `ma_san_pham` int(11) NOT NULL,
  `ten_san_pham` varchar(255) NOT NULL,
  `mo_ta` text NOT NULL,
  `gia_san_pham` int(11) NOT NULL,
  `url` text NOT NULL,
  `loai_san_pham` int(11) NOT NULL,
  `ton_kho` int(11) NOT NULL,
  `da_xoa` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`ma_san_pham`, `ten_san_pham`, `mo_ta`, `gia_san_pham`, `url`, `loai_san_pham`, `ton_kho`, `da_xoa`) VALUES
(1, 'Áo Thun Raglan', 'Thoải mái, rộng rãi', 100000, 'img/sp1.jpg', 1, 0, 0),
(2, 'Áo Polo nam Kappa', 'Vải thấm mồ hôi, mềm min', 200000, 'img/sp2.jpg', 2, 0, 0),
(3, 'Áo Polo chơi tennis nam', 'vải mát, mềm, thoải mái', 200000, 'img/sp3.jpg', 2, 0, 0),
(4, 'Áo Polo sọc ngang nam', 'vải đẹp, co giãn', 150000, 'img/sp4.png', 2, 0, 0),
(5, 'Áo Polo Nautica nam', 'đủ màu, vải co giãn', 200000, 'img/sp5.jpg', 2, 0, 0),
(6, 'Áo Polo Chelsea nam', 'co giãn, hút mồ hôi', 180000, 'img/sp6.jpg', 2, 0, 0),
(7, 'Áo thun nữ thu đông', 'đủ màu, co giãn', 150000, 'img/sp7.jpg', 3, 0, 0),
(8, 'Áo thun nữ sọc đen', 'vải mềm, mịn', 80000, 'img/sp8.jpg', 3, 0, 0),
(9, 'Áo thun nữ tay dài', 'vải mềm, co giãn, đủ size', 100000, 'img/sp9.jpg', 3, 0, 0),
(10, 'Áo thun nữ tay lỡ', 'vải mềm, mịn', 100000, 'img/sp10.jpg', 3, 0, 0),
(11, 'Áo khoác jean nữ', 'vải dày dặn, không khô cứng', 200000, 'img/sp11.png', 4, 0, 0),
(12, 'Áo khoác kaki nữ', 'vải mát, mềm mịn', 200000, 'img/sp12.jpg', 4, 0, 0),
(13, 'Áo khoác nữ chui đỏ', 'đủ màu và size', 150000, 'img/sp13.jpg', 4, 0, 0),
(14, 'Áo khoác nữ Sensorial', 'đủ màu và size', 250000, 'img/sp14.jpg', 4, 0, 0),
(15, 'Áo khoác nữ Adachi', 'vải đẹp, thoáng mát, không bay màu', 200000, 'img/sp15.jpg', 4, 0, 0),
(16, 'Áo ba lỗ nam sọc xanh', 'thoáng mát, vải mềm mịn', 150000, 'img/sp16.jpg', 5, 0, 0),
(17, 'Áo ba lỗ nam sọc', 'đủ màu và size', 150000, 'img/sp17.jpg', 5, 0, 0),
(18, 'Áo ba lỗ nũ tua rua', 'vải đẹp, chất liệu mềm mịn', 150000, 'img/sp18.jpg', 6, 0, 0),
(19, 'Áo ba lỗ trắng nữ', 'vải mát, mềm mịn', 80000, 'img/sp19.jpg', 6, 0, 0),
(20, 'Quần jean nữ ống rộng', 'vải dày, co giãn tốt', 180000, 'img/sp20.jpg', 7, 0, 0),
(21, 'Quần jeans nữ thêu hoa', 'vải thêu dày dặn, co giãn tốt', 200000, 'img/sp21.jpg', 7, 0, 0),
(22, 'Quần jeans nữ rách kiểu', 'vải đẹp, đủ size', 250000, 'img/sp22.png', 7, 0, 0),
(23, 'Quần jeans nữ ống loe', 'vải co giãn tốt, mềm mịn', 250000, 'img/sp23.jpg', 7, 0, 0),
(24, 'Quần jeans nam Pull & Pear', 'chất vải dày dặn, đủ size', 300000, 'img/sp24.jpg', 8, 0, 0),
(25, 'Quần jean nam trơn', 'đủ size, ôm dáng', 300000, 'img/sp25.png', 8, 0, 0),
(26, 'Quần jean nam ống ôm', 'ôm dáng, đủ size', 350000, 'img/sp26.jpg', 8, 0, 0),
(27, 'Váy jean nữ dài', 'vải dày, co giãn', 150000, 'img/sp27.jpg', 10, 0, 0),
(28, 'Váy jeans nữ xòe', 'đủ size, vải dày dặn', 220000, 'img/sp28.jpg', 10, 0, 0),
(29, 'Váy jean nữ xanh xòe', 'vải đẹp, mềm mịn, đủ size', 180000, 'img/sp29.jpg', 10, 0, 0),
(30, 'Quần công sở ống đứng', 'vải dày dặn, co giãn tốt', 200000, 'img/sp30.jpg', 9, 0, 0),
(31, 'Quần âu nữ đen', 'đủ size, vải mềm mịn', 220000, 'img/sp31.jpg', 9, 0, 0),
(32, 'Quần tây công sở', 'chất liệu mềm mịn, co giãn tốt', 240000, 'img/sp32.jpg', 9, 0, 0),
(33, 'Áo somi chấm bi nữ', 'vải mỏng, thoáng mát, đủ size', 200000, 'img/sp33.jpg', 11, 0, 0),
(34, 'Áo somi nữ forever', 'đủ size, vải mềm mịn', 220000, 'img/sp34.jpeg', 11, 0, 0),
(35, 'Áo somi trắng nữ', 'vải co giãn, thấm hút tốt', 220000, 'img/sp35.gif', 11, 0, 0),
(36, 'Áo somi tay ngắn nữ', 'vải đẹp, đủ size và màu', 150000, 'img/sp36.jpg', 11, 0, 0),
(37, 'Áo somi nữ kẻ sọc', 'vải đẹp, mền mịn', 120000, 'img/sp37.jpg', 11, 0, 0),
(38, 'Áo somi nữ tay dài', 'vải dày dặn, thấm hút tốt', 220000, 'img/sp38.jpg', 11, 0, 0),
(39, 'Áo somi nữ thêu tay', 'vải co giãn, thấm hút mồ hôi', 200000, 'img/sp39.jpg', 11, 0, 0),
(40, 'Áo somi caro nữ', 'chất vải dày, mềm mịn', 180000, 'img/sp40.jpg', 11, 0, 0),
(41, 'Áo somi thắt nơ', 'vải mỏng, đủ size', 150000, 'img/sp41.jpg', 11, 0, 0),
(42, 'Áo somi caro tay lỡ', 'nhiều màu, nhiều size', 120000, 'img/sp42.jpg', 11, 0, 0),
(43, 'Áo somi form rộng', 'đủ size, vải mịn, mát', 200000, 'img/sp43.jpg', 11, 0, 0),
(44, 'Áo somi nữ caro', 'nhiều size, vải mỏng mịn', 150000, 'img/sp44.jpeg', 11, 0, 0),
(45, 'Áo somi nam hàn quốc', 'vải dày, không khô ráp', 200000, 'img/sp45.jpg', 12, 0, 0),
(46, 'Áo somi trắng nam', 'đủ size, vải co giãn mềm mịn', 220000, 'img/sp46.jpg', 12, 0, 0),
(47, 'Áo somi nam cam', 'vải dày, không nhăn, đủ size', 250000, 'img/sp47.jpg', 12, 0, 0),
(48, 'Áo somi caro nam nữ', 'đủ size, nhiều màu khác nhau', 180000, 'img/sp48.jpg', 12, 0, 0),
(49, 'Somi nam họa tiết', 'vải đẹp, đủ màu và size', 280000, 'img/sp49.jpg', 12, 0, 0),
(50, 'Somi nam họa tiết đen', 'nhiều họa tiết khác nhau, vải dày', 250000, 'img/sp50.jpg', 12, 0, 0),
(51, 'Somi nam công sở', 'vải thấm hút mồ hôi, đủ size', 180000, 'img/sp51.jpg', 12, 0, 0),
(52, 'Somi nam đen tay dài', 'vải dày, tay dài, đủ size', 200000, 'img/sp52.jpg', 12, 0, 0),
(53, 'Đầm xòe Channel', 'đầm thiết kế với vải và mẫu mã độc đáo', 250000, 'img/sp53.jpg', 13, 0, 0),
(54, 'Đầm xòe rớt vai xanh', 'Với thiết kế đơn giản và sang trọng, đầm tôn dáng và luon có hàng sẵn', 300000, 'img/sp54.jpg', 13, 0, 0),
(55, 'Đầm xòe tiểu thư', 'vải dày, thiết kế sang trọng', 300000, 'img/sp55.jpg', 13, 0, 0),
(56, 'Đầm in hạt lựu', 'đầm thiết kế in hạt đơn giản sang trọng', 320000, 'img/sp56.jpg', 13, 0, 0),
(57, 'Đầm nơ cao cấp', 'đầm thiết kế với nơ đơn giản tôn lên dáng của bạn', 250000, 'img/sp57.jpg', 13, 0, 0),
(58, 'Đầm cát hàn tay dài', 'đầm với thiết kế hàn quốc, đơn giản, sang trọng', 300000, 'img/sp58.png', 13, 0, 0),
(59, 'Đầm xếp ly cổ V', 'đầm với thiết kế đơn giản, tôn dáng và sang trọng', 320000, 'img/sp59.jpg', 13, 0, 0),
(60, 'Đầm xòe cổ somi', 'với thiết kế cổ somi sẽ làm tôn dáng cho chiếc đầm của bạn', 400000, 'img/sp60.jpg', 13, 0, 0),
(61, 'Đầm in hoa 3D', 'thiết kế in 3d sang trọng, quí phái', 350000, 'img/sp61.png', 13, 0, 0),
(62, 'Đầm thiết kế trễ vai', 'kiểu trễ vai quyến rũ và sang trọng', 400000, 'img/sp62.jpg', 13, 0, 0),
(63, 'Giày cao gót hạt', 'đính hạt làm cho giày trở nên sang trọng, tinh tế', 300000, 'img/sp63.jpg', 14, 0, 0),
(64, 'Giày cao gót hàn quốc', 'giày cao gót thiết kế theo phong cách hàn quốc, sành điẹu và quý phái', 350000, 'img/sp64.jpg', 14, 0, 0),
(65, 'Giày cao gót đính hột', 'đính hột làm điểm nhấn cho đôi giày của bạn', 400000, 'img/sp65.jpg', 14, 0, 0),
(66, 'Giày cao gót hồng hàn quốc', 'thiết kế theo phong cách hàn quốc trẻ trung', 360000, 'img/sp66.jpg', 14, 0, 0),
(67, 'Giày búp bê hàn quốc', 'thiết kế theo phong cách hàn quốc trẻ trung', 200000, 'img/sp67.png', 15, 0, 0),
(68, 'Giày búp bê nơ', 'thiết kế nơ làm tôn đôi giày của bạn', 180000, 'img/sp68.jpg', 15, 0, 0),
(69, 'Giày búp bê đỏ gạch', 'thiết kế đơn giản, sang trọng', 200000, 'img/sp69.jpg', 15, 0, 0),
(70, 'Giày thể thao nữ hồng', 'đủ size, mềm không gây đau chân', 250000, 'img/sp70.png', 16, 0, 0),
(71, 'Giày bata nữ đen đỏ', 'đủ size, mềm không gây đau chân', 300000, 'img/sp71.jpg', 16, 0, 0),
(72, 'Giày bata hello kitty', 'giày thiết kế theo phong cách trẻ trung năng động', 280000, 'img/sp72.jpg', 16, 0, 0),
(73, 'Giày lười đen nam', 'thiết kế theo phong cách trẻ trung, năng động', 350000, 'img/sp73.jpg', 17, 0, 0),
(74, 'Giày da nam buộc dây', 'thiết kế theo phong cách mới mẻ, trẻ trung', 320000, 'img/sp74.png', 18, 0, 0),
(75, 'Giày thể thao nam', 'thiết kế phong cách mới mẻ, trẻ trung', 350000, 'img/sp75.png', 19, 0, 0),
(76, 'Giày da nam', 'thiết kế da trẻ trung, năng động', 280000, 'img/sp76.jpg', 18, 0, 0),
(77, 'Giày slip on nam xanh', 'thiết kế trẻ trung, năng động', 290000, 'img/sp77.jpg', 17, 0, 0),
(78, 'Túi xách Dambaoly', 'cá tính, trẻ trung, năng động', 300000, 'img/sp78.png', 20, 0, 0),
(79, 'Túi xách nữ kena', 'thiết kế đơn giản và sang trọng', 320000, 'img/sp79.jpg', 20, 0, 0),
(80, 'Túi xách nữ Juno', 'nhãn hiệu nổi tiếng, thiết kế đơn giản sang trọng', 350000, 'img/sp80.jpg', 210, 0, 0),
(81, 'Túi xách quảng châu', 'hàng quảng châu với phong cách phù hợp vưới giới trẻ', 400000, 'img/sp81.jpeg', 20, 0, 0),
(82, 'Túi Vicky xanh', 'cá tính, trẻ trung, năng dộng', 360000, 'img/sp82.jpg', 20, 0, 0),
(83, 'Ví nữ parino hồng', 'đơn giản, sang trọng và tinh tế', 200000, 'img/sp83.jpg', 20, 0, 0),
(84, 'Ví nữ đủ màu', 'đa dạng về màu sắc, dễ dàng lựa chọn', 280000, 'img/sp84.jpg', 20, 0, 0),
(85, 'Ví nữ in hoa', 'thiết kế in hoa đơn giản và sang trọng', 280000, 'img/sp85.jpg', 20, 0, 0),
(86, 'Ví nam joseph', 'chất liệu da sang trọng, cao cấp', 250000, 'img/sp86.jpg', 21, 0, 0),
(87, 'Ví da nam Amani', 'chất liệu da sang trọng, cao cấp', 320000, 'img/sp87.jpg', 21, 0, 0),
(88, 'Ví nam vân gợn sóng', 'thiết kế vân gợn sóng độc đáo, sang trọng', 320000, 'img/sp88.jpg', 21, 0, 0),
(89, 'Nón Gucci cao cấp', 'nón chất liệu cáo cấp, sang trọng', 280000, 'img/sp89.jpg', 23, 0, 0),
(90, 'Mũ lưỡi chai EXO', 'Thiết kế theo phong cách hàn quốc trẻ trung năng động', 250000, 'img/sp90.jpg', 23, 0, 0),
(91, 'Nón Adidas trắng', 'Thiết kế năng động phù hợp vưới mọi lứa tuổi', 280000, 'img/sp91.jpg', 23, 0, 0),
(92, 'Nón cói đi biển', 'thiết kế đơn giản, chất liệu cói phù hợp đi biển, du lịch', 280000, 'img/sp92.jpg', 22, 0, 0),
(93, 'Mũ vành cong', 'thiết kế dơn giản quí phái cho các chị em', 240000, 'img/sp93.jpg', 22, 0, 0),
(94, 'Nón nam Supreme', 'thiết kế trẻ trung năng động', 200000, 'img/sp94.jpg', 23, 0, 0),
(95, 'Nón nữ rộng vành xanh', 'thiết kế sang trọng quí phái cho các chị em', 220000, 'img/sp95.jpg', 22, 0, 0),
(96, 'Dây nịt da nam', 'chất liệu da bền, không sỉ màu', 240000, 'img/sp96.jpg', 24, 0, 0),
(97, 'Dây nịt nam da bò', 'thiết kế sang trọng, da thật', 320000, 'img/sp97.jpg', 24, 0, 0),
(98, 'Dây nịt nữ kháo búp', 'Thiết kế khóa búp tinh tế, độc đáo', 220000, 'img/sp98.jpg', 25, 0, 0),
(99, 'Dây nịt nữ đủ màu', 'Thiết kế đủ màu sang trọng, đơn giản và bền', 180000, 'img/sp99.png', 25, 0, 0),
(100, 'Dây nịt nữ bản bự', 'thiết kế bản to cá tính, năng động', 220000, 'img/sp100.png', 25, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham_yeu_thich`
--

CREATE TABLE `san_pham_yeu_thich` (
  `ma_san_pham` int(11) NOT NULL,
  `khach_hang` bigint(20) NOT NULL,
  `bo_thich` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham_yeu_thich`
--

INSERT INTO `san_pham_yeu_thich` (`ma_san_pham`, `khach_hang`, `bo_thich`) VALUES
(1, 1, 0),
(1, 3, 1),
(1, 23, 0),
(2, 3, 1),
(2, 23, 0),
(3, 3, 1),
(3, 23, 0),
(4, 3, 1),
(5, 3, 0),
(6, 3, 0),
(7, 3, 0),
(8, 3, 0),
(9, 3, 0),
(10, 3, 0),
(11, 3, 1),
(12, 3, 1),
(13, 3, 1),
(35, 3, 1),
(38, 3, 1),
(94, 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `mat_khau` varchar(150) CHARACTER SET utf8 NOT NULL,
  `loai_tai_khoan` int(1) NOT NULL,
  `da_xoa` int(1) NOT NULL,
  `xac_thuc` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tai_khoan`
--

INSERT INTO `tai_khoan` (`email`, `mat_khau`, `loai_tai_khoan`, `da_xoa`, `xac_thuc`) VALUES
('admin@gmail.com', '202cb962ac59075b964b07152d234b70', 1, 0, 1),
('ahihi@123', 'c4ca4238a0b923820dcc509a6f75849b', 2, 0, 1),
('d@123', 'c4ca4238a0b923820dcc509a6f75849b', 2, 0, 1),
('nhung@123', 'c4ca4238a0b923820dcc509a6f75849b', 2, 0, 1),
('rr@e', '65ded5353c5ee48d0b7d48c591b8f430', 2, 0, 1),
('sun.synk69@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 2, 0, 1),
('t@123', 'c4ca4238a0b923820dcc509a6f75849b', 2, 0, 1),
('thien1@gmail.com', '202cb962ac59075b964b07152d234b70', 2, 0, 1),
('thien7@123', 'c4ca4238a0b923820dcc509a6f75849b', 2, 0, 1),
('thien@123', '202cb962ac59075b964b07152d234b70', 2, 0, 1),
('thien@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 2, 0, 1),
('thiennnnnnnnnn@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 2, 0, 1),
('vuquocthien8156@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 2, 0, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD PRIMARY KEY (`ma_don_hang`,`ma_san_pham`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`ma_don_hang`);

--
-- Chỉ mục cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD PRIMARY KEY (`khach_hang`,`ma_san_pham`);

--
-- Chỉ mục cho bảng `hinh_anh_san_pham`
--
ALTER TABLE `hinh_anh_san_pham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loai_cu_the`
--
ALTER TABLE `loai_cu_the`
  ADD PRIMARY KEY (`ma_loai_cu_the`),
  ADD KEY `ma_loai` (`ma_loai`);

--
-- Chỉ mục cho bảng `loai_san_pham`
--
ALTER TABLE `loai_san_pham`
  ADD PRIMARY KEY (`ma_loai`);

--
-- Chỉ mục cho bảng `loai_tai_khoan`
--
ALTER TABLE `loai_tai_khoan`
  ADD PRIMARY KEY (`ma_loai_tai_khoan`);

--
-- Chỉ mục cho bảng `mau_sac`
--
ALTER TABLE `mau_sac`
  ADD PRIMARY KEY (`ma_mau`);

--
-- Chỉ mục cho bảng `mau_san_pham`
--
ALTER TABLE `mau_san_pham`
  ADD PRIMARY KEY (`ma_san_pham`,`ma_mau`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`ma_san_pham`),
  ADD KEY `loai_san_pham` (`loai_san_pham`);

--
-- Chỉ mục cho bảng `san_pham_yeu_thich`
--
ALTER TABLE `san_pham_yeu_thich`
  ADD PRIMARY KEY (`ma_san_pham`,`khach_hang`);

--
-- Chỉ mục cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `ma_don_hang` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `hinh_anh_san_pham`
--
ALTER TABLE `hinh_anh_san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `loai_cu_the`
--
ALTER TABLE `loai_cu_the`
  MODIFY `ma_loai_cu_the` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `loai_san_pham`
--
ALTER TABLE `loai_san_pham`
  MODIFY `ma_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `ma_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
