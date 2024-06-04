import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_evolve_body.dart';
import 'package:improve_u/ui/widgets/custom_evolve_weight.dart';

class SanteViewEvolve extends StatelessWidget {
  const SanteViewEvolve({super.key});

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
                'Evolution',
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

          /// Évolution physique
          const SizedBox(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  CustomEvolveBody(
                    month: 'Décembre',
                    image: 'assets/physique-dec.jpeg',
                    poids: '74kg',
                  ),
                  SizedBox(width: 16),
                  CustomEvolveBody(
                    month: 'Janvier',
                    image: 'assets/physique-jan.png',
                    poids: '72kg',
                  ),
                  SizedBox(width: 16),
                  CustomEvolveBody(
                    month: 'Février',
                    image: 'assets/physique-fev.jpeg',
                    poids: '71kg',
                  ),
                ],
              ),
            ),
          ),

          /// Évolution poids
          const CustomEvolveWeight(),
        ],
      ),
    );
  }
}
