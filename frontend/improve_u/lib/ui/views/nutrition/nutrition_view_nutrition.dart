import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_defi_section.dart';
import 'package:improve_u/ui/widgets/custom_meal_card.dart';
import 'package:improve_u/ui/widgets/custom_stats_card.dart';
import 'package:improve_u/ui/widgets/nutrition/nutrition_progress_card.dart';

class NutritionViewNutrition extends StatelessWidget {
  const NutritionViewNutrition({super.key});

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
                'Nutrition',
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

          /// Affichage de la progression
          const NutritionProgressCard(),

          /// Espacement
          const SizedBox(
            height: 32,
          ),

          /// Affichage des défis
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: ShapeDecoration(
              color: Theme.of(context).colorScheme.secondaryContainer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                /// Titre de la section
                Text(
                  'Défi nutrition de la semaine',
                  style: Theme.of(context).textTheme.displaySmall,
                ),

                /// Espacement
                const SizedBox(
                  height: 16,
                ),

                /// Premier défi
                const CustomDefiSection(),

                /// Espacement
                const SizedBox(
                  height: 16,
                ),

                /// Deuxième défi
                const CustomDefiSection(),
              ],
            ),
          ),

          /// Espacement
          const SizedBox(
            height: 16,
          ),

          /// Affichage des repas
          const SizedBox(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  CustomMealCard(
                    bigCard: false,
                    name: 'Spaghetti Bolognaise',
                    image: 'assets/spaghetti.png',
                    desc:
                        'Savourez l\'authentique Spaghetti Bolognaise, un classique de la cuisine italienne. Des spaghettis al dente accompagnés d\'une sauce bolognaise riche et savoureuse. Cette recette vous offre un repas délicieux et idéal pour toutes les occasions.',
                    colorValue: 'Nutrition',
                    labelText: 'Déjeuner',
                    caloriesValue: 813,
                    caloriesValueTotal: 2094,
                    glucidesValue: 278,
                    glucidesValueTotal: 390,
                    proteinesValue: 63,
                    proteinesValueTotal: 124,
                    lipidesValue: 23,
                    lipidesValueTotal: 82,
                  ),

                  /// Gap
                  SizedBox(
                    width: 16,
                  ),

                  CustomMealCard(
                    bigCard: false,
                    name: 'Spaghetti Bolognaise',
                    image: 'assets/spaghetti.png',
                    desc:
                        'Savourez l\'authentique Spaghetti Bolognaise, un classique de la cuisine italienne. Des spaghettis al dente accompagnés d\'une sauce bolognaise riche et savoureuse. Cette recette vous offre un repas délicieux et idéal pour toutes les occasions.',
                    colorValue: 'Nutrition',
                    labelText: 'Déjeuner',
                    caloriesValue: 813,
                    caloriesValueTotal: 2094,
                    glucidesValue: 278,
                    glucidesValueTotal: 390,
                    proteinesValue: 63,
                    proteinesValueTotal: 124,
                    lipidesValue: 23,
                    lipidesValueTotal: 82,
                  ),

                  /// Gap
                  SizedBox(
                    width: 16,
                  ),
                  
                  CustomMealCard(
                    bigCard: false,
                    name: 'Spaghetti Bolognaise',
                    image: 'assets/spaghetti.png',
                    desc:
                        'Savourez l\'authentique Spaghetti Bolognaise, un classique de la cuisine italienne. Des spaghettis al dente accompagnés d\'une sauce bolognaise riche et savoureuse. Cette recette vous offre un repas délicieux et idéal pour toutes les occasions.',
                    colorValue: 'Nutrition',
                    labelText: 'Déjeuner',
                    caloriesValue: 813,
                    caloriesValueTotal: 2094,
                    glucidesValue: 278,
                    glucidesValueTotal: 390,
                    proteinesValue: 63,
                    proteinesValueTotal: 124,
                    lipidesValue: 23,
                    lipidesValueTotal: 82,
                  ),
                ],
              ),
            ),
          ),

          /// Espacement
          const SizedBox(
            height: 16,
          ),

          /// Affichage des statistiques
          const CustomStatsCard(
            title: 'Statistiques',
          ),
        ],
      ),
    );
  }
}
