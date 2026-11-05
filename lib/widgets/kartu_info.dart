import 'package:flutter/material.dart';

import '../models/profil.dart';

class KartuInfo extends StatelessWidget {
  final Profil profil;

  const KartuInfo({super.key, required this.profil});

  @override
  Widget build(BuildContext context) {
    final warna = Theme.of(context).colorScheme;
    return Card(
      color: warna.surface,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
        side: BorderSide(color: warna.outlineVariant),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Informasi',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: warna.primary,
                    fontWeight: FontWeight.w800,
                  ),
            ),
            const SizedBox(height: 8),
            _BarisInfo(ikon: Icons.email_outlined, teks: profil.email),
            _BarisInfo(ikon: Icons.phone_outlined, teks: profil.telepon ?? "-"),
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
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(ikon, size: 19, color: Theme.of(context).colorScheme.primary),
          ),
          const SizedBox(width: 12),
          Expanded(child: Text(teks)),
        ],
      ),
    );
  }
}
