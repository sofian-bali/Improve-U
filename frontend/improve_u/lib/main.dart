import 'package:flutter/material.dart';
import 'package:improve_u/router.dart';
import 'package:improve_u/theme/main_theme.dart';
<<<<<<< HEAD
 
 
=======


>>>>>>> 72397e47b29d377517b50a7c6d8fb313c366c2fd
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
<<<<<<< HEAD
      darkTheme: darkMode,
      routes: AppRouter.routes,
=======
      darkTheme: darkMode,      routes: AppRouter.routes,
>>>>>>> 72397e47b29d377517b50a7c6d8fb313c366c2fd
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.homePage,
    );
  }
}