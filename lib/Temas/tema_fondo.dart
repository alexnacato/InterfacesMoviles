import 'package:flutter/material.dart';
import 'esquema_color.dart';

class TemaFondo {
  static const fondoClaro = BoxDecoration(
    gradient: LinearGradient(
      colors: [ColorApp.fondoClaro, Color(0xFFE3F2FD)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );
}
