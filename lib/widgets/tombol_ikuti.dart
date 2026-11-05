import 'package:flutter/material.dart';

class TombolIkuti extends StatelessWidget {
  final bool mengikuti;
  final VoidCallback onPressed;

  const TombolIkuti({
    super.key,
    required this.mengikuti,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    if (mengikuti) {
      return OutlinedButton.icon(
        onPressed: onPressed,
        icon: const Icon(Icons.check),
        label: const Text('Mengikuti'),
      );
    }
    return FilledButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.person_add_alt_1),
      label: const Text('Ikuti'),
    );
  }
}
