import 'package:flutter/material.dart';
import 'package:improve_u/theme/main_theme.dart';
import 'package:improve_u/ui/views/defi_view.dart';
import 'package:improve_u/ui/views/health_view.dart';
import 'package:improve_u/ui/screens/home.dart';
import 'package:improve_u/ui/views/nutrition_view.dart';
import 'package:improve_u/ui/views/training_view.dart';

void main() {
  runApp(const MyApp());
}  
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Improve-U',
      themeMode: ThemeMode.system,
      theme: lightMode,
      darkTheme: darkMode,
      routes: <String, Widget Function(BuildContext)>{
        '/home': (BuildContext context) => const Home(),
        '/training': (BuildContext context) => const TrainingView(),
        '/nutrition': (BuildContext context) => const NutritionView(),
        '/health': (BuildContext context) => const HealthView(),
        '/defi': (BuildContext context) => const DefiView(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
    );
  }
}
