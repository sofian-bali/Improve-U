



import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:improve_u/theme/main_theme.dart';


class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
     String currentRoute = ModalRoute.of(context)!.settings.name ?? '';
    switch (currentRoute) {

      case '/training':
        _selectedIndex = 0;
        break;
      case '/nutrition':
        _selectedIndex = 1;
        break;
      case '/home':
        _selectedIndex = 2;
        break;
      case '/sante':
        _selectedIndex = 3;
        break;
      case '/defi':
        _selectedIndex = 4; 
        break;
    }
    return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.fireFlameCurved, color: CustomColors.primaireBleu500, size: 20),
        label: 'Training',
      ),
      BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.bowlFood, color: CustomColors.primaireBleu500, size: 20),
        label: 'Nutrition',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.trending_up_rounded, color: CustomColors.primaireBleu500, size: 20),
        label: 'Accueil',
      ),
      BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.heartPulse, color: CustomColors.primaireBleu500, size: 20),
        label: 'Santé',
      ),
      BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.trophy, color: CustomColors.primaireBleu500, size: 20),
        label: 'Défi',
      ),
    ],
    currentIndex: _selectedIndex,
      selectedItemColor: CustomColors.primaireBleu500,
      unselectedItemColor: CustomColors.primaireBleu500,
      onTap: _onItemTapped,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(fontSize: 12),
      unselectedLabelStyle: const TextStyle(color: CustomColors.primaireBleu500, fontSize: 12),
      

  );
  }
}