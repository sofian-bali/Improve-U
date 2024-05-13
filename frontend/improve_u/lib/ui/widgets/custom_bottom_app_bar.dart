import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.fire,
            color: Colors.black,
          ),
          label: 'Training',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.utensils,
            color: Colors.black,
          ),
          label: 'Nutrition',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.heartPulse,
            color: Colors.black,
          ),
          label: 'Santé',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.flagCheckered,
            color: Colors.black,
          ),
          label: 'Défi',
        ),
      ],
    );
  }
}
