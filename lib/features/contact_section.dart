import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final soft = Theme.of(context).colorScheme.primaryContainer; // Light pink

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: soft,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contacto',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
          ),
          SizedBox(height: 6),
          Text('Email: juan.perez@example.com'),
          Text('Tel: +503 7000 0000'),
          Text('Ubicación: Remoto / On-site'),
        ],
      ),
    );
  }
}
