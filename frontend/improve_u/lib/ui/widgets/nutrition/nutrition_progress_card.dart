import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_progress_bar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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
        shadows: [
          BoxShadow(
            color: Theme.of(context).colorScheme.secondaryContainer,
            blurRadius: 15,
            offset: const Offset(0, 4),
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
                percent: .77,
                animation: true,
                animationDuration: 1000,
                circularStrokeCap: CircularStrokeCap.round,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '77%',
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
          ],
        ),
      ),
    );
  }
}