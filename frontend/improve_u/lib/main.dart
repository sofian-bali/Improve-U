// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:improve_u/router.dart';



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
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF8AA8E5),
          onPrimary: Color(0xFFE6EAF2),
          primaryContainer: Color(0xFFACBFE5),
          onPrimaryContainer: Color(0xFF6C83B2),
        
          secondary: Color(0xFF7BD94C),
          onSecondary: Color(0xFFE2F2DA),
          secondaryContainer: Color(0xFFA1E57E),
          onSecondaryContainer: Color(0xFF6BB248),

          tertiary: Color(0xFFE55069),
          onTertiary: Color(0xFFF2DADE),
          tertiaryContainer: Color(0xFFE57E90),
          onTertiaryContainer: Color(0xFFB23E52),

          error: Color(0xFFCC3D55),
          onError: Color(0xFFF2DADE),
          errorContainer: Color(0xFFD98290),
          onErrorContainer: Color(0xFF991F47),

          background: Color(0xFFF1F2F3),
          onBackground: Color(0xFFF3F4F6),
          
          surface: Color(0xFFD1D5DB),
          onSurface: Color(0xFF9CA3AF),
          surfaceVariant: Color(0xFF4B5563),
          onSurfaceVariant: Color(0xFF374151),
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 34.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          headline2: TextStyle(fontSize: 28.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          headline3: TextStyle(fontSize: 22.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          headline5: TextStyle(fontSize: 17.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          headline6: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'), // Ajout de headline6
          button: TextStyle(fontSize: 17.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          bodyText1: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, fontFamily: 'DM sans'),
          bodyText2: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'DM sans'),
          caption: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans', fontStyle: FontStyle.italic),
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFF8AA8E5),
          onPrimary: Color(0xFF000000), 
          primaryContainer: Color(0xFFACBFE5),
          onPrimaryContainer: Color(0xFFFFFFFF), 
          
          secondary: Color(0xFF7BD94C),
          onSecondary: Color(0xFF000000), 
          secondaryContainer: Color(0xFFA1E57E),
          onSecondaryContainer: Color(0xFFFFFFFF), 

          tertiary: Color(0xFFE55069),
          onTertiary: Color(0xFF000000), 
          tertiaryContainer: Color(0xFFE57E90),
          onTertiaryContainer: Color(0xFFFFFFFF), 
          
          error: Color(0xFFCC3D55),
          onError: Color(0xFF000000), 
          errorContainer: Color(0xFFD98290),
          onErrorContainer: Color(0xFFFFFFFF), 
          
          background: Color(0xFF121212), 
          onBackground: Color(0xFFFFFFFF),

          surface: Color(0xFF333333), 
          onSurface: Color(0xFFFFFFFF),     
          surfaceVariant: Color(0xFF4B5563), 
          onSurfaceVariant: Color(0xFFFFFFFF), 
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 34.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          headline2: TextStyle(fontSize: 28.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          headline3: TextStyle(fontSize: 22.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          headline5: TextStyle(fontSize: 17.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          headline6: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'), 
          button: TextStyle(fontSize: 17.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          bodyText1: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, fontFamily: 'DM sans'),
          bodyText2: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'DM sans'),
          caption: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans', fontStyle: FontStyle.italic),
        ),
        useMaterial3: true,
      ),
      routes: AppRouter.routes,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.homePage,
    );
  }
}
