import 'package:flutter/material.dart';
import 'package:improve_u/ui/views/nutrition/nutrition_view_courses.dart';
import 'package:improve_u/ui/views/nutrition/nutrition_view_nutrition.dart';
import 'package:improve_u/ui/views/nutrition/nutrition_view_recettes.dart';
import 'package:improve_u/ui/widgets/custom_navbar.dart';

class NutritionView extends StatefulWidget {
  const NutritionView({super.key});

  @override
  State<NutritionView> createState() => _NutritionViewState();
}

class _NutritionViewState extends State<NutritionView> {
  int selectedNavbarIndex = 1;

  void _onNavbarItemSelected(int index) {
    setState(() {
      selectedNavbarIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          /// Navigation
          CustomNavbar(
            onItemSelected: _onNavbarItemSelected,
            firstItemTitle: 'Courses',
            secondItemTitle: 'Nutrition',
            thirdItemTitle: 'Recettes',
          ),

          /// Affichage de la page
          if (selectedNavbarIndex == 0) const NutritionViewCourses(),
          if (selectedNavbarIndex == 1) const NutritionViewNutrition(),
          if (selectedNavbarIndex == 2) const NutritionViewRecettes()
        ],
      ),
    );
  }
}
