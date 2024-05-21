import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomDefiSection extends StatelessWidget {
  const CustomDefiSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
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

              /// Label du défi
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.pink,
                  ))
            ],
          ),

          /// Bouton
          Container(
            width: double.infinity,
            color: Colors.lightGreen,
          )
        ],
      ),
    );
  }
}
