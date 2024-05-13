import 'package:flutter/material.dart';

class DefiView extends StatelessWidget {
  const DefiView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Titre centré',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Add your additional widgets here
        ],
      ),
    );
  }
}
