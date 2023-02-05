-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2022 at 03:44 AM
-- Server version: 10.9.2-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jep_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota_keluarga`
--

CREATE TABLE `anggota_keluarga` (
  `id_anggota` int(11) NOT NULL,
  `id_kep` int(11) NOT NULL,
  `nomor_kaj` varchar(25) NOT NULL,
  `status_keanggotaan` varchar(25) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nama_panggilan` varchar(25) NOT NULL,
  `status_jemaat` varchar(15) NOT NULL,
  `status_kel` char(20) NOT NULL,
  `status_nikah` char(20) NOT NULL,
  `nik` char(16) NOT NULL,
  `profesi` varchar(25) NOT NULL,
  `jenkel` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp_rumah` char(12) NOT NULL,
  `telp_kantor` char(12) NOT NULL,
  `wa` char(15) NOT NULL,
  `tempat_lahir` char(25) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `pendidikan` char(15) NOT NULL,
  `pekerjaan` char(15) NOT NULL,
  `penghasilan` varchar(25) NOT NULL,
  `gol_darah` char(2) NOT NULL,
  `hobby` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `data_perorangan` (
  `id_perorangan` int(11) NOT NULL,
  `jenis_id` varchar(10) NOT NULL,
  `no_identitas` varchar(16) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `nama_panggilan` varchar(10) NOT NULL,
  `peran_keluarga` varchar(10) NOT NULL,
  `no_kk` varchar(16) NOT NULL,
  `tmpt_lahir` varchar(25) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenkel` enum('Laki-laki','Perempuan') NOT NULL,
  `gol_darah` varchar(3) NOT NULL,
  `status_nikah` varchar(20) NOT NULL,
  `foto` text NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `negara` varchar(15) NOT NULL,
  `provinsi` varchar(25) NOT NULL,
  `kota` int(25) NOT NULL,
  `kecamatan` int(25) NOT NULL,
  `kelurahan` varchar(11) NOT NULL,
  `area` varchar(25) NOT NULL,
  `telp` varchar(12) NOT NULL,
  `no_wa` varchar(13) NOT NULL,
  `boleh_kirimwa` enum('Ya','Tidak') NOT NULL,
  `email` varchar(25) NOT NULL,
  `boleh_kirimemail` enum('Ya','Tidak') NOT NULL,
  `status` varchar(10) NOT NULL,
  `tgl_entry` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `tgl_update` datetime(6) NOT NULL,
  `pengguna` varchar(20) NOT NULL,
  `WISH_YEAR` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `data_studibakat`
--

