import 'package:flutter/material.dart';
import 'package:improve_u/theme/main_theme.dart';
import 'package:improve_u/ui/widgets/custom_label.dart';
import 'package:improve_u/ui/widgets/custom_progress_bar.dart';

class CustomEvolveBody extends StatelessWidget {
  final String month;
  final String image;
  final String poids;

  const CustomEvolveBody(
      {super.key,
      required this.month,
      required this.image,
      required this.poids});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(12),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: CustomColors.secondaireVert300.withOpacity(.2),
            blurRadius: 15,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            /// Titre
            Row(
              children: <Widget>[
                Text(
                  'Physique',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),

            /// Gap
            const SizedBox(
              height: 16,
            ),

            /// Image de repas
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    image,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 6,
                    right: 6,
                    child: CustomLabel(
                      value: 'Sante',
                      label: poids,
                    ),
                  ),
                ],
              ),
            ),

            /// Gap
            const SizedBox(
              height: 16,
            ),

            /// Nom du repas
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  month,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),

            /// Gap
            const SizedBox(
              height: 16,
            ),

            /// Gap
            const SizedBox(
              height: 16,
            ),

            /// Glucides
            const CustomProgressBar(
              name: 'Nombre de défis réalisés',
              value: 12,
              valueTotal: 12,
              colorValue: 'Sante',
            ),

            const SizedBox(
              height: 8,
            ),

            /// Protéines
            const CustomProgressBar(
              name: 'Nombre de pas / jour',
              value: 7654,
              valueTotal: 8391,
              colorValue: 'Sante',
            ),

            const SizedBox(
              height: 8,
            ),

            /// Lipides
            const CustomProgressBar(
              name: 'Poids au développé couché',
              value: 70,
              valueTotal: 85,
              colorValue: 'Sante',
            ),

            /// Gap
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
