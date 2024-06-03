import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_defi_section_sante.dart';
import 'package:improve_u/ui/widgets/custom_evolve_sleep.dart';
import 'package:improve_u/ui/widgets/custom_evolve_weight.dart';
import 'package:improve_u/ui/widgets/custom_walk_tracker.dart';

class SanteViewSante extends StatelessWidget {
  const SanteViewSante({super.key});

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
                'Sante',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ],
          ),

          /// Gap
          const SizedBox(
            height: 32,
          ),

          /// Suivi pas
          const CustomWalkTracker(),

          /// Gap
          const SizedBox(
            height: 16,
          ),

          /// Affichage des défis
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: ShapeDecoration(
              color: Theme.of(context).colorScheme.tertiaryContainer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                /// Titre de la section
                Text(
                  'Défi santé de la semaine',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onTertiary),
                ),

                /// Espacement
                const SizedBox(
                  height: 16,
                ),

                /// Premier défi
                const CustomDefiSectionSante(),

                /// Espacement
                const SizedBox(
                  height: 16,
                ),

                /// Deuxième défi
                const CustomDefiSectionSante(),
              ],
            ),
          ),

          /// Gap
          const SizedBox(
            height: 16,
          ),

          /// Évolution du poids
          const CustomEvolveWeight(),

          /// Gap
          const SizedBox(
            height: 16,
          ),

          /// Évolution du sommeil
          const CustomEvolveSleep()
        ],
      ),
    );
  }
}
