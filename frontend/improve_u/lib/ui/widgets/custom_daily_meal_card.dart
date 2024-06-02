import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_light_button.dart';

class CustomDailyMealCard extends StatelessWidget {
  final String day;

  const CustomDailyMealCard({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Theme.of(context).colorScheme.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        children: [
          /// Titre + bouton
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Titre
              Text(
                day,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),

              /// Bouton
              const CustomLightButton(value: 'Nutrition', label: 'Changer')
            ],
          ),

          /// Gap
          const SizedBox(
            height: 16,
          ),

          /// Liste des repas
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Repas 1
              Expanded(
                child: Column(
                  children: [
                    /// Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Image.asset(
                        'assets/bowl.png',
                        width: double.infinity,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),

                    /// Gap
                    const SizedBox(height: 4),

                    Text(
                      'Muesli bol',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                    ),
                  ],
                ),
              ),

              /// Espacement
              const SizedBox(width: 12),

              /// Repas 2
              Expanded(
                child: Column(
                  children: [
                    /// Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Image.asset(
                        'assets/spaghetti.png',
                        width: double.infinity,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),

                    /// Gap
                    const SizedBox(height: 4),

                    Text(
                      'Spaghetti bolognaise',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                    ),
                  ],
                ),
              ),

              /// Espacement
              const SizedBox(width: 12),

              /// Repas 3
              Expanded(
                child: Column(
                  children: [
                    /// Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Image.asset(
                        'assets/curry.png',
                        width: double.infinity,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),

                    /// Gap
                    const SizedBox(height: 4),

                    Text(
                      'Poulet curry',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
