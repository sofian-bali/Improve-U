import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_button.dart';
import 'package:improve_u/ui/widgets/custom_label.dart';

class CustomDefiSection extends StatelessWidget {
  const CustomDefiSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Theme.of(context).colorScheme.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const <BoxShadow>[
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 15,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        children: [
          /// Content
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Informations du défi
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Nombre de points
                    Text(
                      '250 points',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                    ),

                    /// Espacement
                    const SizedBox(
                      height: 4,
                    ),

                    /// Titre du défi
                    Text(
                      'Boire 2,5 litres d\'eau par jour, pendant 1 semaine',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                      softWrap: true,
                      maxLines: null,
                    ),
                  ],
                ),
              ),

              /// Espacement
              const SizedBox(
                width: 12,
              ),

              /// Label du défi
              const CustomLabel(value: 'Nutrition')
            ],
          ),

          /// Espacement
          const SizedBox(
            height: 24,
          ),

          /// Bouton
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomButton(
                value: 'Nutrition',
                label: 'Faire le défi',
              ),
            ],
          )
        ],
      ),
    );
  }
}
