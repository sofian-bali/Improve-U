import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/section_defi_sport.dart';
import 'package:improve_u/ui/Sport/widgets/section_statistique_sport.dart';
import 'package:improve_u/ui/Sport/widgets/section_information_exercice.dart';
import 'package:improve_u/ui/Sport/widgets/section_repos.dart';
import 'package:improve_u/ui/Sport/widgets/section_stats_cercles.dart';
import 'package:improve_u/ui/Sport/widgets/boutton_seances.dart';


class TrainingView extends StatefulWidget {
  const TrainingView({super.key});

  @override
  State<TrainingView> createState() => _TrainingViewState();
}

class _TrainingViewState extends State<TrainingView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionDefiSport(
              defis: [
                DefiData(
                  points: '10',
                  info: 'Développé couché : 3 séries de 10 répétitions',
                  textButton: 'Commencer',
                  onPressed: null,
                
                ),
                DefiData(
                  points: '15',
                  info: 'Squat : 3 séries de 10 répétitions',
                  textButton: 'Commencer',
                  onPressed: null,
                ),
                DefiData(
                  points: '20',
                  info: 'Soulevé de terre : 3 séries de 10 répétitions',
                  textButton: 'Commencer',
                  onPressed: null,
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            SectionStatistiqueSport(
              statistics: [
                StatisticData(
                  statisticNumber: '92',
                  statisticDescription: 'Séances réalisées depuis la création du compte',
                ),
                StatisticData(
                  statisticNumber: '492',
                  statisticDescription: ' Kilos au total sur les exercices de squat, développé couché, et soulevé de terre',
                ),
                StatisticData(
                  statisticNumber: '328',
                  statisticDescription: 'Jours à prendre soin de ta santé',
                ),
                StatisticData(
                  statisticNumber: '12', 
                  statisticDescription: 'statisticDescription')
              ],
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
            const Center(
              child: 
                BouttonSeances(
                  text: 'Aujourd\'hui c\'est Repos !',
                  onPressed: null,
                ),
            ),
            
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
                  progressText: '63/286', percent: 0.5,
                ),
                LinearProgressData(
                  title: 'Soulever de Terre',
                  progress: 0.8,
                  progressText: '120/150', percent: 0.6,
                ),
                LinearProgressData(
                  title: 'Soulever de Terre',
                  progress: 0.8,
                  progressText: '120/150', percent: 0.8,
                ),
                LinearProgressData(
                  title: 'Soulever de Terre',
                  progress: 0.8,
                  progressText: '120/150', percent: 0.2,
                ),
              ],
            ),
          ],
        ),
    );
  }
}
