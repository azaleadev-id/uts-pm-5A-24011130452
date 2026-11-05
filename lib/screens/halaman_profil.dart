import 'package:flutter/material.dart';

import '../config.dart';
import '../data/data_profil.dart';
import '../widgets/daftar_keahlian.dart';
import '../widgets/galeri_proyek.dart';
import '../widgets/header_profil.dart';
import '../widgets/kartu_info.dart';
import '../widgets/statistik_row.dart';
import '../widgets/tombol_ikuti.dart';

class HalamanProfil extends StatefulWidget {
  const HalamanProfil({super.key});

  @override
  State<HalamanProfil> createState() => _HalamanProfilState();
}

class _HalamanProfilState extends State<HalamanProfil> {
  bool _mengikuti = false;
  int _pengikut = dataProfil.pengikut;

  void _toggleIkuti() {
    _mengikuti = !_mengikuti;
    _pengikut += _mengikuti ? 1 : -1;
  }

  @override
  Widget build(BuildContext context) {
    final p = dataProfil;
    const jarak = SizedBox(height: 16);

    final header = HeaderProfil(profil: p);
    final tombol = TombolIkuti(mengikuti: _mengikuti, onPressed: _toggleIkuti);
    final statistik = StatistikRow(
      proyek: p.proyek,
      pengikut: _pengikut,
      mengikuti: p.mengikuti,
    );
    final info = KartuInfo(profil: p);
    final keahlian = DaftarKeahlian(keahlian: p.keahlian);
    final galeri = GaleriProyek(judul: p.galeri);

    return Scaffold(
      appBar: AppBar(title: const Text('Profil Mahasiswa')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= kBreakpoint) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 320,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [header, jarak, tombol, jarak, statistik, jarak, info],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [keahlian, jarak, galeri],
                  ),
                ],
              ),
            );
          }
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                header,
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      tombol,
                      jarak,
                      statistik,
                      jarak,
                      info,
                      jarak,
                      keahlian,
                      jarak,
                      galeri,
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
