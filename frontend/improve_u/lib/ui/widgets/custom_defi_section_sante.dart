import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_button.dart';
import 'package:improve_u/ui/widgets/custom_label.dart';
import 'package:improve_u/ui/views/defi_view.dart';

class CustomDefiSectionSante extends StatelessWidget {
  const CustomDefiSectionSante({super.key});

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
                      '500 points',
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
                      'Faire 10 000 pas tous les jours',
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
              const CustomLabel(
                value: 'Sante',
                label: 'Sante',
              )
            ],
          ),

          /// Espacement
          const SizedBox(
            height: 24,
          ),

          /// Bouton
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomButton(
                value: 'Sante',
                label: 'Faire le défi',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DefiView(),
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
