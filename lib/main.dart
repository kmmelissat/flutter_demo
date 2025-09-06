import 'package:flutter/material.dart';
import 'app/theme.dart';
import 'features/cv_screen.dart';

void main() => runApp(const CvApp());

class CvApp extends StatelessWidget {
  const CvApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CV – Programador Senior',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const CvScreen(),
    );
  }
}
