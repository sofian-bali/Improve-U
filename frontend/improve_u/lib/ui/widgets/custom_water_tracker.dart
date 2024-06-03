import 'package:flutter/material.dart';
import 'package:improve_u/theme/main_theme.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CustomWaterTracker extends StatelessWidget {
  const CustomWaterTracker({super.key});

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
              'Hydratation',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onTertiary,
                  ),
            ),

            /// Gap
            const SizedBox(
              height: 16,
            ),

            /// Informations + Progress
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Informations
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Objectif
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nombre de verre bu',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                  fontWeight: FontWeight.bold),
                        ),

                        /// Gap
                        const SizedBox(
                          height: 4,
                        ),

                        Text(
                          '6 verres',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                              ),
                        ),
                      ],
                    ),

                    /// Gap
                    const SizedBox(
                      height: 12,
                    ),

                    /// Calories
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Objectif',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                  fontWeight: FontWeight.bold),
                        ),

                        /// Gap
                        const SizedBox(
                          height: 4,
                        ),

                        Text(
                          '3 litres',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),

                /// Progress
                CircularPercentIndicator(
                  radius: 75.0,
                  lineWidth: 12.0,
                  percent: .66,
                  animation: true,
                  animationDuration: 1000,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '2',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                      ),
                      Text(
                        'litres',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  progressColor: Theme.of(context).colorScheme.tertiary,
                  backgroundColor:
                      Theme.of(context).colorScheme.tertiaryContainer,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
