import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:improve_u/theme/main_theme.dart';
import 'package:improve_u/ui/screens/onboarding/connexion_screen.dart';
import 'package:improve_u/ui/screens/onboarding/inscription_screen.dart';
import 'package:improve_u/ui/views/defi_view.dart';
import 'package:improve_u/ui/views/sante/sante_view.dart';
import 'package:improve_u/ui/screens/home.dart';
import 'package:improve_u/ui/screens/onboarding/splash_screen.dart';
import 'package:improve_u/ui/views/nutrition/nutrition_view.dart';
import 'package:improve_u/ui/views/training/training_view.dart';
import 'package:improve_u/cubit/user_cubit.dart';
import 'package:improve_u/cubit/macro_cubit.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<UserCubit>(
          create: (context) => UserCubit(),
        ),
        BlocProvider<MacroCubit>(
          create: (context) => MacroCubit(),
        ),
      ],
      child: const MyApp(),
    ),
  );
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
        '/health': (BuildContext context) => const SanteView(),
        '/defi': (BuildContext context) => const DefiView(),
        '/splash': (context) =>  const SplashScreen(),
        '/connexion': (context) => const ConnexionScreen(),
        '/inscription': (context) => const InscriptionScreen(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
    );
  }
}
