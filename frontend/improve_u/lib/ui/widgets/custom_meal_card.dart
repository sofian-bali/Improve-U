import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:improve_u/theme/main_theme.dart';
import 'package:improve_u/ui/screens/home.dart';
import 'package:improve_u/ui/views/nutrition/nutrition_view_recettes.dart';
import 'package:improve_u/ui/widgets/custom_button.dart';
import 'package:improve_u/ui/widgets/custom_label.dart';
import 'package:improve_u/ui/widgets/custom_progress_bar.dart';
import 'package:improve_u/cubit/macro_cubit.dart';
import 'package:improve_u/cubit/macro_state.dart';

class CustomMealCard extends StatelessWidget {
  final bool bigCard;
  final String name;
  final String image;
  final String desc;
  final String colorValue;
  final String labelText;
  final int caloriesValue;
  final int caloriesValueTotal;
  final int glucidesValue;
  final int glucidesValueTotal;
  final int proteinesValue;
  final int proteinesValueTotal;
  final int lipidesValue;
  final int lipidesValueTotal;

  const CustomMealCard(
      {super.key,
      required this.bigCard,
      required this.name,
      required this.image,
      required this.desc,
      required this.colorValue,
      required this.labelText,
      required this.caloriesValue,
      required this.caloriesValueTotal,
      required this.glucidesValue,
      required this.glucidesValueTotal,
      required this.proteinesValue,
      required this.proteinesValueTotal,
      required this.lipidesValue,
      required this.lipidesValueTotal});

  @override
  Widget build(BuildContext context) {
    MacroCubit macroCubit = BlocProvider.of<MacroCubit>(context);

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
                  'Repas',
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
                  ),
                  Positioned(
                    top: 6,
                    right: 6,
                    child: CustomLabel(
                      value: colorValue,
                      label: labelText,
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
                  name,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),

            /// Gap
            const SizedBox(
              height: 16,
            ),

            if (bigCard)
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Description',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  ),

                  /// Gap
                  const SizedBox(
                    height: 8,
                  ),

                  ///Description
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      desc,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                      softWrap: true,
                    ),
                  ),
                ],
              ),

            /// Gap
            const SizedBox(
              height: 16,
            ),

            /// Calories
            CustomProgressBar(
              name: 'Calories',
              value: caloriesValue,
              valueTotal: caloriesValueTotal,
              colorValue: colorValue,
            ),

            const SizedBox(
              height: 8,
            ),

            /// Glucides
            CustomProgressBar(
              name: 'Glucides',
              value: glucidesValue,
              valueTotal: glucidesValueTotal,
              colorValue: colorValue,
            ),

            const SizedBox(
              height: 8,
            ),

            /// Protéines
            CustomProgressBar(
              name: 'Protéines',
              value: proteinesValue,
              valueTotal: proteinesValueTotal,
              colorValue: colorValue,
            ),

            const SizedBox(
              height: 8,
            ),

            /// Lipides
            CustomProgressBar(
              name: 'Lipides',
              value: lipidesValue,
              valueTotal: lipidesValueTotal,
              colorValue: colorValue,
            ),

            /// Gap
            const SizedBox(
              height: 32,
            ),

            /// Bouton
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: bigCard
                  ? CustomButton(
                      value: 'Nutrition',
                      label: 'Valider le repas',
                      onTap: () {
                        macroCubit.addMacro(MacroState(
                          calories: caloriesValue,
                          glucides: glucidesValue,
                          proteines: proteinesValue,
                          lipides: lipidesValue,
                        ));
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ),
                        );
                      },
                    )
                  : CustomButton(
                      value: 'Nutrition',
                      label: 'Accèder au repas',
                      onTap: () {},
                    ),
            )
          ],
        ),
      ),
    );
  }
}
