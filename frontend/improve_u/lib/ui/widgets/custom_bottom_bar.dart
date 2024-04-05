// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:improve_u/theme/main_theme.dart';




class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({super.key});

  @override
  State<CustomBottomAppBar> createState() =>
      _CustomBottomAppBarState();
}

class _CustomBottomAppBarState
    extends State<CustomBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.fireFlameCurved, color: CustomColors.primaireBleu500),
            label: 'Training',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.bowlFood,color: CustomColors.primaireBleu500),
            label: 'Nutrition',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up_rounded,color: CustomColors.primaireBleu500),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.heartPulse, color: CustomColors.primaireBleu500),
            label: 'Santé',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.trophy, color: CustomColors.primaireBleu500),
            label: 'Défi',
          ),
        ],
    );
  }
}
