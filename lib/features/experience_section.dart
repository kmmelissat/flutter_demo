import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  Widget experienceItem(
    BuildContext context, {
    required String empresa,
    required String periodo,
    required String logros,
  }) {
    final primary = Theme.of(context).colorScheme.primary; // Dark pink

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(0, 4),
            color: Color(0x11000000),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Marca lateral de color
          Container(width: 6, height: 64, color: primary),
          const SizedBox(width: 12),
          // Contenido
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  empresa,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 2),
                Text(periodo, style: TextStyle(color: Colors.grey.shade700)),
                const SizedBox(height: 8),
                Text(logros),
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
          'Experiencia Profesional',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 10),
        experienceItem(
          context,
          empresa: 'Empresa A — Programador Senior',
          periodo: '2012 – 2015',
          logros:
              'Lideró módulos clave y entregó funcionalidades a tiempo, mejorando la estabilidad del producto.',
        ),
        const SizedBox(height: 10),
        experienceItem(
          context,
          empresa: 'Empresa B — Programador Senior',
          periodo: '2015 – 2018',
          logros:
              'Integración de APIs críticas, optimización de rendimiento y reducción de errores en producción.',
        ),
        const SizedBox(height: 10),
        experienceItem(
          context,
          empresa: 'Empresa C — Programador Senior',
          periodo: '2018 – 2021',
          logros:
              'Diseñó componentes reutilizables, acelerando el time-to-market y cumpliendo objetivos de negocio.',
        ),
        const SizedBox(height: 10),
        experienceItem(
          context,
          empresa: 'Empresa D — Programador Senior',
          periodo: '2021 – Presente',
          logros:
              'Responsable de la entrega de features complejas con alto impacto; cumplimiento consistente de objetivos.',
        ),
      ],
    );
  }
}
