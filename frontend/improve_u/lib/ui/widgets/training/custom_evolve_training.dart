import 'package:flutter/material.dart';
import 'package:improve_u/theme/main_theme.dart';
import 'package:improve_u/ui/widgets/training/custom_graph_bar_training.dart';

class CustomEvolveTraining extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomEvolveTraining(
    {
    super.key,
    required this.title,
    required this.subtitle,
    }
  );


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(12),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: CustomColors.primaireBleu500.withOpacity(.2),
            blurRadius: 15,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /// Titre
            Text(
              title,
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),

            /// Gap
            const SizedBox(
              height: 16,
            ),

            /// Sous-titre
            Text(
              subtitle,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                  ),
            ),

            /// Gap
            const SizedBox(
              height: 12,
            ),

            /// Graphique du poids
             const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                
                /// Aout
                 CustomGraphBarTraining(
                  valuetraining: '40 kg',
                  quantitytraining: 40,
                  monthtraining: 'Août',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),
                     
                /// Aout
                 CustomGraphBarTraining(
                  valuetraining: '50 kg',
                  quantitytraining: 50,
                  monthtraining: 'Septembre',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),
                 /// Aout
                 CustomGraphBarTraining(
                  valuetraining: '60 kg',
                  quantitytraining: 60,
                  monthtraining: 'Octobre',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),
                     
                /// Novembre
                 CustomGraphBarTraining(
                  valuetraining: '65 kg',
                  quantitytraining: 70,
                  monthtraining: 'Novembre',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),
                /// Décembre
                 CustomGraphBarTraining(
                  valuetraining: '70 kg',
                  quantitytraining: 80,
                  monthtraining: 'Décembre',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),
                     
                /// Janvier
                 CustomGraphBarTraining(
                  valuetraining: '80 kg',
                  quantitytraining: 95,
                  monthtraining: 'Janvier',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),

                 /// Février
                 CustomGraphBarTraining(
                  valuetraining: '85 kg',
                  quantitytraining: 100,
                  monthtraining: 'Février',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
