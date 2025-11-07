import 'package:flutter/material.dart';

class BotonLogout extends StatelessWidget {
  final VoidCallback onPressed;

  const BotonLogout({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.logout),
      label: const Text('Cerrar sesión'),
    );
  }
}
