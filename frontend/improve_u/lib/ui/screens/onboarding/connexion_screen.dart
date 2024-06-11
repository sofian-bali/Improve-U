import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:improve_u/ui/widgets/custom_button_big.dart';

class ConnexionScreen extends StatelessWidget {
  const ConnexionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center the whole column horizontally
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Logo
                  SvgPicture.asset(
                    'assets/logo/logo_horizontal_black.svg',
                    // ignore: deprecated_member_use
                    color: Theme.of(context).colorScheme.onBackground,
                  ),

                  /// Gap
                  const SizedBox(
                    height: 64,
                  ),

                  Text(
                    'TRAINING',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),

                  /// Gap
                  const SizedBox(
                    height: 24,
                  ),

                  Text(
                    'NUTRITION',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),

                  /// Gap
                  const SizedBox(
                    height: 24,
                  ),

                  Text(
                    'SANTE',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                  ),
                ],
              ),
            ),

            /// Boutons en bas
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  /// Bouton principal
                  CustomButtonBig(
                    isOutline: false,
                    label: "Créer un compte",
                    onTap: () {},
                  ),

                  /// Gap
                  const SizedBox(
                    height: 24,
                  ),

                  /// Séparateur
                  Container(
                    height: 1,
                    width: 100,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),

                  /// Gap
                  const SizedBox(
                    height: 24,
                  ),

                  /// Bouton secondaire
                  CustomButtonBig(
                    isOutline: true,
                    label: "Créer un compte",
                    onTap: () {},
                  ),

                  /// Gap
                  const SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
