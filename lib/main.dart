import 'package:flutter/material.dart';

import 'screens/halaman_profil.dart';

void main() => runApp(const AplikasiProfil());

class AplikasiProfil extends StatelessWidget {
  const AplikasiProfil({super.key});

  @override
  Widget build(BuildContext context) {
    const merahUtama = Color(0xFFB3263E);
    return MaterialApp(
      title: 'Profil Mahasiswa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: merahUtama),
        scaffoldBackgroundColor: const Color(0xFFFFF7F5),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFF7F5),
          foregroundColor: Color(0xFF40171D),
          centerTitle: false,
        ),
      ),
      home: const HalamanProfil(),
    );
  }
}
