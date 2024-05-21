import 'package:flutter/material.dart';

class SanteViewStats extends StatelessWidget {
  const SanteViewStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          /// Titre
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Statistiques',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
