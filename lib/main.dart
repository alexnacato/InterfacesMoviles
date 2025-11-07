// main.dart
import 'package:flutter/material.dart';
import 'temas/tema_general.dart';
import 'Vistas/page.perfil.dart';
import 'Vistas/page_login.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Login MVC",
      theme: TemaGeneral.temaClaro,
      initialRoute: '/',
      routes: {
        '/': (context) => const PageLogin(),
        '/perfil': (context) => const PagePerfil(),
      },
    );
  }
}
