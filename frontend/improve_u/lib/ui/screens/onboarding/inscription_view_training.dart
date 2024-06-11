import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_radio.dart';

class InscriptionViewTraining extends StatefulWidget {
  const InscriptionViewTraining({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InscriptionViewTrainingState createState() =>
      _InscriptionViewTrainingState();
}

class _InscriptionViewTrainingState extends State<InscriptionViewTraining> {
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
            'TRAINING',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
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

                /// Prise de masse
                CustomRadio(
                  label: 'Prise de masse',
                  value: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                  colorType: 'primary',
                ),

                /// Gap
                const SizedBox(height: 24),

                /// Perte de poids
                CustomRadio(
                  label: 'Perte de poids',
                  value: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                  colorType: 'primary',
                ),

                /// Gap
                const SizedBox(height: 24),

                /// Maintien musculaire
                CustomRadio(
                  label: 'Maintien musculaire',
                  value: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                  colorType: 'primary',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
