import 'package:flutter/material.dart';
import 'package:improve_u/theme/main_theme.dart';
import 'package:improve_u/ui/widgets/custom_graph_bar.dart';
import 'package:improve_u/ui/widgets/custom_sleep_prog.dart';

class CustomEvolveSleep extends StatelessWidget {
  const CustomEvolveSleep({super.key});

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
              'Sommeil',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onTertiary,
                  ),
            ),

            /// Gap
            const SizedBox(
              height: 16,
            ),

            /// Choix programme de sommeil
            const CustomSleepProg(),

            /// Gap
            const SizedBox(
              height: 16,
            ),

            /// Sous-titre
            Text(
              'Récap de la semaine',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
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
                  value: '8h30',
                  quantity: 100,
                  month: 'Lundi',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),

                /// Juin
                CustomGraphBar(
                  value: '8h00',
                  quantity: 90,
                  month: 'Mardi',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),

                /// Juillet
                CustomGraphBar(
                  value: '7h00',
                  quantity: 70,
                  month: 'Mercredi',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),

                /// Août
                CustomGraphBar(
                  value: '8h30',
                  quantity: 100,
                  month: 'Jeudi',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),

                /// Septembre
                CustomGraphBar(
                  value: '8h00',
                  quantity: 90,
                  month: 'Vendredi',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),

                /// Octobre
                CustomGraphBar(
                  value: '8h30',
                  quantity: 100,
                  month: 'Samedi',
                ),

                /// Gap
                SizedBox(
                  width: 4,
                ),

                /// Novembre
                CustomGraphBar(
                  value: '8h30',
                  quantity: 100,
                  month: 'Dimanche',
                ),
              ],
            ),

            /// Gap
            const SizedBox(
              height: 16,
            ),

            /// Sous-titre
            Text(
              'Moyenne de la semaine',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),

            /// Gap
            const SizedBox(
              height: 12,
            ),

            /// Valeur
            Text(
              '8h15',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
