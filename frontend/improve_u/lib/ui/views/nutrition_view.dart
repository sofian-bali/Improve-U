import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_navigation.dart';
import 'package:improve_u/ui/widgets/nutrition/nutrition_progress_card.dart';

class NutritionView extends StatelessWidget {
  const NutritionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Navigation
        const CustomNavigation(),

        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              /// Titre
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Nutrition',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
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
      ],
    );
  }
}
