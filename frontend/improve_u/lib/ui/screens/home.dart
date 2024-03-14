// ignore_for_file: deprecated_member_use, unused_import
import 'package:flutter/material.dart';
import 'package:improve_u/router.dart';
import 'package:improve_u/main.dart';
import 'package:improve_u/ui/widgets/custom_app_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Improve-U'),
  
      );
  }
}