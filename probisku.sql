-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 02. Juli 2019 jam 06:18
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ift2c`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `idadmin` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `usernm` varchar(50) NOT NULL,
  `passwrd` varchar(60) NOT NULL,
  UNIQUE KEY `id` (`idadmin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`idadmin`, `nama`, `usernm`, `passwrd`) VALUES
(1, 'Anisa', 'ift1', '83dc37ffcd29d35d29bab8ce3258bd61'),
(2, 'Fairuz', 'ift2', 'c2da416bf6de297b7d3daf8748f11077');

-- --------------------------------------------------------

--
-- Struktur dari tabel `instruktur`
--

CREATE TABLE IF NOT EXISTS `instruktur` (
  `kodeIns` int(11) NOT NULL AUTO_INCREMENT,
  `namaIns` varchar(50) NOT NULL,
  `emailIns` varchar(50) NOT NULL,
  `hpIns` varchar(15) NOT NULL,
  `fotoIns` varchar(40) NOT NULL,
  PRIMARY KEY (`kodeIns`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data untuk tabel `instruktur`
--

INSERT INTO `instruktur` (`kodeIns`, `namaIns`, `emailIns`, `hpIns`, `fotoIns`) VALUES
(5, 'Makinudin', 'makinudin@gmail.com', '085678654123', 'a.jpg'),
(10, 'Ahmadi Yuliono', 'ahmad@gmail.com', '085774543227', 'BZsLOS.jpg'),
(15, 'Puji Astuti', 'puji@gmail.com', '085980712345', 'c.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE IF NOT EXISTS `matakuliah` (
  `kodeMK` varchar(5) NOT NULL,
  `NamaMK` varchar(75) NOT NULL,
  `sks` int(11) NOT NULL,
  `kodeIns` int(11) NOT NULL,
  PRIMARY KEY (`kodeMK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kodeMK`, `NamaMK`, `sks`, `kodeIns`) VALUES
('ALG1', 'Algoritma', 4, 20),
('BID', 'Bahasa Inggris Dasar', 2, 0),
('DSK', 'Dasar Sistem Komputer', 4, 15),
('PJK', 'Praktek Jaringan Komputer', 2, 10),
('VB2', 'Visual Basic Lanjut', 4, 10),
('WEB2', 'Pemrograman WEB 2 (PHP)', 4, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhsw`
--

CREATE TABLE IF NOT EXISTS `mhsw` (
  `NIM` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `Nama` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `Foto` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT 'no foto.jpg',
  `IDProg` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Kelamin` char(3) COLLATE latin1_general_ci DEFAULT NULL,
  `TempatLahir` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `TanggalLahir` date DEFAULT NULL,
  `Alamat` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `Kota` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Handphone` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci DEFAULT 'N',
  PRIMARY KEY (`NIM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `mhsw`
--

INSERT INTO `mhsw` (`NIM`, `Nama`, `Foto`, `IDProg`, `Kelamin`, `TempatLahir`, `TanggalLahir`, `Alamat`, `Kota`, `Handphone`, `Email`, `aktif`) VALUES
('101011', 'Syaiful Arifin', 'nopic.jpg', '3', 'L', 'Malang', '1990-05-08', '', '', '', '', 'Y'),
('103004', 'Dimas Aditya Pratama', 'nopic.jpg', '3', 'L', 'Malang', '1991-04-27', 'Jl. Masjid Ds. Pojok Dampit', 'Malang', '', '', 'Y'),
('103006', 'Gatot Supriono', 'nopic.jpg', '3', 'L', 'Malang', '1985-07-05', 'Umbul Rejo Ds. Sidodadi ', '', '', '', 'Y'),
('103001', 'Aries Eka Raharja', 'nopic.jpg', '3', 'L', 'Malang', '1989-02-25', '', '', '', '', 'Y'),
('101009', 'PARDI SUWITO', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('101008', 'Oon Andar Cahyono', 'nopic.jpg', '3', 'L', 'Malang', '1989-08-12', '', '', '', '', 'Y'),
('103007', 'Parianto', 'nopic.jpg', '3', 'L', 'Malang', '1990-08-28', '', '', '', '', 'Y'),
('103013', 'Yudi Harsoyo', 'nopic.jpg', '3', 'L', 'Banyuwangi', '1973-07-09', '', '', '081245817706', '', 'Y'),
('113001', 'Agus Iwan Iswanto', 'nopic.jpg', '3', 'L', 'Malang', '1981-08-15', '', '', '', '', 'Y'),
('113002', 'Aris Prihandoko', 'nopic.jpg', '3', 'L', 'Malang', '1988-02-12', '', '', '', '', 'Y'),
('113005', 'Miftahul Risky', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('113006', 'Sugihartono', 'nopic.jpg', '3', 'L', 'Malang', '1988-09-13', '', '', '', '', 'Y'),
('111004', 'Kusbudi Nanang T', 'nopic.jpg', '3', 'L', 'Banyuwangi', '1976-03-12', '', '', '', '', 'Y'),
('111009', 'Ridwan Fatoni', 'nopic.jpg', '3', 'L', 'Malang', '1988-07-17', '', '', '', '', 'Y'),
('112009', 'Yuanita Purwaningdiah', 'nopic.jpg', '3', 'P', 'Malang', '1989-01-14', '', '', '', '', 'Y'),
('112005', 'Lista Priyatnoko', 'nopic.jpg', '3', 'L', 'Malang', '1988-09-25', '', '', '', '', 'Y'),
('123001', 'Achmad Zainudin', 'nopic.jpg', '3', 'L', 'Malang', '1991-07-12', '', '', '', '', 'Y'),
('123003', 'Eko Yudi Setyawan', 'nopic.jpg', '3', 'L', 'Malang', '1994-01-24', '', '', '', '', 'Y'),
('123005', 'Faseh Dimas Prasetya', 'nopic.jpg', '3', 'L', 'Banyuwangi', '1991-05-13', '', '', '', '', 'Y'),
('123006', 'Moh. Misbahul Munir', 'nopic.jpg', '3', 'L', 'Malang', '1992-01-01', '', '', '', '', 'Y'),
('123007', 'Dwi Kusharianto', 'nopic.jpg', '3', 'L', 'Malang', '1988-06-27', '', '', '', '', 'Y'),
('122001', 'Billy Prima Nugroho', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('122003', 'Deny Priyudo Saputro', 'nopic.jpg', '3', 'L', 'Banyuwangi', '1988-04-09', '', '', '', '', 'Y'),
('122004', 'Lizatul Khafidhoh', 'nopic.jpg', '3', 'P', 'Malang', '1993-04-01', '', '', '', '', 'Y'),
('122005', 'Linda Rezki Mei S', 'nopic.jpg', '3', 'P', 'Malang', '1992-05-28', '', '', '', '', 'Y'),
('121001', 'Aprianto Rudi S', 'nopic.jpg', '3', 'L', 'Bekasi', '1991-04-10', '', '', '', '', 'Y'),
('121009', 'Rositawati', 'nopic.jpg', '3', 'P', 'Malang', '1991-11-27', '', '', '', '', 'Y'),
('121010', 'Yusuf Setyawan', 'nopic.jpg', '3', 'L', 'Malang', '1991-09-24', '', '', '', '', 'Y'),
('133001', 'Achmad Heri Afrianto', 'nopic.jpg', '3', 'L', 'Malang', '1992-04-24', '', '', '', '', 'Y'),
('133002', 'Achmad Rijal Fitrhoni', 'nopic.jpg', '3', 'L', 'Lumajang', '1994-09-24', '', '', '082231277570', 'achmadrijalfitroni@gmail.com', 'Y'),
('133003', 'Agung Kurniawan', 'nopic.jpg', '3', 'L', 'Jember', '1994-09-27', '', '', '083833353492', 'kurniawan.agung27@gmail.com', 'Y'),
('133004', 'Agung Wibowo', 'nopic.jpg', '3', 'L', 'Blitar', '1990-03-20', '', '', '085730814257', 'agung.wibowo333@gmail.com', 'Y'),
('133005', 'Ahmad Syukron', 'nopic.jpg', '3', 'L', 'Malang', '1989-05-13', '', '', '', '', 'Y'),
('133006', 'Ardani Kris Septyandi', 'nopic.jpg', '3', 'L', 'Banyuwangi', '1993-09-14', '', '', '', '', 'Y'),
('133007', 'Bayu Putra Ramadhan ', 'nopic.jpg', '3', 'L', 'Malang', '1994-03-02', '', '', '', '', 'Y'),
('133008', 'Dedy Widianto', 'nopic.jpg', '3', 'L', 'Malang', '1994-12-30', '', '', '082243442942', 'dyde_widi@yahoo.com', 'Y'),
('133009', 'Eka Kurniawan Putra', 'nopic.jpg', '3', 'L', 'Singaraja', '1994-11-05', '', '', '082232842755', 'ekakurniawan1994@gmail.com', 'Y'),
('133010', 'Eko Prasetyo', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('133011', 'Haidhar Al Habsie', 'nopic.jpg', '3', 'L', 'Malang', '1995-01-20', '', '', '', '', 'Y'),
('133012', 'Imam Syakhroni', 'nopic.jpg', '3', 'L', 'Malang', '1992-10-22', '', '', '', '', 'Y'),
('133013', 'Kharisma Dian Pratama', 'nopic.jpg', '3', 'L', 'Malang', '1992-06-15', '', '', '', '', 'Y'),
('133014', 'Muhammad Khoirul Anam', 'nopic.jpg', '3', 'L', 'Malang', '1993-04-01', '', '', '089514867005', '', 'Y'),
('133015', 'Mochamad Iqbal Faris', 'nopic.jpg', '3', 'L', 'Malang', '1992-04-18', '', '', '', '', 'Y'),
('133016', 'Nur Wahyudin', 'nopic.jpg', '3', 'L', 'Malang', '1987-02-02', '', '', '', '', 'Y'),
('133017', 'Ruldias', 'nopic.jpg', '3', 'L', 'Banyuwangi', '1992-08-04', '', '', '', '', 'Y'),
('133018', 'Rudi Al-Ansori', 'nopic.jpg', '2', 'L', 'Malang', '1993-01-22', '', '', '', '', 'Y'),
('133019', 'Solihan', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('133021', 'Wadagdya Manggala Yoga', 'nopic.jpg', '3', 'L', 'Malang', '1995-04-10', '', '', '', '', 'Y'),
('133022', 'Yuke Eko Prasetyo', 'nopic.jpg', '3', 'L', 'Malang', '1992-10-16', '', '', '', '', 'Y'),
('133023', 'Firly Firmansyah', 'nopic.jpg', '3', 'L', 'Surabaya', '1992-04-14', '', '', '', '', 'Y'),
('133024', 'Indra Oktavianto', 'nopic.jpg', '3', 'L', 'Malang', '1993-10-30', '', '', '', '', 'Y'),
('133025', 'Sugi Setiawan', 'nopic.jpg', '2', 'L', 'Malang', '1990-11-09', '', '', '', '', 'Y'),
('133026', 'Sigit Prasetyo', 'nopic.jpg', '3', 'L', 'Malang', '1995-05-30', '', '', '', '', 'Y'),
('131068', 'Didik Suryadi', 'nopic.jpg', '3', 'L', 'Malang', '1983-10-11', '', '', '', '', 'Y'),
('131001', 'Aan Farisi', 'nopic.jpg', '2', 'L', 'Malang', '1982-03-29', '', '', '082232179900', 'farisaan@gmail.com', 'Y'),
('131002', 'Agus Setyawan', 'nopic.jpg', '3', 'L', 'Malang', '1989-08-07', '', '', '', '', 'Y'),
('131003', 'Bayu Dwi Febrianto', 'nopic.jpg', '3', 'L', 'Tulung Agung ', '1993-02-16', '', '', '085755168618', 'febribayuu@gmail.com', 'Y'),
('131004', 'Burhanudin Yusuf Efendi', 'nopic.jpg', '2', 'L', 'Malang', '1994-06-28', '', '', '', '', 'Y'),
('131005', 'Radian Septa Hariyanto', 'nopic.jpg', '3', 'L', 'Surabaya', '1992-09-15', '', '', '', '', 'Y'),
('131006', 'Ronal Aldi Arvianto', 'nopic.jpg', '3', 'L', 'Malang', '1990-12-08', '', '', '', '', 'Y'),
('131007', 'S. Agus Djaswadi', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('132003', 'Retna Ekawati', 'nopic.jpg', '3', 'P', 'Malang', '1986-03-28', '', '', '', '', 'Y'),
('143001', 'Adi Candra Kusuma', 'nopic.jpg', '3', 'L', 'Malang', '1992-09-17', '', '', '081945784328', 'adi.kochok@gmail.com', 'Y'),
('143002', 'Angga Riky Feri D', 'nopic.jpg', '3', 'L', 'Malang', '1995-01-28', '', '', '082247428928', '', 'Y'),
('143003', 'Deby Putra Pratama', 'nopic.jpg', '3', 'L', 'Malang', '1993-01-27', '', '', '085755636518', 'debypoetra93@gmail.com', 'Y'),
('143004', 'Eko Dwi Cahyono', 'nopic.jpg', '3', 'L', 'Malang', '1996-03-21', '', '', '', '', 'Y'),
('143005', 'Jaya Setiawira', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('143006', 'Nuriyono', 'nopic.jpg', '3', 'L', 'Malang', '1969-12-24', '', '', '', '', 'Y'),
('143007', 'Pratama Romadyansyah', 'nopic.jpg', '3', 'L', 'Surabaya', '1993-03-14', '', '', '082257741362', '', 'Y'),
('143008', 'Prima Wahyu Ubaidillah', 'nopic.jpg', '2', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('143009', 'Shalahuddin Rizki Abdullah', 'nopic.jpg', '3', 'L', 'Malang', '1994-08-17', '', '', '', '', 'Y'),
('143010', 'Teddy Wintyar Nalindra', 'nopic.jpg', '3', 'L', 'Pasuruan', '1991-12-02', '', '', '', '', 'Y'),
('143011', 'Tomy Samudra', 'nopic.jpg', '3', 'L', 'Malang', '1994-08-21', '', '', '', '', 'Y'),
('143012', 'Yosafat Riyan Wuragil', 'nopic.jpg', '3', 'L', 'Malang', '1994-03-28', '', '', '081281893612', 'yosariyan12@gmail.com', 'Y'),
('142001', 'Heri Widodo', 'nopic.jpg', '2', 'L', 'Malang', '1990-12-16', '', '', '', '', 'Y'),
('142002', 'Mufti Min Izatin Purnamawati', 'nopic.jpg', '3', 'P', 'Malang', '1993-10-28', '', '', '', '', 'Y'),
('142003', 'Nurul Ulin Hikmah', 'nopic.jpg', '2', 'P', 'Malang', '1997-03-08', '', '', '', '', 'Y'),
('142004', 'Siti Ida Maida', 'nopic.jpg', '3', 'P', 'Malang', '1995-05-05', '', '', '', '', 'Y'),
('141001', 'Bagus Darmawan', 'nopic.jpg', '3', 'L', 'Surabaya', '1996-05-24', '', '', '', '', 'Y'),
('141002', 'Bagus Yonathan', 'nopic.jpg', '3', 'L', 'Malang', '1995-03-02', '', '', '', '', 'Y'),
('141003', 'Burhanuddin Yusuf Effendi', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('141004', 'Didik Setiawan', 'nopic.jpg', '3', 'L', 'Malang', '1989-02-28', '', '', '', '', 'Y'),
('141005', 'Dio Alif Aminulloh', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('141006', 'Vechy Tornado Lahinta', 'nopic.jpg', '3', 'L', 'Malang', '1989-02-21', '', '', '', '', 'Y'),
('141007', 'Yunis Candra', 'nopic.jpg', '3', 'L', 'Malang', '1988-12-19', '', '', '', '', 'Y'),
('141056', 'Faisal Lutfi', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('141057', 'Adi Suprayitno', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('141058', 'Septian Yustyana Putra', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('153001', 'Aji Agung Prabowo', 'nopic.jpg', '2', 'L', 'Malang', '1996-07-16', '', '', '', '', 'Y'),
('153002', 'Ahmad Nurkholis', 'nopic.jpg', '3', 'L', 'Malang', '1997-03-23', '', '', '', '', 'Y'),
('153003', 'Anaz Dwi Pangestu', 'nopic.jpg', '3', 'L', 'Malang', '1996-08-03', '', '', '081259300044', 'ankawiragearum@gmail.com', 'Y'),
('153004', 'Andika Surya Pratama', 'nopic.jpg', '3', 'L', 'Surabaya', '1996-05-11', '', '', '', '', 'Y'),
('153005', 'Arif Stya Wira Laksana', 'nopic.jpg', '2', 'L', 'Malang', '1992-01-05', '', '', '', '', 'Y'),
('153006', 'Haris Sholih Putra', 'nopic.jpg', '2', 'L', 'Malang', '1993-05-05', '', '', '081233945146', 'haris2p18@gmail.com', 'Y'),
('153007', 'Hengky Kusuma Brahmana P', 'nopic.jpg', '3', 'L', 'Surabaya', '1997-04-25', '', '', '', '', 'Y'),
('153008', 'Ilham Galang Pamungkas', 'nopic.jpg', '2', 'L', 'Malang', '1997-06-14', '', '', '', '', 'Y'),
('153009', 'Luqman Firmansyah', 'nopic.jpg', '3', 'L', 'Malang', '1990-12-27', '', '', '', '', 'Y'),
('153010', 'M. Ali Muksin', 'nopic.jpg', '2', 'L', 'Malang', '1993-03-02', '', '', '', '', 'Y'),
('153011', 'Rukey Hidayat', 'nopic.jpg', '3', 'L', 'Sidoarjo', '1996-05-22', '', '', '082293047177', 'rukylast587@gmail.com', 'Y'),
('153012', 'Sunarko', 'nopic.jpg', '3', 'L', 'Malang', '1984-09-08', '', '', '', '', 'Y'),
('153013', 'Taufan Dwi Cahyo', 'nopic.jpg', '3', 'L', 'Malang', '1992-04-17', '', '', '085755769269', 'tupandwicahyo@gmail.com', 'Y'),
('153014', 'Yudi Ardianto', 'nopic.jpg', '3', 'L', 'Malang', '1996-06-30', '', '', '085851143662', 'yudi.arema.3911@gmail.com', 'Y'),
('152001', 'Ashifa Rahmawati', 'nopic.jpg', '2', 'P', 'Banyuwangi', '1997-04-05', '', '', '089639052321', 'fafa.ashifa@yahoo.com', 'Y'),
('152002', 'Nuschan Nurin Chaumilah', 'nopic.jpg', '3', 'P', 'Malang', '1992-08-14', '', '', '087859331902', 'nurinchaumilah@gmail.com', 'Y'),
('151001', 'Alfanudin', 'nopic.jpg', '3', 'L', 'Malang', '1997-12-28', '', '', '081515434070', '', 'Y'),
('151002', 'Jaenal Alhimsa', 'nopic.jpg', '3', 'L', 'Malang', '1996-08-25', '', '', '081553938070', 'zainalalhimsa@gmail.com', 'Y'),
('151003', 'Luqman Andrews', 'nopic.jpg', '3', 'L', 'Malang', '1996-10-06', '', '', '081233119201', 'andrewsgombez@gmail.com', 'Y'),
('151004', 'Tri Rindi Kusumawati', 'nopic.jpg', '3', 'L', 'Malang', '1997-07-31', '', '', '081249776783', 'erilrindy@yahoo.com', 'Y'),
('163001', 'Ahmad Khoirul Anam', 'nopic.jpg', '3', 'L', 'Surabaya', '1997-03-30', '', '', '082231486259', 'damhaanam@gmail.com', 'Y'),
('163002', 'Gaguk Eka Prastya', 'nopic.jpg', '3', 'L', 'Sidoarjo', '1985-08-06', '', '', '085851331791', 'gagukprastya06@gmail.com', 'Y'),
('163003', 'Indra Wahyudi', 'nopic.jpg', '3', 'L', 'Malang', '1984-05-07', '', '', '081233944622', 'andra.kms@gmail.com', 'Y'),
('163004', 'M. Arisaul Amin', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('163005', 'Moch. Yusuf Effendi', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('163006', 'M. Ihya Ulumuddin', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('163007', 'Nur Rizal Arif Hidayat', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('163008', 'Ricky Pratamansa', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('163009', 'Surateman', 'nopic.jpg', '3', 'L', 'Malang', '1978-02-10', '', '', '082225616555', '', 'Y'),
('163010', 'Yovi Veri Ari Adiansah', 'nopic.jpg', '3', 'L', 'Malang', '1994-03-30', '', '', '085815258930', '', 'Y'),
('161001', 'Alfanudin', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('161002', 'Fitra Hadi Nugroho', 'nopic.jpg', '2', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('161003', 'Helmi Setyo Asmoro', 'nopic.jpg', '3', 'L', 'Malang', '1994-05-14', '', '', '081230530009', 'helmi.setyo.asmoro@gmail.com', 'Y'),
('161004', 'Nuril Huda', 'nopic.jpg', '3', 'L', 'Surabaya', '1979-01-07', '', '', '085100565236', 'faadilah@gmail.com', 'Y'),
('113008', 'Bambang Agus Prianto', 'nopic.jpg', '3', 'L', 'Malang', '1971-08-08', '', '', '', '', 'Y'),
('102001', 'ALIF SOLICHIN', 'nopic.jpg', '3', 'L', 'MALANG', '1991-06-03', '', '', '', '', 'Y'),
('102009', 'YAYUK AMIROTIN', 'nopic.jpg', '3', 'P', 'Kediri', '1973-08-19', '', '', '', '', 'Y'),
('102007', 'KRISMAYANTI ULFAH', 'nopic.jpg', '2', 'P', 'Kediri', '1980-05-04', '', '', '', '', 'Y'),
('102002', 'ANDI PRADANA', 'nopic.jpg', '3', 'L', 'MALANG', '1991-08-05', '', '', '', '', 'Y'),
('102004', 'BUDI SANTOSO', 'nopic.jpg', '2', 'L', 'BLITAR', '1979-03-23', '', '', '', '', 'Y'),
('102003', 'BAMBANG TARMIDI', 'nopic.jpg', '1', 'L', 'MALANG', '1990-11-18', '', '', '', '', 'Y'),
('102008', 'MASWAL UMMAH', 'nopic.jpg', '3', 'P', 'MALANG', '1980-05-04', '', '', '', '', 'Y'),
('102005', 'DEWI RATMI ASIH', 'nopic.jpg', '3', 'P', 'BANYUMAS', '1980-12-06', '', '', '', '', 'Y'),
('102006', 'ELLYZA SETYA MARYIANTARI', 'nopic.jpg', '3', 'P', 'KEDIRI', '1966-08-16', '', '', '', '', 'Y'),
('103005', 'HENDY DWI KURNIANSYAH', 'nopic.jpg', '2', 'L', 'MALANG', '1990-06-15', '', '', '', '', 'Y'),
('103002', 'ANANG SETIAWAN', 'nopic.jpg', '1', 'L', 'MALANG', '1981-05-08', '', '', '', '', 'Y'),
('103003', 'HERMAWAN KUSWANDI', 'nopic.jpg', '3', 'L', 'MALANG', '1977-02-06', '', '', '', '', 'Y'),
('103010', 'ADIF FIRMANSYAH', 'nopic.jpg', '1', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('103012', 'TOTOK ROHADI', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('103011', 'SUPARDI', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('103009', 'SEPTIAN MAULUDIN', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('103008', 'BAMBANG EDY SANTOSA', 'nopic.jpg', '3', 'P', 'Jember', '1966-01-01', '', '', '', '', 'Y'),
('101001', 'AAN JUNAEDI', 'nopic.jpg', '1', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('101006', 'ELIAQUIM DANAI DA COSTA', 'nopic.jpg', '3', 'P', 'Jember', '1966-01-01', '', '', '', '', 'Y'),
('101004', 'CANDRA KURNIA', 'nopic.jpg', '2', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('101002', 'BEKTI SURAJI', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('101012', 'TAUFIQURRAHMAN BALETTY', 'nopic.jpg', '1', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('101005', 'EKO YONO', 'nopic.jpg', '3', 'P', 'Jember', '1966-01-01', '', '', '', '', 'Y'),
('101007', 'LUTFI HARPIANSYAH', 'nopic.jpg', '1', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('101003', 'CESALTINO DE ARAUJO', 'nopic.jpg', '3', 'P', 'Jember', '1966-01-01', '', '', '', '', 'Y'),
('101010', 'REZA IRAWAN', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('112002', 'NUR ALISA', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('112007', 'SUKARMAN', 'nopic.jpg', '3', 'L', 'Malang', '1966-01-01', '', '', '', '', 'Y'),
('112008', 'WINOTO', 'nopic.jpg', '2', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('112001', 'AHMAD SHOLEH', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('112006', 'RENI DWI LESTARI', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('112003', 'PIPIT PURWANINGSIH', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('112004', 'SOFAN LATIFI', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('113011', 'MOH ZAINI', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('113009', 'MIFTAHUL HUDA', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('113004', 'BAYU IMAM UTOMO', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('113007', 'STYA WIDODO', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('113010', 'ZAINAL MUSTOFA', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('113003', 'HENDAR FAUJI MAHFUD', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('111011', 'KUSNOTO', 'nopic.jpg', '3', 'L', 'Surabaya', '1966-01-01', '', '', '', '', 'Y'),
('111001', 'ANTONIUS SURYATNO TONI BELOLON', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('111006', 'YUDI TAHYUDI', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('111002', 'DARFIANSYAH APRIYANTO', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('111010', 'YANUAR FARID HABIBI', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('111003', 'DIDI SUPRIADI', 'nopic.jpg', '3', 'L', 'Jember', '1966-01-01', '', '', '', '', 'Y'),
('111012', 'TIMOTEO CESARIO DE SX', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('111007', 'NESYA FENINASARI', 'nopic.jpg', '3', 'P', 'Jember', '1966-01-01', '', '', '', '', 'Y'),
('111008', 'NOEMIA DA COSTA FERNANDES H', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('111005', 'JUARDI', 'nopic.jpg', '3', 'L', 'Jember', '1966-01-01', '', '', '', '', 'Y'),
('122008', 'MERRY DWI SETYA K', 'nopic.jpg', '1', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('122006', 'MUIS ROBIL', 'nopic.jpg', '1', '', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('122010', 'RAHMAN AJI SATRIYANTO', 'nopic.jpg', '1', '', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('122009', 'NUR AINI KHOIRIYA', 'nopic.jpg', '1', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('122002', 'BUKHORI MUSLIM', 'nopic.jpg', '1', '', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('122007', 'M SYAIFUL RIZAL', 'nopic.jpg', '1', '', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('123002', 'ATIEK KARTIKASARI RACHMAWATI', 'nopic.jpg', '1', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('123004', 'ZAINUL ABIDIN', 'nopic.jpg', '1', '', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('123013', 'ABDUL ROHIM', 'nopic.jpg', '1', '', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('123011', 'WINDRA WAHYU EKO PRASETYO', 'nopic.jpg', '1', '', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('123012', 'KHOIRUL ANAM RAHMAD SHAN HAJI', 'nopic.jpg', '1', '', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('123010', 'STYA WIDODO', 'nopic.jpg', '1', '', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('123008', 'ROKHIM', 'nopic.jpg', '1', '', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('123009', 'YULIK FIRMANSYAH', 'nopic.jpg', '1', '', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('123014', 'BAGUS GUNAWAN W', 'nopic.jpg', '1', '', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('121007', 'MERRY DWI SETYA KINANTI', 'nopic.jpg', '1', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('121008', 'HIDAYATULLOH', 'nopic.jpg', '1', '', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('121006', 'RAHMAN AJI SATRIYANTO', 'nopic.jpg', '1', '', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('121003', 'ISTIQLAL SUBHI MAULANA', 'nopic.jpg', '1', '', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('121002', 'CANCIO MANUEL MADEIRA PEREIRA', 'nopic.jpg', '1', '', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('121005', 'M SYAIFUL RIZAL', 'nopic.jpg', '1', '', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('121004', 'CHERRYSWAN TAUFIQUL RAHMAN', 'nopic.jpg', '1', '', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('132002', 'NUR LAILI FAUZIAH', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('132001', 'NOFI ARIANDINI PUSPITASARI', 'nopic.jpg', '3', 'P', 'Bondowoso', '1966-01-01', '', '', '', '', 'Y'),
('132004', 'YOVA NALIA PRADANA', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('133031', 'HENGGAR FIBRIAN FRADITYA', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('133033', 'RAKHMAD SANTOSO', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('133034', 'SAMSUL HUDA', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('133036', 'INDRA SAPUTRA', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('133043', 'JANUARIO XIMENES BELO', 'nopic.jpg', '3', '', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('133028', 'WAHYU DEWANTO SATRIONO', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('133042', 'WINOTO', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('133030', 'BUDI TEGUH SANTOSO', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('133020', 'NUNO DA COSTA BELO', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('133029', 'ACHSANUL IBAD', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('133037', 'ADI NUARI HERMADY', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('133040', 'FANDY DHARMA SETIAWAN', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('133038', 'HENDRO WAHYU LAKSONO', 'nopic.jpg', '3', 'P', 'Jember', '1966-01-01', '', '', '', '', 'Y'),
('133041', 'SUKARMAN', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('133039', 'BOBY SULISTIANTO', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('133035', 'NUR HADI', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('133032', 'MOCHAMMAD NADIRIN', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('133027', 'MUARIPIN', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131055', 'AHMAD NUR KHOTIB', 'nopic.jpg', '3', 'P', 'Bondowoso', '1966-01-01', '', '', '', '', 'Y'),
('131012', 'VINDI DWI ARFIANTO', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131016', 'NANDA RIFKI WITRIANTO', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131022', 'AHMAD FATKHRUL KHOYRUDIN', 'nopic.jpg', '3', 'P', 'Bondowoso', '1966-01-01', '', '', '', '', 'Y'),
('131060', 'MOKHAMAD AINUL FUAD', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131033', 'RUDI HARIONO', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131036', 'TRISNO', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131009', 'HENDRA ARDIANTO', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('131044', 'AHMAD YUNUS', 'nopic.jpg', '3', 'P', 'Bondowoso', '1966-01-01', '', '', '', '', 'Y'),
('131050', 'SULISTIO UTOMO', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131057', 'SUKOYO', 'nopic.jpg', '3', 'L', 'Blitar', '1966-01-01', '', '', '', '', 'Y'),
('131048', 'GURINDRA YOGA PRADANA', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131045', 'CHAERUL ARIFIN', 'nopic.jpg', '3', 'P', 'Bondowoso', '1966-01-01', '', '', '', '', 'Y'),
('131056', 'SISMADI', 'nopic.jpg', '3', 'P', 'Jombang', '1966-01-01', '', '', '', '', 'Y'),
('131010', 'HENDRI MASRURI', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131039', 'LUQMAN HAKIM', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131054', 'TRILA NOVIANTO', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131043', 'SONI SUSANTO', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131031', 'MOCHAMAD IRFAN', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131040', 'M RUSLAN', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131058', 'RENY WIDYAWATI', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131047', 'MOCHAMMAD NASRULLOH', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131019', 'AGUNG PRIYO PRASTOWO', 'nopic.jpg', '3', 'P', 'Jombang', '1966-01-01', '', '', '', '', 'Y'),
('131014', 'MOHAMMAD ARIF KURNIAWAN', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131020', 'ARTA DWI ARGA', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131008', 'CANDRA ANDIKA KURNIAWAN', 'nopic.jpg', '3', 'P', 'Jombang', '1966-01-01', '', '', '', '', 'Y'),
('131028', 'HENDRA ARIFIYANTO', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131035', 'SUJIANTO', 'nopic.jpg', '3', 'P', 'Jombang', '1966-01-01', '', '', '', '', 'Y'),
('131034', 'SATRIYO PRAMONO', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131062', 'EKO ADI SETYAWAN', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131053', 'YUNI DIANTO', 'nopic.jpg', '3', 'P', 'Jombang', '1966-01-01', '', '', '', '', 'Y'),
('131037', 'YUSUF', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131015', 'FAKIH PILIHAN', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131023', 'ALI USMAN', 'nopic.jpg', '3', 'L', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131021', 'ADITYA PRAHARAJATI', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131059', 'NUR SAFAK', 'nopic.jpg', '2', 'P', 'Jombang', '1966-01-01', '', '', '', '', 'Y'),
('131017', 'HABIBI IMAM MUKHLIS', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131038', 'DIAN JANUARTO', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131046', 'SIGIT CAHYONO', 'nopic.jpg', '3', 'P', 'Pasuruan', '1966-01-01', '', '', '', '', 'Y'),
('131030', 'JENI ALIYAH RAHMAN', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131018', 'PANCA AGUNG SUSANTO', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131051', 'MASHURI', 'nopic.jpg', '3', 'P', 'Bondowoso', '1966-01-01', '', '', '', '', 'Y'),
('131042', 'NANANG AROFAT', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131026', 'DIDIK RACHMAD KARYAWANTO', 'nopic.jpg', '3', 'L', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131011', 'TIEN RAHMAWATI', 'nopic.jpg', '3', 'P', 'Pasuruan', '1966-01-01', '', '', '', '', 'Y'),
('131049', 'AYI SUBARYA', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131029', 'HIMAWAN SURYANTO', 'nopic.jpg', '1', 'P', 'Jombang', '1966-01-01', '', '', '', '', 'Y'),
('131052', 'AGUS PRIYONO', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131027', 'EKA DHARMA LUTFIYANTO PUTRA', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131025', 'ARIF SUWITO', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131061', 'MOCHAMMAD NAJIB NAZARUDIN', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131032', 'NUGROHO ADI PUTRANTO', 'nopic.jpg', '2', 'P', 'Jombang', '1966-01-01', '', '', '', '', 'Y'),
('131041', 'MUKHAMAD SAFIUDIN', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y'),
('131013', 'ANDREAS GUNTUR HENDRIARTO', 'nopic.jpg', '3', 'P', 'Pasuruan', '1966-01-01', '', '', '', '', 'Y'),
('131024', 'ANDIK SUYATNO', 'nopic.jpg', '3', 'P', 'Kediri', '1966-01-01', '', '', '', '', 'Y');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
