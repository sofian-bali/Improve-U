// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

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
        textTheme: TextTheme(
          headline1: const TextStyle(fontSize: 34.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          headline2: const TextStyle(fontSize: 28.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          headline3: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          headline4: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          headline5: const TextStyle(fontSize: 17.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          button: const TextStyle(fontSize: 17.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          bodyLarge: const TextStyle(fontSize: 17.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          bodyText1: const TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, fontFamily: 'DM sans'),
          bodySmall: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          bodyText2: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'DM sans'),
          caption: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans', fontStyle: FontStyle.italic),
          headline6: const TextStyle(fontSize: 13.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFF8AA8E5),
          onPrimary: Color(0xFF000000), // Couleur de texte sur le fond primaire
          primaryContainer: Color(0xFFACBFE5),
          onPrimaryContainer: Color(0xFFFFFFFF), // Couleur de texte sur le conteneur primaire
          
          secondary: Color(0xFF7BD94C),
          onSecondary: Color(0xFF000000), // Couleur de texte sur le fond secondaire
          secondaryContainer: Color(0xFFA1E57E),
          onSecondaryContainer: Color(0xFFFFFFFF), // Couleur de texte sur le conteneur secondaire
          
          tertiary: Color(0xFFE55069),
          onTertiary: Color(0xFF000000), // Couleur de texte sur le fond tertiaire
          tertiaryContainer: Color(0xFFE57E90),
          onTertiaryContainer: Color(0xFFFFFFFF), // Couleur de texte sur le conteneur tertiaire
          
          error: Color(0xFFCC3D55),
          onError: Color(0xFF000000), // Couleur de texte sur le fond d'erreur
          errorContainer: Color(0xFFD98290),
          onErrorContainer: Color(0xFFFFFFFF), // Couleur de texte sur le conteneur d'erreur
          
          background: Color(0xFF121212), // Couleur de fond globale dans le mode sombre
          onBackground: Color(0xFFFFFFFF), // Couleur de texte sur le fond global
          
          surface: Color(0xFF333333), // Couleur de surface dans le mode sombre
          onSurface: Color(0xFFFFFFFF), // Couleur de texte sur la surface
          surfaceVariant: Color(0xFF4B5563), // Variant de couleur de surface dans le mode sombre
          onSurfaceVariant: Color(0xFFFFFFFF), // Couleur de texte sur la variant de surface
        ),
        textTheme: TextTheme(
          headline1: const TextStyle(fontSize: 34.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          headline2: const TextStyle(fontSize: 28.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          headline3: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          headline4: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          headline5: const TextStyle(fontSize: 17.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          button: const TextStyle(fontSize: 17.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          bodyLarge: const TextStyle(fontSize: 17.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          bodyText1: const TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, fontFamily: 'DM sans'),
          bodySmall: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
          bodyText2: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'DM sans'),
          caption: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans', fontStyle: FontStyle.italic),
          headline6: const TextStyle(fontSize: 13.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
