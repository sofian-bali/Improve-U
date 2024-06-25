import 'package:flutter/material.dart';

class InscriptionViewRedirect extends StatefulWidget {
  const InscriptionViewRedirect({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InscriptionViewRedirectState createState() =>
      _InscriptionViewRedirectState();
}

class _InscriptionViewRedirectState extends State<InscriptionViewRedirect> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// Sous-titre
          Text(
            'Bienvenue John !',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onBackground,
              fontSize: 32,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w900,
            ),
          ),

          /// Gap
          const SizedBox(height: 64),

          /// Mascotte
          Image.asset(
            'assets/logo/logo.png',
            height: 300,
          ),
        ],
      ),
    );
  }
}
