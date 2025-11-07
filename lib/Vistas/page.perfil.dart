import 'package:flutter/material.dart';
import '../../../temas/tipografia.dart';
import '../../../temas/esquema_color.dart';
import 'Widget/organismo/estadistica_usuario.dart';

class PagePerfil extends StatelessWidget {
  const PagePerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mi Perfil")),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFE8F1FF), Color(0xFFF8FAFD)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 10),
              // Avatar
             CircleAvatar(
  radius: 50,
  backgroundImage: const AssetImage('assets/images/alexander.png'),
  backgroundColor: Colors.transparent,
),
              const SizedBox(height: 20),

              // Nombre y cargo
              Text("Alexander Ñacato", style: TipografiaApp.tituloPrincipal),
              Text("Desarrollador Frontend", style: TipografiaApp.subtitulo),
              const SizedBox(height: 25),

              // Estadísticas
              const EstadisticasUsuario(),
              const SizedBox(height: 20),

              // Tarjetas de información
              Card(
                child: ListTile(
                  leading: const Icon(Icons.email_rounded, color: ColorApp.primario),
                  title: const Text("alexandernacato@gmail.com"),
                  subtitle: const Text("Correo electrónico"),
                ),
              ),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.phone_rounded, color: ColorApp.primario),
                  title: const Text("+593 999 888 777"),
                  subtitle: const Text("Teléfono"),
                ),
              ),
              const SizedBox(height: 20),

              // Botón
              ElevatedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.logout_rounded),
                label: const Text("Cerrar sesión", style: TipografiaApp.boton),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
