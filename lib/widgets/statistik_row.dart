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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _Stat(label: 'Proyek', nilai: proyek),
        _Stat(label: 'Pengikut', nilai: pengikut),
        _Stat(label: 'Mengikuti', nilai: mengikuti),
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
    return Column(
      children: [
        Text(
          '$nilai',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(label),
      ],
    );
  }
}
