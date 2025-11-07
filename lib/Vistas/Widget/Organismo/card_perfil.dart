import 'package:flutter/material.dart';
import '../../../Modelo/usuario_model.dart';
import 'info_usuario.dart';
import 'estadistica_usuario.dart';
import '../Atomos/boton_logout.dart';

class CardPerfil extends StatelessWidget {
  final Usuario usuario;

  const CardPerfil({super.key, required this.usuario});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Avatar y nombre
            CircleAvatar(
              radius: 50,
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: const Icon(Icons.person, size: 60, color: Colors.white),
            ),
            const SizedBox(height: 16),
            Text(usuario.nombre, style: textTheme.headlineMedium),
            Text(usuario.correo, style: textTheme.bodyMedium),

            const Divider(height: 40),

            // Información y estadísticas
            InfoUsuario(),
            const SizedBox(height: 16),
            EstadisticasUsuario(),

            const SizedBox(height: 30),

            // Botón cerrar sesión
            BotonLogout(
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
