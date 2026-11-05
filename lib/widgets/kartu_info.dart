import 'package:flutter/material.dart';

import '../models/profil.dart';

class KartuInfo extends StatelessWidget {
  final Profil profil;

  const KartuInfo({super.key, required this.profil});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _BarisInfo(ikon: Icons.email_outlined, teks: profil.email),
            _BarisInfo(ikon: Icons.phone_outlined, teks: profil.telepon!),
            _BarisInfo(ikon: Icons.location_on_outlined, teks: profil.lokasi),
            _BarisInfo(ikon: Icons.school_outlined, teks: profil.prodi),
          ],
        ),
      ),
    );
  }
}

class _BarisInfo extends StatelessWidget {
  final IconData ikon;
  final String teks;

  const _BarisInfo({required this.ikon, required this.teks});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(ikon, size: 20),
          const SizedBox(width: 12),
          Text(teks),
        ],
      ),
    );
  }
}
