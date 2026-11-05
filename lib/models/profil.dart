class Profil {
  final String nama;
  final String nim;
  final String kelas;
  final String prodi;
  final String bio;
  final String email;
  final String? telepon;
  final String lokasi;
  final String fotoAsset;
  final int proyek;
  final int pengikut;
  final int mengikuti;
  final List<String> keahlian;
  final List<String> galeri;

  const Profil({
    required this.nama,
    required this.nim,
    required this.kelas,
    required this.prodi,
    required this.bio,
    required this.email,
    required this.telepon,
    required this.lokasi,
    required this.fotoAsset,
    required this.proyek,
    required this.pengikut,
    required this.mengikuti,
    required this.keahlian,
    required this.galeri,
  });
}
