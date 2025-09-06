import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  // Avatar aleatorio (cambia al reconstruir la app)
  String get randomAvatarUrl {
    final ts = DateTime.now().millisecondsSinceEpoch;
    return 'https://i.pravatar.cc/200?img=${(ts % 70) + 1}';
  }

  @override
  Widget build(BuildContext context) {
    // Paleta suave - Pink and Light Blue
    final primary = Theme.of(context).colorScheme.primary; // Dark pink
    final soft = Theme.of(context).colorScheme.primaryContainer; // Light pink

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: soft,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          // Avatar (Image dentro de Container para redondear)
          Container(
            width: 88,
            height: 88,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Image.asset(
              'assets/images/profile.JPEG',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Image.network(
                  randomAvatarUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) =>
                      const Center(child: Text('Avatar')),
                );
              },
            ),
          ),
          const SizedBox(width: 16),
          // Nombre + Rol + Resumen corto
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Juan Pérez',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 4),
                Text('Programador Senior • 14 años de experiencia'),
                SizedBox(height: 6),
                Text(
                  'Especializado en desarrollo de aplicaciones, integración de APIs y entrega de productos de alto impacto. '
                  'Consistente en cumplir objetivos de negocio y calidad.',
                  style: TextStyle(color: Colors.black87),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
