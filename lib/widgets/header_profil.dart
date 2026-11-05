import 'package:flutter/material.dart';

import '../models/profil.dart';

class HeaderProfil extends StatelessWidget {
  final Profil profil;

  const HeaderProfil({super.key, required this.profil});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context).textTheme;
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 160,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF3949AB), Color(0xFF7986CB)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            Positioned(
              bottom: -50,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(profil.fotoAsset),
              ),
            ),
          ],
        ),
        const SizedBox(height: 56),
        Text(
          profil.nama,
          textAlign: TextAlign.center,
          style: tema.headlineSmall,
        ),
        const SizedBox(height: 4),
        Text('${profil.nim} · ${profil.kelas}', style: tema.bodyMedium),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(profil.bio, textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
