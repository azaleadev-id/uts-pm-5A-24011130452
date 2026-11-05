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
        Row(
          children: [
            Icon(Icons.grid_view_rounded, size: 20, color: warna.primary),
            const SizedBox(width: 8),
            Text(
              'Proyek pilihan',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.85,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            for (var i = 0; i < judul.length; i++)
              Container(
                decoration: BoxDecoration(
                  color: warna.surface,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: warna.outlineVariant),
                ),
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: warna.primaryContainer,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.folder_open_rounded,
                        size: 19,
                        color: warna.primary,
                      ),
                    ),
                    Text(
                      judul[i],
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ],
    );
  }
}
