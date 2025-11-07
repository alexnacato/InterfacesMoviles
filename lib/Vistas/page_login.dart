import 'package:flutter/material.dart';
import '../../../temas/tipografia.dart';
import '../../../temas/esquema_color.dart';
import '../../../controlador/login_controller.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  final LoginController _controller = LoginController();

  void _iniciarSesion() {
    final error = _controller.validarCampos();

    if (error != null) {
     
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(error),
          backgroundColor: Colors.redAccent,
          behavior: SnackBarBehavior.floating,
        ),
      );
    } else {
   
      Navigator.pushNamed(context, '/perfil');

      
      _controller.limpiarCampos();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.fondoClaro,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Bienvenido",
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(color: ColorApp.primario)),
              const SizedBox(height: 12),
              Text(
                "Inicia sesión para continuar",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: ColorApp.secundario),
              ),
              const SizedBox(height: 40),

              // Campo de usuario
              TextField(
                controller: _controller.usuarioController,
                decoration: const InputDecoration(
                  labelText: "Usuario",
                  prefixIcon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Campo de contraseña
              TextField(
                controller: _controller.passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Contraseña",
                  prefixIcon: Icon(Icons.lock_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
              const SizedBox(height: 40),

              // Botón
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorApp.primario,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 5,
                  ),
                  onPressed: _iniciarSesion,
                  child:
                      const Text("Iniciar Sesión", style: TipografiaApp.boton),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
