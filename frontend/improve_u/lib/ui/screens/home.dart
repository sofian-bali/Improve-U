import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:improve_u/ui/views/defi_view.dart';
import 'package:improve_u/ui/views/nutrition_view.dart';
import 'package:improve_u/ui/views/sante/sante_view.dart';
import 'package:improve_u/ui/views/training/training_view.dart';
import 'package:improve_u/ui/widgets/custom_app_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _viewsOptions = <Widget>[
    TrainingView(),
    NutritionView(),
    SanteView(),
    DefiView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: _viewsOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.fire,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            label: 'Training',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.utensils,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            label: 'Nutrition',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.heartPulse,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            label: 'Santé',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.flagCheckered,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            label: 'Défi',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
