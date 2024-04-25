import 'package:flutter/material.dart';

class CustomColors {
  static const Color neutreGris0 = Color(0xFFFFFFFF);
  static const Color neutreGris50 = Color(0xFFFAFAFA);
  static const Color neutreGris100 = Color(0xFFD1D5DB);
  static const Color neutreGris300 = Color(0xFF9CA3AF);
  static const Color neutreGris500 = Color(0xFF4B5563);
  static const Color neutreGris700 = Color(0xFF374151);
  static const Color neutreGris900 = Color(0xFF09090B);

  static const Color primaireBleu50 = Color(0xFFF0F5FF);
  static const Color primaireBleu300 = Color(0xFFACBFE5);
  static const Color primaireBleu500 = Color(0xFF8AA8E5);
  static const Color primaireBleu700 = Color(0xFF6C83B2);
  static const Color primaireBleu900 = Color(0xFF242E42);

  static const Color secondaireVert50 = Color(0xFFF6FCF2);
  static const Color secondaireVert300 = Color(0xFFA1E57E);
  static const Color secondaireVert500 = Color(0xFF7BD94C);
  static const Color secondaireVert700 = Color(0xFF6BB248);
  static const Color secondaireVert900 = Color(0xFF2C481E);

  static const Color tertiaireRouge50 = Color(0xFFFCF2F4);
  static const Color tertiaireRouge300 = Color(0xFFE57E90);
  static const Color tertiaireRouge500 = Color(0xFFE55069);
  static const Color tertiaireRouge700 = Color(0xFFB23E52);
  static const Color tertiaireRouge900 = Color(0xFF712834);

  static const Color succsSuccs50 = Color(0xFFDAF2E6);
  static const Color succsSuccs300 = Color(0xFF82D9AE);
  static const Color succsSuccs500 = Color(0xFF3DCC85);
  static const Color succsSuccs700 = Color(0xFF1F995C);
  static const Color succsSuccs900 = Color(0xFF19804C);

  static const Color alerteAlerte50 = Color(0xFFF2F2DA);
  static const Color alerteAlerte300 = Color(0xFFD9D982);
  static const Color alerteAlerte500 = Color(0xFFCCCC3D);
  static const Color alerteAlerte700 = Color(0xFF99991F);
  static const Color alerteAlerte900 = Color(0xFF80801A);

  static const Color erreurErreur50 = Color(0xFFF2DADE);
  static const Color erreurErreur300 = Color(0xFFD98290);
  static const Color erreurErreur500 = Color(0xFFCC5266);
  static const Color erreurErreur700 = Color(0xFF991F33);
  static const Color erreurErreur900 = Color(0xFF801A2B);
}

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
<<<<<<< HEAD
  colorScheme: const ColorScheme.light(
    primary: CustomColors.primaireBleu500,
    onPrimary: CustomColors.primaireBleu900,
    primaryContainer: CustomColors.primaireBleu50,
    onPrimaryContainer: CustomColors.primaireBleu700,
    secondary: CustomColors.secondaireVert500,
    onSecondary: CustomColors.secondaireVert900,
    secondaryContainer: CustomColors.secondaireVert50,
    onSecondaryContainer: CustomColors.secondaireVert700,
    tertiary: CustomColors.tertiaireRouge500,
    onTertiary: CustomColors.tertiaireRouge900,
    tertiaryContainer: CustomColors.tertiaireRouge50,
    onTertiaryContainer: CustomColors.tertiaireRouge700,
    error: CustomColors.erreurErreur500,
    onError: CustomColors.erreurErreur900,
    errorContainer: CustomColors.erreurErreur50,
    onErrorContainer: CustomColors.erreurErreur700,
    background: CustomColors.neutreGris0,
    onBackground: CustomColors.neutreGris900,
    surface: CustomColors.neutreGris50,
    onSurface: CustomColors.neutreGris700,
    surfaceVariant: CustomColors.neutreGris100,
    onSurfaceVariant: CustomColors.neutreGris300,
=======
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
>>>>>>> 72397e47b29d377517b50a7c6d8fb313c366c2fd
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontSize: 34.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
    displayMedium: TextStyle(
        fontSize: 28.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
    displaySmall: TextStyle(
        fontSize: 22.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
    headlineLarge: TextStyle(
        fontSize: 20.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
    headlineMedium: TextStyle(
        fontSize: 17.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
    headlineSmall: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.normal,
        fontFamily: 'DM sans'), // Ajout de headline6
    labelLarge: TextStyle(
        fontSize: 17.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
    bodyLarge: TextStyle(
        fontSize: 17.0, fontWeight: FontWeight.bold, fontFamily: 'DM sans'),
    bodyMedium: TextStyle(
        fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'DM sans'),
    bodySmall: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        fontFamily: 'DM sans',
        fontStyle: FontStyle.italic),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
<<<<<<< HEAD
  colorScheme: const ColorScheme.dark(
    primary: CustomColors.primaireBleu500,
    onPrimary: CustomColors.primaireBleu50,
    primaryContainer: CustomColors.primaireBleu700,
    onPrimaryContainer: CustomColors.primaireBleu300,
    secondary: CustomColors.secondaireVert500,
    onSecondary: CustomColors.secondaireVert50,
    secondaryContainer: CustomColors.secondaireVert700,
    onSecondaryContainer: CustomColors.secondaireVert300,
    tertiary: CustomColors.tertiaireRouge500,
    onTertiary: CustomColors.tertiaireRouge50,
    tertiaryContainer: CustomColors.tertiaireRouge700,
    onTertiaryContainer: CustomColors.tertiaireRouge300,
    error: CustomColors.erreurErreur500,
    onError: CustomColors.erreurErreur50,
    errorContainer: CustomColors.erreurErreur700,
    onErrorContainer: CustomColors.erreurErreur300,
    background: CustomColors.neutreGris900,
    onBackground: CustomColors.neutreGris100,
    surface: CustomColors.neutreGris700,
    onSurface: CustomColors.neutreGris50,
    surfaceVariant: CustomColors.neutreGris300,
    onSurfaceVariant: CustomColors.neutreGris100,
=======
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
>>>>>>> 72397e47b29d377517b50a7c6d8fb313c366c2fd
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontSize: 34.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
    displayMedium: TextStyle(
        fontSize: 28.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
    displaySmall: TextStyle(
        fontSize: 22.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
    headlineLarge: TextStyle(
        fontSize: 20.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
    headlineMedium: TextStyle(
        fontSize: 17.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
    headlineSmall: TextStyle(
        fontSize: 15.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
    labelLarge: TextStyle(
        fontSize: 17.0, fontWeight: FontWeight.normal, fontFamily: 'DM sans'),
    bodyLarge: TextStyle(
        fontSize: 17.0, fontWeight: FontWeight.bold, fontFamily: 'DM sans'),
    bodyMedium: TextStyle(
        fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'DM sans'),
    bodySmall: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        fontFamily: 'DM sans',
        fontStyle: FontStyle.italic),
  ),
<<<<<<< HEAD
);
=======
);
>>>>>>> 72397e47b29d377517b50a7c6d8fb313c366c2fd
