import 'package:flutter/material.dart';

class DaftarKeahlian extends StatelessWidget {
  final List<String> keahlian;

  const DaftarKeahlian({super.key, required this.keahlian});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Keahlian', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        Row(
          children: [
            for (final k in keahlian)
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Chip(label: Text(k)),
              ),
          ],
        ),
      ],
    );
  }
}
