-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Nov 2018 pada 12.15
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rubel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `curriculum`
--

CREATE TABLE `curriculum` (
  `idcurriculum` varchar(20) NOT NULL,
  `idMatkul` varchar(30) NOT NULL,
  `idJurusan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `curriculum`
--

INSERT INTO `curriculum` (`idcurriculum`, `idMatkul`, `idJurusan`) VALUES
('DKV-KVQ730', 'KVQ730', 'DKV'),
('IF-CSH203', 'CSH203', 'IF'),
('IF-CSH320', 'CSH320', 'IF'),
('IK-CSH320', 'CSH320', 'IK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_pengajar`
--

CREATE TABLE `jadwal_pengajar` (
  `idJadwal` varchar(40) NOT NULL,
  `jadwal` date NOT NULL,
  `idPengajar` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal_pengajar`
--

INSERT INTO `jadwal_pengajar` (`idJadwal`, `jadwal`, `idPengajar`) VALUES
('1301174158-1016', '2018-12-02', '1301174158'),
('1301174158-263', '2018-12-14', '1301174158'),
('1301174158-420', '2018-12-15', '1301174158');

-- --------------------------------------------------------

--
-- Struktur dari tabel `joinkelas`
--

CREATE TABLE `joinkelas` (
  `idjoinkelas` varchar(40) NOT NULL,
  `idKelas` varchar(30) NOT NULL,
  `nim` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `joinkelas`
--

INSERT INTO `joinkelas` (`idjoinkelas`, `idKelas`, `nim`) VALUES
('1301170142-1840-1301170142', '1301170142-1840', '1301170142'),
('1301170142-2103-1301170142', '1301170142-2103', '1301170142'),
('1301170142-2103-1301174158', '1301170142-2103', '1301174158'),
('1301170142-2103-1301174343', '1301170142-2103', '1301174343'),
('1301170142-2275-1301170142', '1301170142-2275', '1301170142'),
('1301170142-2275-1301174343', '1301170142-2275', '1301174343'),
('1301170142-2275-test', '1301170142-2275', 'test'),
('1301174158-729-1301174158', '1301174158-729', '1301174158'),
('1301174158-772-1301174158', '1301174158-772', '1301174158');

-- --------------------------------------------------------

--
-- Struktur dari tabel `joinkelas_withmentor`
--

CREATE TABLE `joinkelas_withmentor` (
  `idjoinkelas_withmentor` varchar(50) NOT NULL,
  `idkelas` varchar(50) NOT NULL,
  `nim` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_nomentor`
--

CREATE TABLE `kelas_nomentor` (
  `idKelas` varchar(40) NOT NULL,
  `namaKelas` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `maxAnggota` int(10) NOT NULL,
  `jumAnggota` int(10) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `idcurriculum` varchar(20) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `deskripsiKelas` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas_nomentor`
--

INSERT INTO `kelas_nomentor` (`idKelas`, `namaKelas`, `tanggal`, `jam`, `maxAnggota`, `jumAnggota`, `nim`, `idcurriculum`, `lokasi`, `deskripsiKelas`) VALUES
('1301170142-1840', 'ters', '2018-12-01', '07:00:00', 3, 1, '1301170142', 'IF-CSH203', 'res', 'asd'),
('1301170142-2103', 'hgj', '2018-12-01', '07:00:00', 3, 3, '1301170142', 'IF-CSH203', 'hgj', 'hgj'),
('1301170142-2275', 'test', '2018-11-30', '07:00:00', 3, 3, '1301170142', 'IF-CSH203', 'test', 'test'),
('1301174158-729', 'nbj', '2018-12-01', '07:00:00', 3, 1, '1301174158', 'IF-CSH203', 'bjgu', 'fdg'),
('1301174158-772', 'kelasBaru', '2018-12-05', '07:00:00', 5, 1, '1301174158', 'IF-CSH320', 'gku', 'BelajarKalkulus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_withmentor`
--

CREATE TABLE `kelas_withmentor` (
  `idKelas` varchar(40) NOT NULL,
  `namaKelas` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `maxAnggota` int(11) NOT NULL,
  `jumAnggota` int(11) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `idPengajar` varchar(20) NOT NULL,
  `idcurriculum` varchar(20) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `deskripsiKelas` varchar(2000) NOT NULL,
  `materi` varchar(10000) NOT NULL,
  `soal` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas_withmentor`
--

INSERT INTO `kelas_withmentor` (`idKelas`, `namaKelas`, `tanggal`, `jam`, `maxAnggota`, `jumAnggota`, `nim`, `idPengajar`, `idcurriculum`, `lokasi`, `deskripsiKelas`, `materi`, `soal`) VALUES
('1301170142-1974', 'heq', '2018-12-06', '07:00:00', 3, 1, '1301170142', '1301174343', 'IF-CSH203', 'qkn3', 'kqj3w', 'Materi Belum Diinput', 'Soal Belum Diinput'),
('1301174158-266', 'kelasbaru', '2018-12-19', '07:00:00', 3, 1, '1301174158', '1301174158', 'IF-CSH320', 'dimanaaja', 'mau belajar kalkulus', 'test halo', '1+1 berapa hayo??? 2 bang'),
('1301174343-1362', 'qerh', '2018-12-04', '07:00:00', 5, 1, '1301174343', '1301174158', 'IF-CSH320', 'eh', 'qerheh', 'Materi Belum Diinput', 'Soal Belum Diinput');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mengajar`
--

CREATE TABLE `mengajar` (
  `idMengajar` varchar(50) NOT NULL,
  `idMatkul` varchar(20) NOT NULL,
  `idPengajar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mengajar`
--

INSERT INTO `mengajar` (`idMengajar`, `idMatkul`, `idPengajar`) VALUES
('1301174158-CSH320', 'CSH320', '1301174158'),
('1301174343-CSH203', 'CSH203', '1301174343');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `idPesan` varchar(30) NOT NULL,
  `NimPengirim` varchar(20) NOT NULL,
  `NimPenerima` varchar(20) NOT NULL,
  `isiPesan` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_jurusan`
--

CREATE TABLE `table_jurusan` (
  `idJurusan` varchar(10) NOT NULL,
  `namaJurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `table_jurusan`
--

INSERT INTO `table_jurusan` (`idJurusan`, `namaJurusan`) VALUES
('DKV', 'S1 Desain Komunikasi Visual'),
('IF', 'S1 Teknik Informatika'),
('IK', 'S1 Ilmu Komputer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_matakuliah`
--

CREATE TABLE `table_matakuliah` (
  `idMatkul` varchar(30) NOT NULL,
  `namaMatkul` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `table_matakuliah`
--

INSERT INTO `table_matakuliah` (`idMatkul`, `namaMatkul`) VALUES
('CSH203', 'Fisika Dasar'),
('CSH320', 'Kalkulus IIB'),
('KVQ730', 'Desain Interior AI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_pelajar`
--

CREATE TABLE `table_pelajar` (
  `nim` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `idJurusan` varchar(10) NOT NULL,
  `angkatan` int(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `jumJoin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `table_pelajar`
--

INSERT INTO `table_pelajar` (`nim`, `nama`, `idJurusan`, `angkatan`, `username`, `password`, `jumJoin`) VALUES
('1301170142', 'Hilmi Hidayat Arfisko', 'IF', 2017, 'hilmiha', 'test', 4),
('1301174158', 'Made Adi Widyananda', 'IF', 2017, 'adi', 'adi', 5),
('1301174343', 'Setyo Adji Pratomo', 'IF', 2017, 'adji', 'test', 4),
('1401174276', 'Eka Putra', 'IK', 2018, 'eka', 'eka', 1),
('1401184122', 'Kadek Satria Yudha Pramana', 'IK', 2018, 'yudapramana', 'pramana13', 1),
('test', 'test', 'IF', 2017, 'test', 'test', 1),
('test2', 'test2', 'IF', 2017, 'test2', 'test2', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_pengajar`
--

CREATE TABLE `table_pengajar` (
  `idPengajar` varchar(20) NOT NULL,
  `jumlahKeahlian` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `table_pengajar`
--

INSERT INTO `table_pengajar` (`idPengajar`, `jumlahKeahlian`, `nim`) VALUES
('1301174158', 1, '1301174158'),
('1301174343', 1, '1301174343');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`idcurriculum`),
  ADD KEY `curriculum_fk1` (`idJurusan`),
  ADD KEY `curriculum_fk2` (`idMatkul`);

--
-- Indeks untuk tabel `jadwal_pengajar`
--
ALTER TABLE `jadwal_pengajar`
  ADD PRIMARY KEY (`idJadwal`),
  ADD KEY `jadwal_fk1` (`idPengajar`);

--
-- Indeks untuk tabel `joinkelas`
--
ALTER TABLE `joinkelas`
  ADD PRIMARY KEY (`idjoinkelas`),
  ADD KEY `joinKelas_FK1` (`idKelas`),
  ADD KEY `joinKelas_FK2` (`nim`);

--
-- Indeks untuk tabel `joinkelas_withmentor`
--
ALTER TABLE `joinkelas_withmentor`
  ADD PRIMARY KEY (`idjoinkelas_withmentor`),
  ADD KEY `joinKelas_withmentor_FK1` (`idkelas`),
  ADD KEY `joinKelas_withmentor_FK2` (`nim`);

--
-- Indeks untuk tabel `kelas_nomentor`
--
ALTER TABLE `kelas_nomentor`
  ADD PRIMARY KEY (`idKelas`),
  ADD KEY `nomentor_fk1` (`nim`),
  ADD KEY `nomentor_fk2` (`idcurriculum`);

--
-- Indeks untuk tabel `kelas_withmentor`
--
ALTER TABLE `kelas_withmentor`
  ADD PRIMARY KEY (`idKelas`),
  ADD KEY `withmentor_fk1` (`nim`),
  ADD KEY `withmentor_fk3` (`idcurriculum`),
  ADD KEY `withmentor_fk2` (`idPengajar`);

--
-- Indeks untuk tabel `mengajar`
--
ALTER TABLE `mengajar`
  ADD PRIMARY KEY (`idMengajar`),
  ADD KEY `mengajar_fk1` (`idPengajar`),
  ADD KEY `mengajar_fk2` (`idMatkul`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`idPesan`),
  ADD KEY `pesan_FK1` (`NimPenerima`),
  ADD KEY `pesan_FK2` (`NimPengirim`);

--
-- Indeks untuk tabel `table_jurusan`
--
ALTER TABLE `table_jurusan`
  ADD PRIMARY KEY (`idJurusan`);

--
-- Indeks untuk tabel `table_matakuliah`
--
ALTER TABLE `table_matakuliah`
  ADD PRIMARY KEY (`idMatkul`);

--
-- Indeks untuk tabel `table_pelajar`
--
ALTER TABLE `table_pelajar`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `table_pelajar_fk1` (`idJurusan`);

--
-- Indeks untuk tabel `table_pengajar`
--
ALTER TABLE `table_pengajar`
  ADD PRIMARY KEY (`idPengajar`),
  ADD KEY `table_pengajar_FK` (`nim`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `curriculum`
--
ALTER TABLE `curriculum`
  ADD CONSTRAINT `curriculum_fk1` FOREIGN KEY (`idJurusan`) REFERENCES `table_jurusan` (`idJurusan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `curriculum_fk2` FOREIGN KEY (`idMatkul`) REFERENCES `table_matakuliah` (`idMatkul`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwal_pengajar`
--
ALTER TABLE `jadwal_pengajar`
  ADD CONSTRAINT `jadwal_fk1` FOREIGN KEY (`idPengajar`) REFERENCES `table_pengajar` (`idPengajar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `joinkelas`
--
ALTER TABLE `joinkelas`
  ADD CONSTRAINT `joinKelas_FK1` FOREIGN KEY (`idKelas`) REFERENCES `kelas_nomentor` (`idKelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `joinKelas_FK2` FOREIGN KEY (`nim`) REFERENCES `table_pelajar` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `joinkelas_withmentor`
--
ALTER TABLE `joinkelas_withmentor`
  ADD CONSTRAINT `joinKelas_withmentor_FK1` FOREIGN KEY (`idkelas`) REFERENCES `kelas_withmentor` (`idKelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `joinKelas_withmentor_FK2` FOREIGN KEY (`nim`) REFERENCES `table_pelajar` (`nim`);

--
-- Ketidakleluasaan untuk tabel `kelas_nomentor`
--
ALTER TABLE `kelas_nomentor`
  ADD CONSTRAINT `nomentor_fk1` FOREIGN KEY (`nim`) REFERENCES `table_pelajar` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nomentor_fk2` FOREIGN KEY (`idcurriculum`) REFERENCES `curriculum` (`idcurriculum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kelas_withmentor`
--
ALTER TABLE `kelas_withmentor`
  ADD CONSTRAINT `withmentor_fk1` FOREIGN KEY (`nim`) REFERENCES `table_pelajar` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `withmentor_fk2` FOREIGN KEY (`idPengajar`) REFERENCES `table_pengajar` (`idPengajar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `withmentor_fk3` FOREIGN KEY (`idcurriculum`) REFERENCES `curriculum` (`idcurriculum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mengajar`
--
ALTER TABLE `mengajar`
  ADD CONSTRAINT `mengajar_fk1` FOREIGN KEY (`idPengajar`) REFERENCES `table_pengajar` (`idPengajar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mengajar_fk2` FOREIGN KEY (`idMatkul`) REFERENCES `table_matakuliah` (`idMatkul`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD CONSTRAINT `pesan_FK1` FOREIGN KEY (`NimPenerima`) REFERENCES `table_pelajar` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesan_FK2` FOREIGN KEY (`NimPengirim`) REFERENCES `table_pelajar` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `table_pelajar`
--
ALTER TABLE `table_pelajar`
  ADD CONSTRAINT `table_pelajar_fk1` FOREIGN KEY (`idJurusan`) REFERENCES `table_jurusan` (`idJurusan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `table_pengajar`
--
ALTER TABLE `table_pengajar`
  ADD CONSTRAINT `table_pengajar_FK` FOREIGN KEY (`nim`) REFERENCES `table_pelajar` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
