import '../models/profil.dart';

const Profil dataProfil = Profil(
  nama: 'Nama Lengkap Mahasiswa',
  nim: '0000000000',
  kelas: '5A',
  prodi: 'Teknik Informatika, Fakultas Ilmu Komputer dan Teknologi Informasi',
  bio: 'Mahasiswa semester 5 yang sedang belajar membangun aplikasi mobile '
      'dengan Flutter. Suka membuat antarmuka yang rapi dan mudah dipakai.',
  email: 'nama.lengkap.mahasiswa@student.universitas-contoh.ac.id',
  telepon: null,
  lokasi: 'Kota, Provinsi',
  fotoAsset: 'assets/foto_profil.jpg',
  proyek: 4,
  pengikut: 128,
  mengikuti: 75,
  keahlian: [
    'Flutter',
    'Dart',
    'Git',
    'UI Design',
    'Firebase',
    'REST API',
    'Figma',
  ],
  galeri: ['Aplikasi Kasir', 'Catatan Harian', 'Toko Online', 'Kalkulator'],
);
