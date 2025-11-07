import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final String label;
  final bool oculto;
  final TextEditingController controller;

  const CampoTexto({
    super.key,
    required this.label,
    required this.controller,
    this.oculto = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: oculto,
      decoration: InputDecoration(labelText: label),
    );
  }
}
