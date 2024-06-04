import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:improve_u/cubit/user_cubit.dart';
import 'package:improve_u/cubit/user_state.dart';
import 'package:improve_u/ui/widgets/custom_meal_card.dart';

class NutritionViewRecettes extends StatefulWidget {
  const NutritionViewRecettes({super.key});

  @override
  State<NutritionViewRecettes> createState() => _NutritionViewRecettesState();
}

class _NutritionViewRecettesState extends State<NutritionViewRecettes> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              /// Titre
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Recettes',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                ],
              ),

              /// Espacement
              const SizedBox(
                height: 32,
              ),

              /// Affichage des repas
              CustomMealCard(
                bigCard: true,
                name: 'Muesli bowl',
                image: 'assets/bowl.png',
                desc:
                    'Dégustez un bol de muesli, parfait pour un petit-déjeuner sain et équilibré. Ce mélange de muesli, de fruits et de fromage blanc, offre une explosion de saveurs et de textures. Idéal pour bien commencer la journée avec un repas nutritif et délicieux.',
                colorValue: 'Nutrition',
                labelText: 'Déjeuner',
                caloriesValue: 520,
                caloriesValueTotal: state.totalCalories,
                glucidesValue: 86,
                glucidesValueTotal: state.totalGlucides,
                proteinesValue: 38,
                proteinesValueTotal: state.totalProteines,
                lipidesValue: 15,
                lipidesValueTotal: state.totalLipides,
              ),

              /// Espacement
              const SizedBox(
                height: 16,
              ),

              /// Affichage des repas
              CustomMealCard(
                bigCard: true,
                name: 'Spaghetti bolognaise',
                image: 'assets/spaghetti.png',
                desc:
                    'Savourez l\'authentique Spaghetti Bolognaise, un classique de la cuisine italienne. Des spaghettis al dente accompagnés d\'une sauce bolognaise riche et savoureuse. Cette recette vous offre un repas délicieux et idéal pour toutes les occasions.',
                colorValue: 'Nutrition',
                labelText: 'Déjeuner',
                caloriesValue: 813,
                caloriesValueTotal: state.totalCalories,
                glucidesValue: 120,
                glucidesValueTotal: state.totalGlucides,
                proteinesValue: 27,
                proteinesValueTotal: state.totalProteines,
                lipidesValue: 23,
                lipidesValueTotal: state.totalLipides,
              ),

              /// Espacement
              const SizedBox(
                height: 16,
              ),

              /// Affichage des repas
              CustomMealCard(
                bigCard: true,
                name: 'Poulet curry',
                image: 'assets/curry.png',
                desc:
                    'Un délicieux poulet curry, un plat épicé et réconfortant avec des morceaux de poulet tendre avec une sauce curry. Accompagné de riz, ce repas offre un équilibre parfait entre saveurs intenses et douceur, idéal pour une expérience culinaire exotique',
                colorValue: 'Nutrition',
                labelText: 'Déjeuner',
                caloriesValue: 761,
                caloriesValueTotal: state.totalCalories,
                glucidesValue: 93,
                glucidesValueTotal: state.totalGlucides,
                proteinesValue: 53,
                proteinesValueTotal: state.totalProteines,
                lipidesValue: 18,
                lipidesValueTotal: state.totalLipides,
              ),
            ],
          ),
        );
      },
    );
  }
}
