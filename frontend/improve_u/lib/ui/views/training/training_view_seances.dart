import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/training/section_information_exercice.dart';
import 'package:improve_u/ui/widgets/training/boutton_seances.dart';
class TrainingViewSeances extends StatelessWidget {
  const TrainingViewSeances({super.key});

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
                'Seances',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ],
          ),
          const SizedBox(height: 16),

          const SectionInformationExercice(
            title: 'Développé couché',
            description: 'Développé couché avec haltères',
            tableData: [
              ['Nombre de Séries', 'Poids', 'Nombre de reps', 'Temps de repos'],
              ['Série 1','40 kg', '10', '2\'30"'],
              ['Série 2','50 kg', '10', '2\'30"'],
              ['Série 3','60 kg', '9', '2\'30"'],
            ],
          ),
          const SizedBox(height: 16),
              const SectionInformationExercice(
            title: 'Développé couché',
            description: 'Développé couché avec haltères',
            tableData: [
              ['Nombre de Séries', 'Poids', 'Nombre de reps', 'Temps de repos'],
              ['Série 1','40 kg', '10', '2\'30"'],
              ['Série 2','50 kg', '10', '2\'30"'],
              ['Série 3','60 kg', '9', '2\'30"'],
            ],
          ),
          
          const SizedBox(height: 16),
          
          const SectionInformationExercice(
            title: 'Développé couché',
            description: 'Développé couché avec haltères',
            tableData: [
              ['Nombre de Séries', 'Poids', 'Nombre de reps', 'Temps de repos'],
              ['Série 1','40 kg', '10', '2\'30"'],
              ['Série 2','50 kg', '10', '2\'30"'],
              ['Série 3','60 kg', '9', '2\'30"'],
            ],
          ),
          
          const SizedBox(height: 16),
          
          const SectionInformationExercice(
            title: 'Développé couché',
            description: 'Développé couché avec haltères',
            tableData: [
              ['Nombre de Séries', 'Poids', 'Nombre de reps', 'Temps de repos'],
              ['Série 1','40 kg', '10', '2\'30"'],
              ['Série 2','50 kg', '10', '2\'30"'],
              ['Série 3','60 kg', '9', '2\'30"'],
            ],
          ),
          const SizedBox(height: 16),
          const BouttonSeances(
            text: 'Séances fini !'
          )
        ],
      ),
    );
  }
}
