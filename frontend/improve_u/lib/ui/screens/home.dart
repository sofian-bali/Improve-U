import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_app_bar.dart';
import 'package:improve_u/ui/widgets/custom_bottom_bar.dart';




class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Improve-U'),

      bottomNavigationBar: CustomBottomAppBar(),
      );
  }
}