import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_daily_meal_card.dart';

class CustomRecettesSection extends StatelessWidget {
  const CustomRecettesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          /// Titre
          Text(
            'Recettes pour la semaine',
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
          ),

          /// Gap
          const SizedBox(
            height: 16,
          ),

          const CustomDailyMealCard(
            day: 'Lundi',
          ),

          /// Gap
          const SizedBox(
            height: 16,
          ),

          const CustomDailyMealCard(
            day: 'Mardi',
          ),

          /// Gap
          const SizedBox(
            height: 16,
          ),

          const CustomDailyMealCard(
            day: 'Mercredi',
          ),

          /// Gap
          const SizedBox(
            height: 16,
          ),

          const CustomDailyMealCard(
            day: 'Jeudi',
          ),

          /// Gap
          const SizedBox(
            height: 16,
          ),

          const CustomDailyMealCard(
            day: 'Vendredi',
          ),

          /// Gap
          const SizedBox(
            height: 16,
          ),

          const CustomDailyMealCard(
            day: 'Samedi',
          ),

          /// Gap
          const SizedBox(
            height: 16,
          ),

          const CustomDailyMealCard(
            day: 'Dimanche',
          ),
        ],
      ),
    );
  }
}
