import 'package:flutter/material.dart';
import 'header_section.dart';
import 'experience_section.dart';
import 'education_section.dart';
import 'skills_section.dart';
import 'contact_section.dart';

class CvScreen extends StatelessWidget {
  const CvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CV – Programador Senior')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HeaderSection(),
              SizedBox(height: 16),
              ExperienceSection(),
              SizedBox(height: 16),
              EducationSection(),
              SizedBox(height: 16),
              SkillsSection(),
              SizedBox(height: 28),
              ContactSection(),
            ],
          ),
        ),
      ),
    );
  }
}
