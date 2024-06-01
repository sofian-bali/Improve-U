import 'package:flutter/material.dart';
import 'package:improve_u/theme/main_theme.dart';
import 'package:improve_u/ui/widgets/custom_button.dart';
import 'package:improve_u/ui/widgets/custom_label.dart';
import 'package:improve_u/ui/widgets/custom_progress_bar.dart';

class CustomMealCard extends StatelessWidget {
  final bool showDesc;

  const CustomMealCard({super.key, required this.showDesc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(12),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: CustomColors.secondaireVert300.withOpacity(.2),
            blurRadius: 15,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            /// Titre
            Row(
              children: <Widget>[
                Text(
                  'Repas',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),

            /// Gap
            const SizedBox(
              height: 16,
            ),

            /// Image de repas
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    'assets/spaghetti.png',
                  ),
                  const Positioned(
                    top: 6,
                    right: 6,
                    child: CustomLabel(
                      value: 'Nutrition',
                      label: 'Déjeuner',
                    ),
                  ),
                ],
              ),
            ),

            /// Gap
            const SizedBox(
              height: 16,
            ),

            /// Nom du repas
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Spaghetti Bolognaise',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),

            /// Gap
            const SizedBox(
              height: 16,
            ),

            if (showDesc)
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Description',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  ),

                  /// Gap
                  const SizedBox(
                    height: 8,
                  ),

                  ///Description
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Savourez l\'authentique Spaghetti Bolognaise, un classique de la cuisine italienne. Des spaghettis al dente accompagnés d\'une sauce bolognaise riche et savoureuse. Cette recette vous offre un repas délicieux et idéal pour toutes les occasions.',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                      softWrap: true,
                    ),
                  ),
                ],
              ),

            /// Gap
            const SizedBox(
              height: 16,
            ),

            /// Glucides
            const CustomProgressBar(
              name: 'Glucides',
              value: 278,
              valueTotal: 390,
            ),

            const SizedBox(
              height: 8,
            ),

            /// Protéines
            const CustomProgressBar(
              name: 'Protéines',
              value: 63,
              valueTotal: 124,
            ),

            const SizedBox(
              height: 8,
            ),

            /// Lipides
            const CustomProgressBar(
              name: 'Lipides',
              value: 23,
              valueTotal: 82,
            ),

            /// Gap
            const SizedBox(
              height: 32,
            ),

            /// Boutton
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: const CustomButton(
                value: 'Nutrition',
                label: 'Voir la recette',
              ),
            )
          ],
        ),
      ),
    );
  }
}
