import 'package:flutter/material.dart';
import 'package:improve_u/ui/views/training/training_view_seances.dart';
import 'package:improve_u/ui/views/training/training_view_stats.dart';
import 'package:improve_u/ui/views/training/training_view_training.dart';
import 'package:improve_u/ui/widgets/custom_navbar.dart';


class TrainingView extends StatefulWidget {
  const TrainingView({super.key});

  @override
  State<TrainingView> createState() => _TrainingViewState();
}

class _TrainingViewState extends State<TrainingView> {
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Navigation
          CustomNavbar(
            onItemSelected: _onNavbarItemSelected,
            firstItemTitle: 'Statistiques',
            secondItemTitle: 'Training',
            thirdItemTitle: 'Séances',
          ),

          /// Affichage de la page
          if (selectedNavbarIndex == 0) const TrainingViewStats(),
          if (selectedNavbarIndex == 1) const TrainingViewTraining(),
          if (selectedNavbarIndex == 2) const TrainingViewSeances(),
        ],
      ),
    );
  }
}
