import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class NutritionProgressCard extends StatelessWidget {
  const NutritionProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0xFFE2F2DA),
            blurRadius: 15,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            /// Titre
            Row(
              children: [
                Text(
                  'Calories',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),

            /// Gap
            const SizedBox(
              height: 16,
            ),

            /// Cercle des calories
            Center(
              child: CircularPercentIndicator(
                radius: 90.0,
                lineWidth: 17.0,
                percent: .75,
                animation: true,
                animationDuration: 1000,
                circularStrokeCap: CircularStrokeCap.round,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '75%',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Text(
                      'consommées',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
                progressColor: Theme.of(context).colorScheme.secondary,
                backgroundColor:
                    Theme.of(context).colorScheme.secondaryContainer,
              ),
            ),

            /// Gap
            const SizedBox(
              height: 16,
            ),

            /// Macronutriments progression
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  /// Nom du macronutriment
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Glucides'), Text('63/286')],
                  ),

                  /// Gap
                  const SizedBox(
                    height: 4,
                  ),

                  /// Barre de progression
                  LinearPercentIndicator(
                    padding: EdgeInsets.zero,
                    lineHeight: 10.0,
                    percent: .5,
                    backgroundColor:
                        Theme.of(context).colorScheme.secondaryContainer,
                    progressColor: Theme.of(context).colorScheme.secondary,
                    animation: true,
                    animationDuration: 500,
                    barRadius: const Radius.circular(8),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
