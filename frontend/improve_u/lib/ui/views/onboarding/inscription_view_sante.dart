import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_radio.dart';

class InscriptionViewSante extends StatefulWidget {
  const InscriptionViewSante({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InscriptionViewSanteState createState() => _InscriptionViewSanteState();
}

class _InscriptionViewSanteState extends State<InscriptionViewSante> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          /// Titre
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              'SANTE',
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
            ),
          ),

          /// Gap
          const SizedBox(height: 120),

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

                /// Marcher 10 000 pas par jour
                CustomRadio(
                  label: 'Marcher 10 000 pas par jour',
                  value: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                  colorType: 'tertiary',
                ),

                /// Gap
                const SizedBox(height: 24),

                /// Suivre la qualité de son sommeil
                CustomRadio(
                  label: 'Suivre la qualité de son sommeil',
                  value: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                  colorType: 'tertiary',
                ),

                /// Gap
                const SizedBox(height: 24),

                /// Boire plus d’eau dans la journée
                CustomRadio(
                  label: 'Boire plus d’eau dans la journée',
                  value: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                  colorType: 'tertiary',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
