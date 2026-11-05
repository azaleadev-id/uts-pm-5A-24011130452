import 'package:flutter/material.dart';

class GaleriProyek extends StatelessWidget {
  final List<String> judul;

  const GaleriProyek({super.key, required this.judul});

  @override
  Widget build(BuildContext context) {
    final warna = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Proyek', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: [
            for (final j in judul)
              Container(
                decoration: BoxDecoration(
                  color: warna.primaryContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Text(j, textAlign: TextAlign.center),
              ),
          ],
        ),
      ],
    );
  }
}
