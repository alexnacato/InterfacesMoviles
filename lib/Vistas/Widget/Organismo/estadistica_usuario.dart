import 'package:flutter/material.dart';

class EstadisticasUsuario extends StatelessWidget {
  const EstadisticasUsuario({super.key});

  @override
  Widget build(BuildContext context) {
  

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          _ItemStat(icon: Icons.work_outline, titulo: 'Proyectos', valor: '8'),
          _ItemStat(icon: Icons.star_rate_rounded, titulo: 'Puntaje', valor: '4.8'),
          _ItemStat(icon: Icons.trending_up_rounded, titulo: 'Nivel', valor: 'Avanzado'),
        ],
      ),
    );
  }
}

class _ItemStat extends StatelessWidget {
  final IconData icon;
  final String titulo;
  final String valor;

  const _ItemStat({
    required this.icon,
    required this.titulo,
    required this.valor,
  });

  @override
  Widget build(BuildContext context) {
    final estiloValor = Theme.of(context)
        .textTheme
        .titleMedium
        ?.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary);

    final estiloTitulo = Theme.of(context)
        .textTheme
        .bodySmall
        ?.copyWith(color: Colors.grey[700]);

    return Column(
      children: [
        Icon(icon, color: Theme.of(context).colorScheme.secondary, size: 28),
        const SizedBox(height: 6),
        Text(valor, style: estiloValor),
        const SizedBox(height: 2),
        Text(titulo, style: estiloTitulo),
      ],
    );
  }
}
