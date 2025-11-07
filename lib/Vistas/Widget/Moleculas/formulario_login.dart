import 'package:flutter/material.dart';
import '../Atomos/campo_texto.dart';
import '../Atomos/boton_primario.dart';

class FormularioLogin extends StatefulWidget {
  final Function(String, String) onSubmit;

  const FormularioLogin({super.key, required this.onSubmit});

  @override
  State<FormularioLogin> createState() => _FormularioLoginState();
}

class _FormularioLoginState extends State<FormularioLogin> {
  final correoCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CampoTexto(label: 'Correo', controller: correoCtrl),
        const SizedBox(height: 16),
        CampoTexto(label: 'Contraseña', controller: passCtrl, oculto: true),
        const SizedBox(height: 24),
        BotonPrimario(
          texto: 'Iniciar Sesión',
          onPressed: () {
            widget.onSubmit(correoCtrl.text, passCtrl.text);
          },
        ),
      ],
    );
  }
}
