import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_evolve_sleep.dart';
import 'package:improve_u/ui/widgets/custom_evolve_weight.dart';
import 'package:improve_u/ui/widgets/custom_walk_tracker.dart';
import 'package:improve_u/ui/widgets/custom_water_tracker.dart';

class SanteViewStats extends StatelessWidget {
  const SanteViewStats({super.key});

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
                'Statistiques',
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

          /// Évolution du sommeil
          const CustomEvolveSleep(),

          /// Gap
          const SizedBox(
            height: 16,
          ),

          /// Suivi eau
          const CustomWaterTracker(),

          /// Gap
          const SizedBox(
            height: 16,
          ),

          /// Évolution du sommeil
          const CustomEvolveWeight(),
        ],
      ),
    );
  }
}
