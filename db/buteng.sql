-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26 Apr 2017 pada 03.32
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buteng`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul_artikel` varchar(114) NOT NULL,
  `alias_artikel` varchar(114) NOT NULL,
  `deskripsi_artikel` varchar(114) NOT NULL,
  `isi_artikel` text NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_artikel` varchar(15) NOT NULL,
  `img_artikel` varchar(114) NOT NULL,
  `tgl_artikel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul_artikel`, `alias_artikel`, `deskripsi_artikel`, `isi_artikel`, `id_kategori`, `id_user`, `status_artikel`, `img_artikel`, `tgl_artikel`) VALUES
(1, 'Pilkada Buteng 2017, Samahuddin Terima Rekomendasi PKB', 'pilkada-buteng-2017-samahuddin-terima-rekomendasi-pkb', 'Buton Tengah, Sultralive.com – Teka-teki siapa yang bakal direkomendasikan dari Partai Kebangkitan Bangsa (PKB) pa', '<p style=\"text-align: justify;\">Buton Tengah, Sultralive.com &ndash; Teka-teki siapa yang bakal direkomendasikan dari Partai Kebangkitan Bangsa (PKB) pada pemilihan Bupati dan Wakil Bupati tahun 2017 mendatang telah terjawabkan.</p>\r\n<p style=\"text-align: justify;\">Ketua Dewan Pimpinan Cabang (DPC) PKB Kabupaten Buton Tengah, Ali Mardan, S.Sos, saat ditemui ditaman kelurahan mawasangka, Rabu (10/8/2016) mengungkapkan hasil pleno dengar pendapat yang dilakukan Dewan Pengurus Pusat (DPP) tepatnya tanggal 4 Agustus lalu, ada 2 nama pasangan calon yang menguat untuk wilayah kabupaten buton tengah, pasangan pertama, Samahuddin, S.E &nbsp;dan Lantau, pasangan kedua yakni Ir. H. Mansur Amila, M.TP dan Saleh Ganiru.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Dari dua nama pasangan tersebut, DPP secara resmi mengeluarkan rekomendasi kepada pasangan Samahuddin, S.E &nbsp;dan Lantau, pilihan DPP PKB ke&shy;pada pasangan Samahuddin-Lantau, se&shy;telah melalui pelbagai me&shy;ka&shy;nisme in&shy;ternal partai. Makanisme itu, satu di&shy;antaranya adalah survei kandidat calon bupati&rdquo;, bebernya.</p>\r\n<p style=\"text-align: justify;\">Dengan keputusan DPP PKB ini, menjawab tanda tanya masyarakat tentang arah Partai Kebangkitan Bangsa (PKB) wilayah kabupaten buton tengah, dalam hal dukungan partai pada pemilihan bupati dan wakil bupati buton tengah tahun 2017 nanti.&nbsp;</p>', 7, 1, 'publish', 'artikel-tes-2016-11-17-1479338174.jpg', '2016-11-17'),
(2, 'Pilkada Buteng, Mansur Amila Vs Samahuddin', 'pilkada-buteng-mansur-amila-vs-samahuddin', 'Pasca Komisi Pemilihan Umum (KPU) Kabupaten Buton Tengah (Buteng) menetapkan satu-satunya pasangan calon dari jalu', '<p style=\"text-align: justify;\">LABUNGKARI&ndash;Pasca Komisi Pemilihan Umum (KPU) Kabupaten Buton Tengah (Buteng) menetapkan satu-satunya pasangan calon dari jalur perseorangan (independen) tidak memenuhi syarat dukungan minimal sebagai peserta Pilkada 2017, maka konsentrasi publik Buteng mulai beralih ke calon yang akan mendaftar melalui jalur partai politik (Parpol) dan gabungan Parpol.</p>\r\n<p style=\"text-align: justify;\">Berbicara calon Parpol, yang ada dibenak masyarakat Buteng adalah sosok dua figur kuat yakni, Abdul Mansur Amila dan Samahuddin bersama pasangannya masing-masing. Abdul Mansur Amila-Saleh Ganiru (Amal Saleh) dan Samahuddin-La Ntau (SamaTau). Sejauh ini, kedua pasangan calon sudah saling berebut Parpol yang akan menjadi kendaraannya bertarung di Pilkada 2017 nanti.</p>\r\n<p style=\"text-align: justify;\">Ada 10 Parpol yang akan bersaing di Pilkada Buteng nanti dengan total 25 kursi dan syarat untuk mengusung calon minimal harus mendapatkan lima kursi. 10 Parpol tersebut yakni, PAN (8 kursi), PKB (2), PDIP (2), PPP (2), PKS (2), PBB (2), Gerindra (2) NasDem (2), Demokrat (2), dan Golkar (1 kursi).</p>\r\n<p style=\"text-align: justify;\">Diantara kesepuluh Parpol tersebut, hanya PAN yang bisa mengusung calon sendiri karena perolehan kursinya melebihi syarat minimal, sedangkan Parpol lainnya harus berkoalisi minimal tiga partai dengan jumlah enam kursi.</p>\r\n<p style=\"text-align: justify;\">Dalam pertarungan Mansur Amila dan Samahuddin merebut dukungan Parpol tersebut, pihak Samahuddin yang sangat gencar mempublis dan menguploadnya di media sosial. Mulai konsultasi dengan pengurus DPP, pemberian surat tugas, hingga rekomendasi dan penyerahan SK dukungan atau diusung Parpol bersangkutan.</p>\r\n<p style=\"text-align: justify;\">Dari perkembangan tersebut, terungkap 10 Parpol terbagi rata kepada Mansur Amila dan Samahuddin. Masing-masing mendapatkan lima Parpol pendukung dan pengusung. Parpol yang sudah jelas mendukung Amal Saleh yakni PAN, PBB, Golkar, Gerindra, dan Demokrat. Sementara Samahuddin didukung PKB, PKS, NasDem, PPP, dan PDIP.</p>\r\n<p style=\"text-align: justify;\">Meskipun demikian, Mansur Amila tetap optimis masih didukung partai lainnya diluar lima Parpol yang sudah jelas mengusungnya. &ldquo;Sampai hari ini, Parpol yang jelas bergabung dengan Amal Saleh adalah PAN, PBB, Golkar, Gerindra, dan Demokrat,&rdquo; ungkap Mansur Amila saat ditemui usai meninjau proses perekaman e-KTP di Dinas Kependudukan dan Catatan Sipil (Disdukcapil) Buteng, Senin (29/8).</p>\r\n<p style=\"text-align: justify;\">&ldquo;Masih ada juga Parpol lain yang berpeluang mendukung, tapi belum ada keputusan resmi atau SK dari DPP yang diterbitkan, baik itu kepada saya maupun calon lainnya. Sebab, SK yang resmi itu harus ditandatangani ketua umum partai dan Sekjennya,&rdquo; tambahnya.</p>\r\n<p style=\"text-align: justify;\">Mantan Kadis PU Kabupaten Buton ini menerangkan, dalam PKPU nomor 4 tahun 2016 dijelaskan, partai yang tidak mencukupi kursi pengusungan calon, bukan hanya dibuktikan dengan surat keputusan saja tetapi harus ada pula form B1KWK. &ldquo;Walaupun sudah dapat SK, tapi kalau tidak ada form B1KWK maka bisa digeser ke calon lain. Itu harus dipahami, sehingga jangan dulu kita berbangga,&rdquo; tandasnya.</p>\r\n<p style=\"text-align: justify;\">Sementara itu, Sekretaris DPD NasDem Buteng Muhidin mengatakan, sejak awal pihaknya sudah yakin Samahuddin akan mendapat pintu dengan dukungan beberapa Parpol untuk maju bertarung di Pilkada Buteng. Diawali dengan PKB dan PKS yang menerbitkan SK resmi, kemudian disusul dengan NasDem, PDIP, dan PPP.</p>\r\n<p style=\"text-align: justify;\">&ldquo;PKB dan PKS sudah jelas lebih dahulu mengeluarkan SK dukungan. Alhamdulillah, hari ini NasDem dan PPP juga sudah memberikan SK dukungan kepada Samahuddin,&rdquo; ungkap Muhiddin melalui telepon selulernya, kemarin.</p>\r\n<p style=\"text-align: justify;\">Untuk dukungan PDIP, diakuinya belum ada SK resmi yang dikeluarkan. Namun, partai besutan Megawati Soekarnoputri itu sudah menyurati pasangan Samahuddin-La Ntau untuk mengikuti sekolah partai untuk calon kepala daerah dan wakil kepala daerah dari PDIP yang dilaksanakan 30 Agustus sampai 3 September 2016.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Alhamdulillah, dari beberapa calon kepala daerah lainnya di Buteng, hanya pasangan Samahuddin-La Ntau yang diundang mengikuti kegiatan tersebut. Ini membuktikan peluang SamaTau didukung PDIP cukup besar,&rdquo; katanya.</p>\r\n<p style=\"text-align: justify;\">Melalaui media ini, Muhiddin mengucapkan terima kasih kepada partai-partai yang sudah mendukung SamaTau untuk bertarung di Pilkada Buteng nanti.</p>\r\n<p>&nbsp;</p>', 2, 1, 'publish', 'artikel-pilkada-buteng-mansur-amila-vs-samahuddin-2016-11-17-1479338841.jpg', '2016-12-22'),
(3, 'Hari Pahlawan, Mahasiswa Demo Usut Kasus Paket 9 dan Islamic Center Kotamara', 'hari-pahlawan-mahasiswa-demo-usut-kasus-paket-9-dan-islamic-center-kotamara', 'Tepat peringatan hari pahlawan yang jatuh pada 10 November, puluhan Mahasiswa yang tergabung dalam Himpunan Mahasi', '<p style=\"text-align: justify;\">Tepat peringatan hari pahlawan yang jatuh pada 10 November, puluhan Mahasiswa yang tergabung dalam Himpunan Mahasiswa Islam (HMI) Cabang Baubau menggelar unjuk rasa di dua instansi penegak hukum. Mereka menuntut penuntasan kasus-kasus dugaan korupsi yang melibatkan pejabat daerah.</p>\r\n<p style=\"text-align: justify;\">Kasus-kasus dugaan korupsi yang disinggung demonstran diantaranya reklamasi pantai Wameo atau dikenal dengan istilah paket 9, Islamic Center Kotamara dan Pungutan Liar (Pungli) di jembatan batu.</p>\r\n<p style=\"text-align: justify;\">Memulai aksinya, massa mendatangi Mapolres Baubau untuk mendengar penjelasan langsung Kapolres Baubau soal penanganan kasus korupsi. Namun sayang, mahasiswa mengaku tidak ditemui Kapolres.</p>\r\n<p style=\"text-align: justify;\">Tidak mendapatkan penjelasan Kapolres, massa kemudian bergerak ke kantor Kejaksaan Negeri (Kejari) Baubau. Didepan Kejari, massa yang membakar ban bekas sempat adu mulut dengan aparat kepolisian yang mengawal jalannnya aksi. Sontak, keramaian itu menarik perhatian warga di sekitar dan pelajar yang baru pulang sekolah.</p>\r\n<p style=\"text-align: justify;\">Dalam orasinya, mahasiswa menduga penegak hukum telah &ldquo;masuk angin&rdquo; dalam mengusut kasus dugaan korupsi yang melibatkan pejabat. Mereka juga sempat berharap media ikut memainkan peran dalam proses penegakkan hukum kasus korupsi tersebut.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Kami mendapatkan informasi penyidik telah masuk angin, ada kongkalikong dalam menangani kasus. Mudah-mudahan media tidak seperti itu. Kita harap media bisa mengawal kasus-kasus korupsi,&rdquo; teriak salah seorang demonstran.</p>\r\n<p style=\"text-align: justify;\">Setelah puas berorasi, demonstran kemudian dipersilahkan masuk di halaman gedung Kejari Baubau. Massa aksi diterima langsung Kasi Intel Kejari Baubau, Ruslan.</p>\r\n<p style=\"text-align: justify;\">Di hadapan massa, Ruslan menegaskan, pihaknya tidak bermain-main apalagi &ldquo;masuk angin&rdquo; dalam mengusut kasus dugaan Pungli jembatan batu. Saat ini proses penyidikannya masih terus berlangsung.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Insa Allah kasus ini selesai, percayakan saja kepada kami. Kami masih menyusun berkas perkara selengkap-lengkapnya. Kita tidak mau melempar kasus ini ke pengadilan sebelum memiliki berkas yang matang,&rdquo; tandasnya.</p>\r\n<p style=\"text-align: justify;\">Sementara itu, kata Ruslan, pihaknya tidak bisa memberikan penjelasan jauh soal kasus paket 9 dan Islamic Center. Dalam kasus ini, pihaknya hanya sebatas dalam kapasitas jaksa peneliti dan jaksa penuntut. &ldquo;Islamic Center dan paket 9, itu bukan kewenangan kami dalam penyidikannya. Kalau mau tanyakan kasus ini, silahkan tanyakan ke Polres,&rdquo; ujarnya.</p>', 6, 1, 'publish', 'artikel-hari-pahlawan-mahasiswa-demo-usut-kasus-paket-9-dan-islamic-center-kotamara-2016-11-17-1479341973.jpg', '2016-11-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen`
--

