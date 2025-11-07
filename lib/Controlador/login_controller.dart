import 'package:flutter/material.dart';

class LoginController {
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final String _usuarioValido = "admin";
  final String _passwordValido = "1234";

  String? validarCampos() {
    final user = usuarioController.text.trim();
    final pass = passwordController.text.trim();

    if (user.isEmpty || pass.isEmpty) {
      return "Por favor, completa todos los campos.";
    }
    if (user != _usuarioValido) {
      return "Usuario incorrecto.";
    }
    if (pass != _passwordValido) {
      return "Contraseña incorrecta.";
    }
    return null; // todo está bien
  }

  void limpiarCampos() {
    usuarioController.clear();
    passwordController.clear();
  }
}
