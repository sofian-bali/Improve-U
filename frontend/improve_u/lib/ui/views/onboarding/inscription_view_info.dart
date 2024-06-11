import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_input.dart';

class InscriptionViewInfo extends StatelessWidget {
  const InscriptionViewInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomInput(
          inputLabel: 'Prénom',
        ),
        SizedBox(height: 24),
        CustomInput(
          inputLabel: 'Adresse email',
        ),
        SizedBox(height: 24),
        CustomInput(
          inputLabel: 'Mot de passe',
          isPrivate: true,
        ),
      ],
    );
  }
}
