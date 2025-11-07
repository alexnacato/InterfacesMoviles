import 'package:flutter/material.dart';

class InfoUsuario extends StatelessWidget {
  const InfoUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.secondary;
    final estilo = Theme.of(context).textTheme.bodyMedium;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.email, color: color, size: 28),
            const SizedBox(height: 6),
            Text('Email verificado', style: estilo),
          ],
        ),
        Column(
          children: [
            Icon(Icons.account_circle, color: color, size: 28),
            const SizedBox(height: 6),
            Text('Cuenta activa', style: estilo),
          ],
        ),
      ],
    );
  }
}
