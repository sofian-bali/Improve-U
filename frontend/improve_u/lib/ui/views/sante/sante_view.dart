import 'package:flutter/material.dart';
import 'package:improve_u/ui/views/sante/sante_view_stats.dart';
import 'package:improve_u/ui/views/sante/sante_view_sante.dart';
import 'package:improve_u/ui/views/sante/sante_view_evolve.dart';
import 'package:improve_u/ui/widgets/custom_navbar.dart';

class SanteView extends StatefulWidget {
  const SanteView({super.key});

  @override
  State<SanteView> createState() => _SanteViewState();
}

class _SanteViewState extends State<SanteView> {
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
        children: [
          /// Navigation
          CustomNavbar(
            onItemSelected: _onNavbarItemSelected,
            firstItemTitle: 'Statistiques',
            secondItemTitle: 'Santé',
            thirdItemTitle: 'Évolution',
          ),

          /// Affichage de la page
          if (selectedNavbarIndex == 0) const SanteViewStats(),
          if (selectedNavbarIndex == 1) const SanteViewSante(),
          if (selectedNavbarIndex == 2) const SanteViewEvolve()
        ],
      ),
    );
  }
}
