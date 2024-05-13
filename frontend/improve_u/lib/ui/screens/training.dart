import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_bottom_app_bar.dart';
import 'package:improve_u/ui/widgets/custom_app_bar.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Improve-U'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Text(
          'Titre centré',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),

          ],
        ),
      ),
bottomNavigationBar: CustomBottomAppBar(),

    );
  }
}