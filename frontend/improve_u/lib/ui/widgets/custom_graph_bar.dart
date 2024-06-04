import 'package:flutter/material.dart';

class CustomGraphBar extends StatelessWidget {
  final String value;
  final double quantity;
  final String month;

  const CustomGraphBar(
      {super.key,
      required this.value,
      required this.quantity,
      required this.month});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          /// Poids
          Text(
            value,
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
              color: Theme.of(context).colorScheme.tertiary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            height: quantity,
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
                    month,
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
