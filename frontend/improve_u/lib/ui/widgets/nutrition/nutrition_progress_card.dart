import 'package:flutter/material.dart';
import 'package:improve_u/theme/main_theme.dart';
import 'package:improve_u/ui/widgets/custom_progress_bar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:improve_u/cubit/macro_cubit.dart';
import 'package:improve_u/cubit/macro_state.dart';
import 'package:improve_u/cubit/user_state.dart';
import 'package:improve_u/cubit/user_cubit.dart';


class NutritionProgressCard extends StatelessWidget {
  const NutritionProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    final UserState userState = BlocProvider.of<UserCubit>(context).state;
    final int totalCalories = userState.totalCalories;
    final int totalGlucides = userState.totalGlucides;
    final int totalProteines = userState.totalProteines;
    final int totalLipides = userState.totalLipides;

    return BlocBuilder<MacroCubit, MacroState>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
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
                      'Calories',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                    ),
                  ],
                ),

                /// Gap
                const SizedBox(
                  height: 16,
                ),

                /// Cercle des calories
                Center(
                  child: CircularPercentIndicator(
                    radius: 90.0,
                    lineWidth: 17.0,
                    percent: (state.calories.toDouble() / totalCalories) <= 1.0
                        ? (state.calories.toDouble() / totalCalories)
                        : 0.0,
                    animation: true,
                    animationDuration: 1000,
                    circularStrokeCap: CircularStrokeCap.round,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '${((state.calories / totalCalories) * 100).round()}%',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Text(
                          'consommées',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                    progressColor: Theme.of(context).colorScheme.secondary,
                    backgroundColor:
                        Theme.of(context).colorScheme.secondaryContainer,
                  ),
                ),

                /// Gap
                const SizedBox(
                  height: 16,
                ),

                /// Glucides
                CustomProgressBar(
                  name: 'Glucides',
                  value: state.glucides,
                  valueTotal: totalGlucides,
                  colorValue: 'Nutrition',
                ),

                const SizedBox(
                  height: 8,
                ),

                /// Protéines
                CustomProgressBar(
                  name: 'Protéines',
                  value: state.proteines,
                  valueTotal: totalProteines,
                  colorValue: 'Nutrition',
                ),

                const SizedBox(
                  height: 8,
                ),

                /// Lipides
                CustomProgressBar(
                  name: 'Lipides',
                  value: state.lipides,
                  valueTotal: totalLipides,
                  colorValue: 'Nutrition',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}