CREATE TABLE `data_studibakat` (
  `id_studibakat` int(11) NOT NULL,
  `tingkat_pendidikan` varchar(5) NOT NULL,
  `sekolah_skrg` varchar(25) NOT NULL,
  `hobi` varchar(25) NOT NULL,
  `bakat_major` varchar(25) NOT NULL,
  `bakat_minor` varchar(25) NOT NULL,
  `pelayanan` enum('Ya','Tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_tanggalpenting`
--

CREATE TABLE `data_tanggalpenting` (
  `id_tglptg` int(11) NOT NULL,
  `momen` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  `tgl_momen` date NOT NULL,
  `tempat` varchar(25) NOT NULL,
  `file_penting` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grup`
--

CREATE TABLE `grup` (
  `id_grup` int(11) NOT NULL,
  `nama_grup` varchar(25) NOT NULL,
  `tgl_buatgrup` date NOT NULL DEFAULT current_timestamp(),
  `area` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hobi`
--

CREATE TABLE `hobi` (
  `id` int(11) NOT NULL,
  `hobi` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hobi`
--

INSERT INTO `hobi` (`id`, `hobi`) VALUES
(1, 'Berkebun'),
(2, 'Bertani'),
(3, 'Bola Voli'),
(4, 'Bulu Tangkis'),
(5, 'Catur'),
(6, 'Domino'),
(7, 'Jalan-Jalan'),
(8, 'Memancing'),
(9, 'Memasak'),
(10, 'Membaca'),
(11, 'Menyanyi'),
(12, 'Olahraga'),
(13, 'Sepak Bola'),
(14, 'Tenis'),
(15, 'Musik'),
(16, 'Bola Basket'),
(17, 'Menjahit'),
(18, 'Menulis'),
(19, 'Menggambar'),
(20, 'Menonton');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_ibadah`
--

CREATE TABLE `jenis_ibadah` (
  `id` int(11) NOT NULL,
  `nama_ibadah` varchar(25) NOT NULL,
  `keterangan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_ibadah`
--

INSERT INTO `jenis_ibadah` (`id`, `nama_ibadah`, `keterangan`) VALUES
(1, 'PKBGT', ''),
(2, 'PWGT', ''),
(3, 'PPGT', ''),
(4, 'SMGT', ''),
(5, 'IBADAH RUMAH TANGGA', ''),
(6, 'PENGUCAPAN SYUKUR', ''),
(7, 'IBADAH PENGHIBURAN', ''),
(8, 'KEBAKTIAN DOA', '');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `kode_wilayah` char(15) NOT NULL,
  `nama_kecamatan` char(15) NOT NULL,
  `jumlah_desa` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kecamatan`, `kode_wilayah`, `nama_kecamatan`, `jumlah_desa`) VALUES
(1, '727108', 'mantikulore', '8'),
(2, '727102', 'palu barat', '6'),
(3, '727103', 'palu selatan', '5');

-- --------------------------------------------------------

--
-- Table structure for table `kepala_keluarga`
--

CREATE TABLE `kepala_keluarga` (
  `id_kepkel` int(11) NOT NULL,
  `nomor_kaj` varchar(25) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenkel` char(15) NOT NULL,
  `panggilan` varchar(25) NOT NULL,
  `status` varchar(15) NOT NULL,
  `status_keanggotaan` char(25) NOT NULL,
  `nik` char(16) NOT NULL,
  `nama_panggilan` varchar(25) NOT NULL,
  `sektor` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp_rumah` char(12) NOT NULL,
  `telp_kantor` char(12) NOT NULL,
  `wa` char(15) NOT NULL,
  `tempat_lahir` char(25) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `pendidikan` char(15) NOT NULL,
  `pekerjaan` char(15) NOT NULL,
  `penghasilan` varchar(25) NOT NULL,
  `gol_darah` char(2) NOT NULL,
  `hobby` char(15) NOT NULL,
  `status_nikah` char(15) NOT NULL,
  `tempat_menikah` char(25) NOT NULL,
  `tgl_menikah` date NOT NULL,
  `diberkati_oleh` varchar(25) NOT NULL,
  `status_kel` char(15) NOT NULL,
  `profesi` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `profesi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `profesi`) VALUES
(1, 'PNS'),
(2, 'Pendeta'),
(3, 'Karyawan Swasta'),
(4, 'Anggota TNI / Polri'),
(5, 'Pensiunan / Purnawirawan'),
(6, 'Dokter'),
(7, 'Bidan'),
(8, 'Pengusaha / Wiraswasta'),
(9, 'Pelajar'),
(10, 'Mahasiswa'),
(11, 'Urusan Rumah Tangga'),
(12, 'Guru'),
(13, 'Dosen'),
(14, 'Karyawan Swasta'),
(15, 'Tukang'),
(16, 'Pedagang'),
(17, 'Perawat'),
(18, 'Rohaniawan'),
(19, 'Petani'),
(20, 'Pelaut'),
(21, 'Belum bekerja'),
(22, 'Lain-lain');

-- --------------------------------------------------------

--
-- Table structure for table `persembahan`
--

CREATE TABLE `persembahan` (
  `id_persembahan` int(11) NOT NULL,
  `tgl_persembahan` datetime(6) NOT NULL,
  `pukul` time NOT NULL,
  `konpokator` char(15) NOT NULL,
  `hadir_laki` char(3) NOT NULL,
  `hadir_perempuan` char(3) NOT NULL,
  `ayat` varchar(25) DEFAULT NULL,
  `pundi1` int(11) DEFAULT NULL,
  `pundi2` int(11) DEFAULT NULL,
  `pundi3` int(11) DEFAULT NULL,
  `pundi4` int(11) DEFAULT NULL,
  `psb` int(11) DEFAULT NULL,
  `psp` int(11) DEFAULT NULL,
  `pers_babtisan` int(11) DEFAULT NULL,
  `pers_sidi` int(11) DEFAULT NULL,
  `pers_nikah` int(11) DEFAULT NULL,
  `pers_hut` int(11) DEFAULT NULL,
  `pers_perjamuankudus` int(11) DEFAULT NULL,
  `pers_keluarga` int(11) DEFAULT NULL,
  `perpuluhan` int(11) DEFAULT NULL,
  `kotak_mutasipendeta` varchar(25) DEFAULT NULL,
  `pundi_khusus` int(11) DEFAULT NULL,
  `amplop_pembangunan` int(11) DEFAULT NULL,
  `amplop_diakonia` int(11) DEFAULT NULL,
  `aksi_pangiu` int(11) DEFAULT NULL,
  `amplop_lain` int(11) DEFAULT NULL,
  `pelayan_firman` varchar(25) DEFAULT NULL,
  `notulis` varchar(50) DEFAULT NULL,
  `sektor` varchar(25) DEFAULT NULL,
  `kk` varchar(25) DEFAULT NULL,
  `jenis_kebaktian` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persembahan`
--

-- --------------------------------------------------------

--
-- Table structure for table `sektor`
--

CREATE TABLE `sektor` (
  `id` int(11) NOT NULL,
  `sektor` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sektor`
--

INSERT INTO `sektor` (`id`, `sektor`) VALUES
(1, 'Besusu'),
(2, 'Bumi Nyiur'),
(3, 'Talise Valangguni'),
(4, 'Maesa'),
(5, 'Tanamodindi'),
(6, 'Palu Barat'),
(7, 'Bumi Tadulako');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `blokir` enum('N','Y') NOT NULL,
  `id_sessions` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `level`, `blokir`, `id_sessions`) VALUES
(1, 'admin', 'cf3957ba52b1506dae8d208b9264e8e9', 'admin@sijep.org', 1, 'N', 'Administrator'),
(2, 'user', '6ad14ba9986e3615423dfca256d04e3f', 'user@user', 2, 'N', 'user'),
(3, 'Arfan', 'e6e061838856bf47e1de730719fb2609', 'admin@123', 1, 'N', 'Arfan Hutasoit'),
(4, 'Yeri', 'e6e061838856bf47e1de730719fb2609', 'admin@123', 1, 'N', 'Yeri Susanto'),
(5, 'Dwi', 'e6e061838856bf47e1de730719fb2609', 'admin@123', 1, 'N', 'Dwi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota_keluarga`
--
ALTER TABLE `anggota_keluarga`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `data_perorangan`
--
ALTER TABLE `data_perorangan`
  ADD PRIMARY KEY (`id_perorangan`);

--
-- Indexes for table `data_studibakat`
--
ALTER TABLE `data_studibakat`
  ADD PRIMARY KEY (`id_studibakat`);

--
-- Indexes for table `data_tanggalpenting`
--
ALTER TABLE `data_tanggalpenting`
  ADD PRIMARY KEY (`id_tglptg`);

--
-- Indexes for table `grup`
--
ALTER TABLE `grup`
  ADD PRIMARY KEY (`id_grup`);

--
-- Indexes for table `hobi`
--
ALTER TABLE `hobi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_ibadah`
--
ALTER TABLE `jenis_ibadah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `kepala_keluarga`
--
ALTER TABLE `kepala_keluarga`
  ADD PRIMARY KEY (`id_kepkel`),
  ADD UNIQUE KEY `nomor_kaj` (`nomor_kaj`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `persembahan`
--
ALTER TABLE `persembahan`
  ADD PRIMARY KEY (`id_persembahan`);

--
-- Indexes for table `sektor`
--
ALTER TABLE `sektor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota_keluarga`
--
ALTER TABLE `anggota_keluarga`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_perorangan`
--
ALTER TABLE `data_perorangan`
  MODIFY `id_perorangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_studibakat`
--
ALTER TABLE `data_studibakat`
  MODIFY `id_studibakat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_tanggalpenting`
--
ALTER TABLE `data_tanggalpenting`
  MODIFY `id_tglptg` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grup`
--
ALTER TABLE `grup`
  MODIFY `id_grup` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hobi`
--
ALTER TABLE `hobi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `jenis_ibadah`
--
ALTER TABLE `jenis_ibadah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kepala_keluarga`
--
ALTER TABLE `kepala_keluarga`
  MODIFY `id_kepkel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `persembahan`
--
ALTER TABLE `persembahan`
  MODIFY `id_persembahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sektor`
--
ALTER TABLE `sektor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
