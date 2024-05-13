import 'package:flutter/material.dart';


class SectionRepos extends StatefulWidget {
  const SectionRepos({super.key});

  @override
  State<SectionRepos> createState() => _SectionReposState();
}

class _SectionReposState extends State<SectionRepos> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFE5E9F2),
              blurRadius: 15,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Repos',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0,),
              const Text(
                '“Le repos fait partie de l’entraînement”',
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 16.0,),
              Image.asset(
                'chemin_vers_votre_image',
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 16.0,),
              const Text(
                'Le repos dans la musculation n\'est pas une perte de temps, mais au contraire, une étape cruciale où le corps se renforce. C\'est durant ces moments que les muscles se réparent et se développent, permettant une croissance musculaire optimale et une performance durable.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}