import 'package:flutter/material.dart';
import 'package:improve_u/theme/main_theme.dart';
import 'package:improve_u/ui/widgets/custom_graph_bar.dart';

class CustomEvolveWeight extends StatelessWidget {
  const CustomEvolveWeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(12),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: CustomColors.tertiaireRouge300.withOpacity(.2),
            blurRadius: 15,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /// Titre
            Text(
              'Évolution',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onTertiary,
                  ),
            ),

            /// Gap
            const SizedBox(
              height: 16,
            ),

            /// Sous-titre
            Text(
              'Poids en kg',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                  ),
            ),

            /// Gap
            const SizedBox(
              height: 12,
            ),

            /// Graphique du poids
            const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                /// Mai
                CustomGraphBar(
                  value: '82',
                  quantity: 100,
                  month: 'Mai',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),

                /// Juin
                CustomGraphBar(
                  value: '79',
                  quantity: 95,
                  month: 'Juin',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),

                /// Juillet
                CustomGraphBar(
                  value: '76',
                  quantity: 90,
                  month: 'Juillet',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),

                /// Août
                CustomGraphBar(
                  value: '72',
                  quantity: 80,
                  month: 'Août',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),

                /// Septembre
                CustomGraphBar(
                  value: '72',
                  quantity: 80,
                  month: 'Septembre',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),

                /// Octobre
                CustomGraphBar(
                  value: '74',
                  quantity: 85,
                  month: 'Octobre',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),

                /// Novembre
                CustomGraphBar(
                  value: '71',
                  quantity: 75,
                  month: 'Novembre',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),

                /// Décembre
                CustomGraphBar(
                  value: '69',
                  quantity: 70,
                  month: 'Décembre',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),

                /// Janvier
                CustomGraphBar(
                  value: '70',
                  quantity: 70,
                  month: 'Janvier',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),

                /// Février
                CustomGraphBar(
                  value: '68',
                  quantity: 65,
                  month: 'Février',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
