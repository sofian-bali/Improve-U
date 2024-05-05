import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_bottom_bar.dart';
import 'package:improve_u/ui/widgets/custom_app_bar.dart';
import 'package:improve_u/ui/widgets/section_defi_sport.dart';
import 'package:improve_u/ui/Sport/widgets/section_statistique_sport.dart';
import 'package:improve_u/ui/Sport/widgets/section_information_exercice.dart';
import 'package:improve_u/ui/Sport/widgets/section_repos.dart';
import 'package:improve_u/ui/Sport/widgets/section_stats_cercles.dart';

class TrainingPage extends StatefulWidget {
  const TrainingPage({super.key});

  @override
  State<TrainingPage> createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Improve-U'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionDefiSport(
              points: '2000',
              info_defi_seances: 'Faire 10 pompes en moins d’une minutes',
            ),
            const SizedBox(height: 24.0),
            const SectionStatistiqueSport(
              statisticNumber: '12',
              statisticDescription: 'Faire 10 pompes en moins d’une minute',
            ),
            const SizedBox(height: 24.0),
            const SectionInformationExercice(
              title: 'Développé couché',
              description:
                  'Le développé couché est un exercice de musculation qui sollicite principalement les pectoraux, les triceps et les épaules. Il est souvent pratiqué avec une barre, mais peut également se faire avec des haltères.',
              tableData: [
                ['Nombre de série', 'Poids', 'Nombre de reps', 'Temps de repos'],
                ['Série 1', '40 kg', '9', '2\'30"'],
                ['Série 2', '40 kg', '9', '2\'30"'],
                ['Série 3', '50 kg', '9', '2\'30"'],
              ],
            ),
            const SizedBox(height: 24.0),
            const SectionRepos(),
            const SizedBox(height: 8.0),
            SportProgressCard(
              title: 'Objectif Sportif',
              objectifPercent: 0.5,
              circularText: '50 kg /',
              objectifFinal: '100 kg',
              circularExercice: 'Développé couché',
              linearProgressData: [
                LinearProgressData(
                  title: 'Squat',
                  progress: 0.5,
                  progressText: '63/286',
                ),
                LinearProgressData(
                  title: 'Soulever de Terre',
                  progress: 0.8,
                  progressText: '120/150',
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}
