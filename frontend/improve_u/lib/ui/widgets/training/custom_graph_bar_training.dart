import 'package:flutter/material.dart';

class CustomGraphBarTraining extends StatelessWidget {
  final String valuetraining;
  final double quantitytraining;
  final String monthtraining;

  const CustomGraphBarTraining(
      {super.key,
      required this.valuetraining,
      required this.quantitytraining,
      required this.monthtraining});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          /// Poids
          Text(
            valuetraining,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                ),
          ),

          /// Gap
          const SizedBox(
            height: 4,
          ),

          /// Barre
          Container(
            decoration: ShapeDecoration(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            height: quantitytraining,
            width: double.infinity,
          ),

          /// Gap
          const SizedBox(
            height: 4,
          ),

          /// Mois
          Container(
            height: 50,
            margin: const EdgeInsets.only(top: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RotationTransition(
                  turns: const AlwaysStoppedAnimation(60 / 360),
                  child: Text(
                    monthtraining,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                    softWrap: false,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
