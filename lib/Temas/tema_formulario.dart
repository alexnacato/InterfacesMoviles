import 'package:flutter/material.dart';
import 'esquema_color.dart';

class TemaFormulario {
  static final campoTexto = InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: ColorApp.primario, width: 2),
      borderRadius: BorderRadius.circular(12),
    ),
    labelStyle: const TextStyle(color: ColorApp.secundario),
  );
}