CREATE TABLE `dokumen` (
  `id_dokumen` int(11) NOT NULL,
  `judul_dokumen` varchar(114) DEFAULT NULL,
  `alias_dokumen` varchar(114) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `status_dokumen` varchar(15) DEFAULT NULL,
  `nomor_dokumen` varchar(20) DEFAULT NULL,
  `tahun_dokumen` varchar(20) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `deskripsi_dokumen` varchar(114) DEFAULT NULL,
  `file_dokumen` varchar(114) NOT NULL,
  `type_dokumen` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(10) NOT NULL,
  `nama_galeri` varchar(150) NOT NULL,
  `isi_galeri` text NOT NULL,
  `ket_galeri` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `nama_galeri`, `isi_galeri`, `ket_galeri`) VALUES
(3, 'Kunjungan Mahasiswa ke dalam Candi Prambanan', 'stkiptgalek-kunjungan-mahasiswa-ke-dalam-candi-prambanan-1-20160320-1458449530.jpg', 'Kunjungan Mahasiswa ke dalam Candi Prambanan'),
(6, 'panorama candi prambanan', 'stkiptgalek-panorama-candi-prambanan-4-20160320-1458449775.jpg', 'panorama candi prambanan'),
(12, 'elina hartanto', 'stkiptgalek-elina-hartanto-11-20160320-1458450256.jpg', 'elina hartanto'),
(13, 'percobaan', 'stkiptgalek-percobaan-13-20160320-1458450387.jpg', 'percobaan berlanjut'),
(14, 'Sadranan Beach Yogyakarta', 'stkiptgalek-sadranan-beach-yogyakarta-15-20160320-1458456156.jpg', 'Sadranan Beach Yogyakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `info_kampus`
--

CREATE TABLE `info_kampus` (
  `id_info_kampus` int(10) NOT NULL,
  `judul_info_kampus` varchar(100) NOT NULL,
  `alias_info_kampus` varchar(100) NOT NULL,
  `isi_info_kampus` text NOT NULL,
  `tgl_info_kampus` date NOT NULL,
  `status_info_kampus` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `info_kampus`
--

INSERT INTO `info_kampus` (`id_info_kampus`, `judul_info_kampus`, `alias_info_kampus`, `isi_info_kampus`, `tgl_info_kampus`, `status_info_kampus`) VALUES
(1, 'Mekanisme penerimaan mahasiswa baru angkatan 2014-2015', 'mekanisme-penerimaan-mahasiswa-baru-angkatan-2014-2015', '<p>Pengumuman penerimaan mahasiswa baru angkatan 2014-2015</p>', '2016-03-19', 'publish'),
(3, 'International Short Course on Smart Grid and Green Energy', 'international-short-course-on-smart-grid-and-green-energy', '<p>International Short Course on Smart Grid and Green Energy</p>', '2016-03-19', 'publish'),
(4, 'Perubahan Nilai Mata Kuliah KP/TA/Tesis/Disertasi Semester II dan Semester Pendek 2013/2014', 'perubahan-nilai-mata-kuliah-kptatesisdisertasi-semester-ii-dan-semester-pendek-20132014', '<p>Perubahan Nilai Mata Kuliah KP/TA/Tesis/Disertasi Semester II dan Semester Pendek 2013/2014</p>', '2016-03-19', 'publish'),
(7, 'Nilai dan Peringkat Akreditasi Program Studi pada Program Doktor', 'nilai-dan-peringkat-akreditasi-program-studi-pada-program-doktor', '<h4 class=\"lblttl2\" style=\"box-sizing: border-box; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.1; color: #34495e; margin-top: 0px; margin-bottom: 0px; font-size: 12px;\">Nilai dan Peringkat Akreditasi Program Studi pada Program Doktor</h4>', '2016-03-19', 'publish'),
(8, 'Tim Sosialisasi SNMPTN dan “Unpad Nyaah ka Jabar” Berkunjung ke Kab Majalengka dan Kab Cianjur', 'tim-sosialisasi-snmptn-dan-unpad-nyaah-ka-jabar-berkunjung-ke-kab-majalengka-dan-kab-cianjur', '<h4 class=\"lblttl2\" style=\"box-sizing: border-box; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.1; color: #34495e; margin-top: 0px; margin-bottom: 0px; font-size: 12px;\">Tim Sosialisasi SNMPTN dan &ldquo;Unpad Nyaah ka Jabar&rdquo; Berkunjung ke Kab Majalengka dan Kab Cianjur</h4>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&nbsp;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&nbsp;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&nbsp;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&nbsp;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&nbsp;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&nbsp;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&nbsp;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&nbsp;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&nbsp;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&nbsp;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&nbsp;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&nbsp;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&nbsp;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&nbsp;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&nbsp;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2016-03-19', 'publish'),
(9, 'Informasi Mengenai Pengisian KRS TA 2015', 'informasi-mengenai-pengisian-krs-ta-2015', '<h4 class=\"lblttl2\" style=\"box-sizing: border-box; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.1; color: #34495e; margin-top: 0px; margin-bottom: 0px; font-size: 12px;\">Informasi Mengenai Pengisian KRS TA 2015</h4>', '2016-03-19', 'publish'),
(10, 'Info beasiswa Kampus Bidik Misi', 'info-beasiswa-kampus-bidik-misi', '<p>Info beasiswa Kampus Bidik Misi</p>', '2016-03-19', 'publish'),
(11, 'Publikasi website Pemerintahan Kabupaten Buton Tengah Versi RF001 alfa', 'publikasi-website-pemerintahan-kabupaten-buton-tengah-versi-rf001-alfa', '<p>Publikasi website Pemerintahan Kabupaten Buton Tengah Versi RF001 alfa</p>', '2016-12-25', 'publish');

-- --------------------------------------------------------

--
-- Struktur dari tabel `info_pt`
--

CREATE TABLE `info_pt` (
  `id_info_pt` int(11) NOT NULL,
  `nama_info_pt` varchar(114) DEFAULT NULL,
  `kode_pt` varchar(114) DEFAULT NULL,
  `kontak_1` varchar(114) DEFAULT NULL,
  `kontak_2` varchar(114) DEFAULT NULL,
  `kontak_3` varchar(114) DEFAULT NULL,
  `kontak_4` varchar(114) DEFAULT NULL,
  `header_pt` varchar(114) NOT NULL,
  `alamat_pt` varchar(114) DEFAULT NULL,
  `slogan` varchar(114) DEFAULT NULL,
  `logo_pt` varchar(114) DEFAULT NULL,
  `logo_kecil_pt` varchar(114) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `info_pt`
--

INSERT INTO `info_pt` (`id_info_pt`, `nama_info_pt`, `kode_pt`, `kontak_1`, `kontak_2`, `kontak_3`, `kontak_4`, `header_pt`, `alamat_pt`, `slogan`, `logo_pt`, `logo_kecil_pt`) VALUES
(1, 'Pemerintah Kabupaten Buton Tengah', '-', '-', '-', '000-1111-2222', '1111-11111-1111', '', 'alamatnya disini', 'Negeri Seribu Gua', 'logo-pemerintah-kabupaten-buton-tengah-20161222-1482372133.png', 'logo.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(114) DEFAULT NULL,
  `alias_kategori` varchar(114) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `alias_kategori`) VALUES
(1, 'Tanpa Kategori', 'tanpa-kategori'),
(2, 'Berita Warga', 'berita-warga'),
(6, 'Manga', 'manga'),
(7, 'Life Style', 'life-style');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_link`
--

CREATE TABLE `kategori_link` (
  `id_kategori_link` int(11) NOT NULL,
  `nama_kategori_link` varchar(114) NOT NULL,
  `alias_kategori_link` varchar(114) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_link`
--

INSERT INTO `kategori_link` (`id_kategori_link`, `nama_kategori_link`, `alias_kategori_link`) VALUES
(1, 'Bergambar', 'bergambar'),
(4, 'Pemerintah Pusat', 'pemerintah-pusat'),
(5, 'Pemerintah Provinsi', 'pemerintah-provinsi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laman`
--

CREATE TABLE `laman` (
  `id_laman` int(11) NOT NULL,
  `judul_laman` varchar(114) NOT NULL,
  `alias_laman` varchar(114) NOT NULL,
  `status_laman` varchar(15) NOT NULL,
  `s_laman` int(11) NOT NULL,
  `link` varchar(114) NOT NULL DEFAULT 'none',
  `deskripsi_laman` varchar(114) NOT NULL,
  `isi_laman` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `img_laman` varchar(114) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laman`
--

INSERT INTO `laman` (`id_laman`, `judul_laman`, `alias_laman`, `status_laman`, `s_laman`, `link`, `deskripsi_laman`, `isi_laman`, `id_user`, `img_laman`) VALUES
(2, 'Profil', 'profil', 'publish', 0, 'none', 'Profil Pemda Buteng', '<p>Profil Pemda Buteng</p>', 1, 'laman-profil-20161111-1478842007.jpg'),
(3, 'Prasyarat', 'prasyarat', 'publish', 0, 'none', 'Bacalah secara seksama prasyarat penggunaan di bawah sebelum memanfaatkan situs web ini.', '<table id=\"AutoNumber1\" style=\"font-size: 9pt; font-family: tahoma, verdana, arial, sans-serif; border-collapse: collapse;\" border=\"0\" width=\"95%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"100%\">\r\n<p style=\"text-align: justify;\" align=\"left\">Bacalah secara seksama prasyarat penggunaan di bawah sebelum memanfaatkan situs web ini. Sehingga Anda dapat menggunakan situs web ini dengan baik. Bila anda tidak menyetujui prasyarat penggunaan, sebaiknya Anda tidak meneruskan ke langkah berikutnya. Apabila Anda langsung meneruskan ke halaman berikutnya, maka Anda dianggap faham dan setuju dengan isi prasyarat penggunaan. Persyaratan ini dapat berubah sewaktu-waktu sesuai dengan kebijakan yang ditetapkan, oleh sebab itu diharapkan Anda mengikuti perkembangannya secara periodik.&nbsp;<br /><br /><strong>Jaminan Sajian</strong><br />Situs web ini dibangun untuk kenyamanan pengunjung Internet kami. Untuk itu kami berusaha menyajikan seluruh informasi (teks, grafis dan seluruh atribut yang ada) dengan sebaik-baiknya. Seluruh halaman situs web ini dirancang menggunakan format 800 x 600 piksel dan gunakanlah browser Internet Explorer (versi 5.00 ke atas) untuk mendapatkan hasil optimal layanan. Namun kami tidak dapat menjamin bahwa informasi yang kami sajikan dapat memenuhi keinginan seluruh pengguna situs web ini.&nbsp;<br /><br /><strong>Copyright</strong><br />Situs web ini merupakan bagian yang tidak terpisahkan dari Portal Online Departemen Keuangan (Depkeu). Dengan demikian, isi keseluruhan (teks, grafis dan seluruh atribut yang ada) pada situs web ini adalah karya cipta dan properti Depkeu yang dilindungi hukum. Segala bentuk penggunaan material yang bersifat komersial harus seizin&nbsp;<strong>Biro Hukum Depkeu</strong>. Segala tindakan yang dengan sengaja mengakibatkan rusaknya data, program, informasi dan hal-hal yang berkaitan dengan itu, dianggap sebagai perbuatan melanggar hukum.&nbsp;<br /><br /><strong>Virus</strong><br />Dampak dari perkembangan teknologi informasi adalah timbulnya virus komputer baru di Internet, maka kami memperingatkan Anda tentang bahaya yang ditimbulkan oleh virus tersebut terhadap sistem Anda. Merupakan tanggung jawab Anda untuk mendeteksi semua materi yang di-download dari Internet. Kami tidak bertanggung jawab terhadap segala bahaya atau kerusakan yang ditimbulkan oleh virus tersebut.&nbsp;<br /><br /><strong>Keamanan Transmisi</strong><br />Penggunaan Internet dan e-mail tidaklah bersifat rahasia. Karena terdapat kemungkinan informasi yang dikirimkan kepada kami terbaca atau digunakan oleh pihak lain. Guna melindungi rahasia anda, sebaiknya e-mail yang dikirimkan tidak berisi informasi yang sensitif seperti nilai rekening, laporan keuangan, dsb.&nbsp;<br /><br /><strong>Terminasi Akses</strong><br />Kami berhak untuk menghentikan akses terhadap situs ini dengan memproteksi password terhadap penyalahgunaan situs ini.&nbsp;<br /><br /><strong>Umpan Balik</strong><br />Kami menghargai segala masukan yang diberikan kepada kami, untuk menghindari segala kesalahpahaman. Apapun yang anda kirimkan kepada kami, baik ide, saran, usulan, dsb; akan menjadi milik kami tanpa diberikan kompensasi dan tidak ada klaim untuk hal tersebut.&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 'default.jpg'),
(4, 'Tentang Kami', 'tentang-kami', 'publish', 0, 'none', 'jaringan Dokumentasi dan Informasi (JDI) Hukum merupakan sistem yang dibangun untuk melaksanakan sebagian tugas da', '<table id=\"AutoNumber1\" style=\"font-size: 9pt; font-family: tahoma, verdana, arial, sans-serif; border-collapse: collapse; height: 409px;\" border=\"0\" width=\"679\" cellspacing=\"1\" cellpadding=\"1\">\r\n<tbody>\r\n<tr>\r\n<td width=\"100%\">\r\n<p align=\"justify\">Jaringan Dokumentasi dan Informasi (JDI) Hukum merupakan sistem yang dibangun untuk melaksanakan sebagian tugas dan fungsi&nbsp;<a style=\"color: #000000;\" href=\"http://www.jdih.kemenkeu.go.id/Ind/default.asp?strArghome=nothome&amp;strArg=ttg02\"><strong>Biro Hukum</strong></a>&nbsp;Sekretariat Jenderal Departemen Keuangan yaitu penyusunan dokumentasi dan informasi peraturan perundang-undangan di bidang keuangan khususnya yang berkaitan dengan tugas pokok dan fungsi Departemen Keuangan.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\" width=\"100%\">\r\n<p align=\"justify\">Landasan JDI Hukum Keputusan Menteri Keuangan RI No.76/PMK.01/2007 tanggal 10 Juli 2007</p>\r\n<p align=\"justify\"><strong>Visi :</strong></p>\r\n<p align=\"justify\"><strong>\"Menjadi penyedia informasi peraturan perundang-undangan dalam rangka menunjang penelitian perencanaan dan pembangunan hukum di bidang keuangan dan kekayaan negara\"</strong></p>\r\n<p align=\"justify\"><strong>Misi :</strong></p>\r\n<ul>\r\n<li>\r\n<p align=\"justify\"><strong>Meningkatkan pelayanan dan memberikan kemudahan akses kepada pimpinan Departemen Keuangan pada khususnya dan publik pada umumnya untuk mendapatkan informasi peraturan perundang-undangan di bidang keuangan dan kekayaan negara dalam rangka mendukung terwujudnya e-Goverment ;</strong></p>\r\n</li>\r\n<li>\r\n<p align=\"justify\"><strong>Memperluas dan mengefektifkan jaringan kerja dengan lembaga terkait, dalam rangka meningkatkan kinerja JDI Hukum bidang keuangan dan kekayaan negara;</strong></p>\r\n</li>\r\n<li>\r\n<p align=\"justify\"><strong>Meningkatkan Program Penyuluhan Hukum serta JDI Hukum bidang keuangan dan kekayaan negara dalam rangka pengembangan budaya hukum dan kesadaran hukum.</strong></p>\r\n</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 'default.jpg'),
(5, 'selamat datang', 'selamat-datang', 'draft', 0, 'none', 'selamat datang di website remi pemerintahan kabupaten buton tengah', '<p style=\"text-align: justify;\">Kabupaten Buton Selatan atau disingkat Busel merupakan salah satu kabupaten di Provinsi Sulawesi Tenggara, hasil pemekaran dari Kabupaten Buton pada pertengahan tahun 2014 menjelang akhir kepengurusan DPR RI periode 2009-2014. Alasan pemekaran kabupaten ini salah satunya karena akses yang menghambat pelayanan. Sejak pemekaran Kota Baubau pada tahun 2001, ibukota Kabupaten Buton dipindahkan ke Pasarwajo. Akses menuju Pasarwajo bagi masyarakat Buton Selatan harus melalui Kota Baubau terlebih dahulu karena belum ada akses langsung dari wilayah Buton Selatan ke Pasarwajo. Terlebih beberapa daerah di Buton Selatan merupakan pulau-pulau yang terpisah dari Pulau Buton, seperti Pulau Kadatua, Pulau Siompu, dan Pulau Batu Atas, pulau paling selatan di Sulawesi Tenggara. Kabupaten Buton Selatan sebagian besar wilayahnya terletak di Pulau Buton yang merupakan pulau terbesar di luar pulau induk Kepulauan Sulawesi, atau pulau ke-130 terbesar di dunia.</p>\r\n<p style=\"text-align: justify;\">Buton Selatan telah eksis sejak zaman Kerajaan dan Kesultanan Buton. Dalam Undang-Undang Martabat Tujuh (sekitar tahun 1610), yakni undang-undang Kesultanan Buton pada masa Sultan Buton ke-4, disebutkan daerah-daerah Kesultanan Buton. Kesultanan Buton terdiri atas 72 kadie yang diduduki oleh 30 menteri dan 40 bobato. Sedangkan sisanya menandakan kaum yang memegang pemerintahan di pusat. Dari 70 bagian tersebut dibagi lagi menjadi dua bagian besar yakni Pale Matanayo dan Pale Sukanayo [3]. Di wilayah Pale Matanayo, Menteri Baluwu mengepalai Rongi, Sempa-Sempa, Tambunaloko, dan Kaindea (Distrik Sampolawa) dan Kaoengkeongkea (Distrik Pasarwajo) dengan nama kesatuannya Lapandewa. Selanjutnya Menteri Ketapi di Busoa (Distrik Batauga), Lakina Tobe-Tobe di Tobe-Tobe (Distrik Batauga), dan Lakina Batauga di Batauga (Distrik Batauga) [4]. Di wilayah Pale Sukanayo, Menteri Peropa di Wabula dan Wasuemba (Distrik Sampolawa), Warugana (Distrik Batauga), dan Ballo (Kabaena). Kemudian Menteri Gama di Lipu, Kaufe, Kapea, dan Banabungi (di pulau Kadatua) yang masuk pada Distrik Batauga dan Wakoko Distrik Pasarwajo. Menteri Siompu di Biwina-pada, Molona, Kaimbulawa, dan Lontoi (terdapat di Pulau Siompu) di Distrik Batauga. Selanjutnya Menteri Lantongau di Katokobari (Distrik Mawasangka) dan Saumolewa (Distrik Sampolawa), Lakina Bola di Lakulepa dan Rano (Distrik Batauga), Lakina Sampolawa di Katilombu Uwe-bonto, dan Mambulu (Distrik Sampolawa), Lakina Kambe-Kambero (Distrik Batauga), Lakina Labalawa (Distrik Batauga), Lakina Lawele di Lawele (Distrik Batauga), dan Lakina Laompo di Laompo (Distrik Batauga) [5].</p>', 1, 'laman-selamat-datang-20161222-1482400362.JPG'),
(6, 'Sambutan Bupati Buton Tengah', 'sambutan-bupati-buton-tengah', 'draft', 0, 'none', 'Bupati Buton TengahIr. H. Abdul Mansur Amila, M.TP', '<p style=\"text-align: justify;\">Puji dan syukur marilah sama-sama kita panjatkan kehadrat Allah SWT atas limpahan nikmat, rahmat serta karunia-Nya yang diberikan kepada kita sekalian, terutama nikmat iman dan nikmat Islam, nikmat sehat wal\'afiat serta nikmat panjang umur, sehingga alhamdulillah kita bisa berkumpul di tempat kediaman kami sesuai dengan undangan kami bahwa pada malam/siang hari ini kami ingin melaksanakan tasyakuran atas kelahiran putera pertama kami yang lahir pada hari ....... tanggal ..... dan alhamdulillah dalam keadaan sehat wal\'afiat. Semoga&hellip;</p>', 1, 'laman-sambutan-bupati-buton-tengah-20161222-1482400945.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `link`
--

CREATE TABLE `link` (
  `id_link` int(11) NOT NULL,
  `judul_link` varchar(50) NOT NULL,
  `data_link` varchar(114) NOT NULL,
  `alias_link` varchar(50) NOT NULL,
  `id_kategori_link` int(11) NOT NULL,
  `img_link` varchar(114) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `link`
--

INSERT INTO `link` (`id_link`, `judul_link`, `data_link`, `alias_link`, `id_kategori_link`, `img_link`) VALUES
(17, 'JDIH Kemendagri', 'http://jdih.setjen.kemendagri.go.id/', 'jdih-kemendagri', 4, 'default.jpg'),
(18, 'JDIH Kemenkeu', 'http://www.sjdih.depkeu.go.id/Ind/', 'jdih-kemenkeu', 4, 'default.jpg'),
(19, 'Amnesti Pajak', 'http://www.pajak.go.id', 'amnesti-pajak', 1, 'link-amnisti-pajak-2017-01-26-1485393664.jpg'),
(20, 'JDIH Mensesneg', 'https://www.setneg.go.id/', 'jdih-mensesneg', 4, 'default.jpg'),
(21, 'JDIH  Menkumham', 'http://www.kemenkumham.go.id/', 'jdih-menkumham', 4, 'default.jpg'),
(22, 'JDIH Kementerian Pendidikan', 'http://jdih.kemdikbud.go.id/new/public/produkhukum', 'jdih-kementerian-pendidikan', 4, 'default.jpg'),
(23, 'Kementerian Kesehatan', 'http://www.depkes.go.id/', 'kementerian-kesehatan', 4, 'default.jpg'),
(24, 'Kementerian Pekerjaan Umum (PU)', 'http://www.pu.go.id/', 'kementerian-pekerjaan-umum-pu', 4, 'default.jpg'),
(25, 'JDIH Pemerintah Provinsi', 'http://www.sulawesitenggaraprov.go.id/', 'jdih-pemerintah-provinsi', 5, 'default.jpg'),
(26, 'Pemerintahan Provinsi Sulawesi Tenggara', 'http://www.sulawesitenggaraprov.go.id/', 'pemerintahan-provinsi-sulawesi-tenggara', 1, 'link-pemerintahan-provinsi-sulawesi-tenggara-2017-01-26-1485405656.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pimpinan_pt`
--

CREATE TABLE `pimpinan_pt` (
  `id_pimpinan_pt` int(11) NOT NULL,
  `nama_pimpinan_pt` varchar(114) NOT NULL,
  `jabatan_pimpinan_pt` varchar(50) NOT NULL,
  `img_pimpinan_pt` varchar(114) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pimpinan_pt`
--

INSERT INTO `pimpinan_pt` (`id_pimpinan_pt`, `nama_pimpinan_pt`, `jabatan_pimpinan_pt`, `img_pimpinan_pt`) VALUES
(2, 'Ir. H. L. M. Sjamsul Qamar', 'Rektor Unidayan', 'pimpinan-namanya-disinispdmpd-2017-01-30-1485746679.jpg'),
(3, 'WA ODE MAASRA M., S.Sos. , M.Si ', 'Yayasan Unidayan', 'pimpinan-namanya-nomor-2-disinispdmpd-2017-01-30-1485746586.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `img_slider` varchar(114) NOT NULL,
  `alias_slider` varchar(114) NOT NULL,
  `judul_slider` varchar(114) NOT NULL,
  `ket_slider` varchar(114) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id_slider`, `img_slider`, `alias_slider`, `judul_slider`, `ket_slider`) VALUES
(1, 'slider-welcome-to-buton-tengah-2017-04-26-1493160274.jpg', 'welcome-to-buton-tengah', 'Welcome To Buton Tengah', ''),
(2, 'slider-ramah-budaya-2017-04-26-1493160265.jpg', 'ramah-budaya', 'Ramah Budaya', ''),
(3, 'slider-negeri-seribu-goa-2017-04-26-1493160287.jpg', 'negeri-seribu-goa', 'Negeri Seribu Goa', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `profile` varchar(114) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `profile`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1493169833, 1, 'Admin', 'istrator', 'ADMIN', '0', 'users-admin-20161117-1479339374.jpg'),
(5, '::1', 'ejhayoe', '$2y$08$ss6aWEfnINWENEscXT7wcejTMF5E/wQfy4lASWKBJSCGtS/1ABq7O', NULL, 'rezarafiqmz@gmail.com', NULL, NULL, NULL, NULL, 1480886475, 1482008492, 1, 'Ejha', 'Yoe', 'Hanabi.com', '0987654321', 'users-ejha-20161204-1480886474.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(19, 1, 1),
(20, 1, 2),
(27, 5, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id_dokumen`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_kampus`
--
ALTER TABLE `info_kampus`
  ADD PRIMARY KEY (`id_info_kampus`);

--
-- Indexes for table `info_pt`
--
ALTER TABLE `info_pt`
  ADD PRIMARY KEY (`id_info_pt`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kategori_link`
--
ALTER TABLE `kategori_link`
  ADD PRIMARY KEY (`id_kategori_link`);

--
-- Indexes for table `laman`
--
ALTER TABLE `laman`
  ADD PRIMARY KEY (`id_laman`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id_link`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pimpinan_pt`
--
ALTER TABLE `pimpinan_pt`
  ADD PRIMARY KEY (`id_pimpinan_pt`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id_dokumen` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `info_kampus`
--
ALTER TABLE `info_kampus`
  MODIFY `id_info_kampus` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `info_pt`
--
ALTER TABLE `info_pt`
  MODIFY `id_info_pt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `kategori_link`
--
ALTER TABLE `kategori_link`
  MODIFY `id_kategori_link` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `laman`
--
ALTER TABLE `laman`
  MODIFY `id_laman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id_link` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pimpinan_pt`
--
ALTER TABLE `pimpinan_pt`
  MODIFY `id_pimpinan_pt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
