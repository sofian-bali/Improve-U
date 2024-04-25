import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_bottom_bar.dart';
import 'package:improve_u/ui/widgets/custom_app_bar.dart';
import 'package:improve_u/ui/widgets/nutrition/nutrition_progress_card.dart';

class NutritionPage extends StatelessWidget {
  const NutritionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Improve-U'),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            /// Titre
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Nutrition',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                ),
              ],
            ),
        
            // Espacement
            const SizedBox(
              height: 32,
            ),
        
            /// Affichage de la progression
            const NutritionProgressCard(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}
