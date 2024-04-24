import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_bottom_bar.dart';
import 'package:improve_u/ui/widgets/custom_app_bar.dart';

class NutritionPage extends StatelessWidget {
  const NutritionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Improve-U'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Text(
          'Titre nutrition',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Add your additional widgets here
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(),

    );
  }
}