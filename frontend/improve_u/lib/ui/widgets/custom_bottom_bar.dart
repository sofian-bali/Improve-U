

// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:improve_u/theme/main_theme.dart';



class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({super.key});

  @override
  _CustomBottomAppBarState createState() {
    return _CustomBottomAppBarState();
  }
}


class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/training');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/nutrition');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/home');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '/sante');
        break;
      case 4:
        Navigator.pushReplacementNamed(context, '/defi');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.fireFlameCurved, color: CustomColors.primaireBleu500),
        label: 'Training',
      ),
      BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.bowlFood, color: CustomColors.primaireBleu500),
        label: 'Nutrition',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.trending_up_rounded, color: CustomColors.primaireBleu500),
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
    currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: CustomColors.primaireBleu500,
      onTap: _onItemTapped,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(color: CustomColors.tertiaireRouge300),
      unselectedLabelStyle: const TextStyle(color: CustomColors.primaireBleu500),

  );
  }
}