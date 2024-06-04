import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/section_defi_sport.dart';
import 'package:improve_u/ui/widgets/training/section_stats_cercles.dart';
import 'package:improve_u/ui/widgets/training/custom_evolve_training.dart';
class TrainingViewTraining extends StatelessWidget {
  const TrainingViewTraining({super.key});

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
                'Training',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ],
          ),
          const SectionDefiSport(
            titleDefi: 'Séances du jour',
            defis: [
              DefiData(
                points: '10',
                info: 'Séances Upper Body',
                textButton: 'Commencer',
                onPressed: null,
              ),
            ],
          ),
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
          const SizedBox(height: 16),
          const SectionDefiSport(
            titleDefi: 'Défi sport de la semaine',
            defis: [
              DefiData(
                points: '50',
                info: "Faire 10 pompes en moins d'une minute",
                textButton: 'Faire le défi',
                onPressed: null,
              ),
                DefiData(
                points: '50',
                info: "Faire 10 pompes en moins d'une minute",
                textButton: 'Faire le défi',
                onPressed: null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
