// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:improve_u/ui/screens/home.dart';
import 'package:improve_u/ui/screens/training.dart';
import 'package:improve_u/ui/screens/nutrition.dart';
import 'package:improve_u/ui/screens/sante.dart';
import 'package:improve_u/ui/screens/defi.dart';

class AppRouter {
  static const String homePage = '/home';

  static final Map<String, WidgetBuilder> routes = {
    '/training': (context) => const TrainingPage(),
    '/nutrition': (context) => const NutritionPage(),
    homePage: (context) => const HomePage(),
    '/sante': (context) => const HealthPage(),
    '/defi': (context) => const ChallengePage(),
  };
}

