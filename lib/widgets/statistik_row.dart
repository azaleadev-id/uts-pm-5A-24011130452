import 'package:flutter/material.dart';

class StatistikRow extends StatelessWidget {
  final int proyek;
  final int pengikut;
  final int mengikuti;

  const StatistikRow({
    super.key,
    required this.proyek,
    required this.pengikut,
    required this.mengikuti,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _Stat(label: 'Proyek', nilai: proyek)),
        const SizedBox(width: 8),
        Expanded(child: _Stat(label: 'Pengikut', nilai: pengikut)),
        const SizedBox(width: 8),
        Expanded(child: _Stat(label: 'Mengikuti', nilai: mengikuti)),
      ],
    );
  }
}

class _Stat extends StatelessWidget {
  final String label;
  final int nilai;

  const _Stat({required this.label, required this.nilai});

  @override
  Widget build(BuildContext context) {
    final warna = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
      decoration: BoxDecoration(
        color: warna.primaryContainer,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Text(
            '$nilai',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: warna.onPrimaryContainer,
                  fontWeight: FontWeight.w800,
                ),
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: warna.onPrimaryContainer,
                ),
          ),
        ],
      ),
    );
  }
}
