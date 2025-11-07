import 'package:flutter/material.dart';
import 'esquema_color.dart';
import 'tipografia.dart';

class TemaGeneral {
  static final temaClaro = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      primary: ColorApp.primario,
      secondary: ColorApp.secundario,
      surface: ColorApp.fondoClaro,
    ),
    scaffoldBackgroundColor: ColorApp.fondoClaro,
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorApp.primario,
      foregroundColor: Colors.white,
      elevation: 6,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
   cardTheme: const CardThemeData(
  color: Colors.white,
  elevation: 4,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
  ),
  margin: EdgeInsets.symmetric(vertical: 6, horizontal: 4),
),
    textTheme: const TextTheme(
      headlineLarge: TipografiaApp.tituloPrincipal,
      bodyMedium: TipografiaApp.subtitulo,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorApp.primario,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
        elevation: 6,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      hintStyle: const TextStyle(color: Color(0xFF9E9E9E)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: ColorApp.secundario, width: 1.3),
      ),
    ),
  );
}
