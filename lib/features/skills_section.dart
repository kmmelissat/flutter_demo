import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  Widget skillChip(BuildContext context, String s) {
    final soft = Theme.of(context).colorScheme.secondaryContainer; // Light blue

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      margin: const EdgeInsets.only(right: 8, bottom: 8),
      decoration: BoxDecoration(
        color: soft,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(s),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Habilidades Clave',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            skillChip(context, 'Flutter'),
            skillChip(context, 'Dart'),
            skillChip(context, 'REST'),
          ],
        ),
        Row(
          children: [
            skillChip(context, 'Arquitectura'),
            skillChip(context, 'Rendimiento'),
          ],
        ),
        Row(
          children: [
            skillChip(context, 'Limpieza de Código'),
            skillChip(context, 'Trabajo en equipo'),
          ],
        ),
      ],
    );
  }
}
