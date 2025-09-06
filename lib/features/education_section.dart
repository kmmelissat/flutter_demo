import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  Widget educationItem(BuildContext context, String grado, String detalle) {
    final primary = Theme.of(context).colorScheme.primary; // Dark pink

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  grado,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(detalle),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Formación Académica',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 10),
        educationItem(
          context,
          'Estudios Básicos',
          'Formación general en ciencias y matemática aplicada.',
        ),
        const SizedBox(height: 10),
        educationItem(
          context,
          'Estudios Superiores',
          'Ingeniería en Computación / Sistemas — enfoque en desarrollo de software.',
        ),
        const SizedBox(height: 10),
        educationItem(
          context,
          'Máster',
          'Máster en Ingeniería de Software — arquitectura, calidad y gestión de proyectos.',
        ),
      ],
    );
  }
}
