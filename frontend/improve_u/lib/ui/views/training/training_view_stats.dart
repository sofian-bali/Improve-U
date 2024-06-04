import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/training/section_stats_cercles.dart';
import 'package:improve_u/ui/widgets/training/custom_evolve_training.dart';
import 'package:improve_u/ui/widgets/training/section_statistique_sport.dart';

class TrainingViewStats extends StatelessWidget {
  const TrainingViewStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          /// Titre
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Statistiques',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ],
          ), 
          const SizedBox(height: 16),
          SportProgressCard(
            title: 'Objectif Sportif',
            objectifPercent: 0.85,
            circularText: '85 kg /',
            objectifFinal: '100 kg',
            circularExercice: 'Développé couché',
            linearProgressData: [
              LinearProgressData(
                title: 'Squat',
                progress: 0.75,
                progressText: '90/120 kg',
                percent: 0.75,
              ),
              LinearProgressData(
                title: 'Tractions',
                progress: 0.4,
                progressText: '4/10 rep',
                percent: 0.4,
              ),
              LinearProgressData(
                title: 'Pompes',
                progress: 0.8,
                progressText: '24/30 rep',
                percent: 0.8,
              ),
            ],
          ),
          const SizedBox(height: 16),
          const CustomEvolveTraining(
            title: 'Evolution',
            subtitle: 'Développé couché',
          ),
          const CustomEvolveTraining(
            title: 'Evolution',
            subtitle: 'Squat',
          ),
          const CustomEvolveTraining(
            title: 'Evolution',
            subtitle: 'Soulevé de terre',
          ),
          const SizedBox(height: 16),
           SectionStatistiqueSport(
             statistics: [
            StatisticData(
                statisticNumber: "92",
                statisticDescription: "Séances réalisées depuis la création du compte"
              ),
               StatisticData(
                statisticNumber: "478",
                statisticDescription: "Kilos au total sur les exercices de squat, développé couché, et soulevé de terre"
              ),
               StatisticData(
                statisticNumber: "328",
                statisticDescription: "Jours à prendre soin de ta santé"
              ),
               StatisticData(
                statisticNumber: "12",
                statisticDescription: "Kilos de perdus depuis ta remise en forme"
              ),
             ], 
           ),

        ],
      ),
    );
  }
}
