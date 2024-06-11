import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_radio.dart';

class InscriptionViewNutrition extends StatefulWidget {
  const InscriptionViewNutrition({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InscriptionViewNutritionState createState() =>
      _InscriptionViewNutritionState();
}

class _InscriptionViewNutritionState extends State<InscriptionViewNutrition> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          /// Titre
          Text(
            'NUTRITION',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
          ),
          const SizedBox(height: 12),

          /// Gap
          const SizedBox(
            height: 100,
          ),

          /// Options
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Sous-titre
                Text(
                  'Choisis ton objectif',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w900,
                  ),
                ),

                /// Gap
                const SizedBox(height: 24),

                /// Manger plus sain
                CustomRadio(
                  label: 'Manger plus sain',
                  value: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                  colorType: 'secondary',
                ),

                /// Gap
                const SizedBox(height: 24),

                /// Consommer moins de sucre
                CustomRadio(
                  label: 'Consommer moins de sucre',
                  value: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                  colorType: 'secondary',
                ),

                /// Gap
                const SizedBox(height: 24),

                /// Commencer un régime végétarien
                CustomRadio(
                  label: 'Commencer un régime végétarien',
                  value: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                  colorType: 'secondary',
                ),

                /// Gap
                const SizedBox(height: 24),

                /// Adapter mes repas avec les saisons
                CustomRadio(
                  label: 'Adapter mes repas avec les saisons',
                  value: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                  colorType: 'secondary',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
