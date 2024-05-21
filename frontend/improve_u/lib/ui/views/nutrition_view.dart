import 'package:flutter/material.dart';
import 'package:improve_u/ui/views/nutrition_view_courses.dart';
import 'package:improve_u/ui/views/nutrition_view_nutrition.dart';
import 'package:improve_u/ui/views/nutrition_view_recettes.dart';
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
    return Column(
      children: [
        /// Navigation
        CustomNavbar(onItemSelected: _onNavbarItemSelected),

        /// Affichage de la page
        if (selectedNavbarIndex == 0) const NutritionViewCourses(),
        if (selectedNavbarIndex == 1) const NutritionViewNutrition(),
        if (selectedNavbarIndex == 2) const NutritionViewRecettes()
      ],
    );
  }
}
