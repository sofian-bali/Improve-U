import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_meal_card.dart';

class NutritionViewRecettes extends StatelessWidget {
  const NutritionViewRecettes({super.key});

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
                'Recettes',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ],
          ),

          /// Espacement
          const SizedBox(
            height: 32,
          ),

          /// Affichage des repas
          const CustomMealCard(
            showDesc: true,
          ),

          /// Espacement
          const SizedBox(
            height: 16,
          ),

          /// Affichage des repas
          const CustomMealCard(
            showDesc: true,
          ),

          /// Espacement
          const SizedBox(
            height: 16,
          ),

          /// Affichage des repas
          const CustomMealCard(
            showDesc: true,
          ),
        ],
      ),
    );
  }
}
