import 'package:flutter/material.dart';

class DaftarKeahlian extends StatelessWidget {
  final List<String> keahlian;

  const DaftarKeahlian({super.key, required this.keahlian});

  @override
  Widget build(BuildContext context) {
    final warna = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.auto_awesome, size: 20, color: warna.primary),
            const SizedBox(width: 8),
            Text(
              'Keahlian',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: [
            for (final k in keahlian)
              Chip(
                avatar: Icon(Icons.check_rounded, size: 17, color: warna.primary),
                label: Text(k),
                labelStyle: TextStyle(
                  color: warna.onSurface,
                  fontWeight: FontWeight.w600,
                ),
                side: BorderSide(color: warna.outlineVariant),
                backgroundColor: warna.surface,
              ),
          ],
        ),
      ],
    );
  }
}
