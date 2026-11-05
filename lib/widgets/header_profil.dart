import 'package:flutter/material.dart';

import '../models/profil.dart';

class HeaderProfil extends StatelessWidget {
  final Profil profil;

  const HeaderProfil({super.key, required this.profil});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context).textTheme;
    final warna = Theme.of(context).colorScheme;
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: 168,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/banner.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    warna.primary.withOpacity(0.45),
                    BlendMode.srcATop,
                  ),
                ),
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(32),
                ),
              ),
            ),
            Positioned(
              bottom: -54,
              child: CircleAvatar(
                radius: 58,
                backgroundColor: warna.surface,
                child: CircleAvatar(
                  radius: 52,
                  backgroundImage: AssetImage(profil.fotoAsset),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 60),
        Text(
          profil.nama,
          textAlign: TextAlign.center,
          style: tema.headlineSmall?.copyWith(
            color: const Color(0xFF40171D),
            fontWeight: FontWeight.w800,
            letterSpacing: -0.4,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          '${profil.nim}  •  ${profil.kelas}',
          style: tema.bodyMedium?.copyWith(color: warna.primary),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            profil.bio,
            textAlign: TextAlign.center,
            style: tema.bodyMedium?.copyWith(height: 1.5),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
