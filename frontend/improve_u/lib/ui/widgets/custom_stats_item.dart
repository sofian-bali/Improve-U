import 'package:flutter/material.dart';

class CustomStatsItem extends StatelessWidget {
  final String dataNumber;
  final String dataDesc;

  const CustomStatsItem(
      {super.key, required this.dataNumber, required this.dataDesc});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Chiffre
        ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 35,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Theme.of(context).colorScheme.onSecondaryContainer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Center(
              child: Text(
                dataNumber,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Theme.of(context).colorScheme.surface,
                    ),
              ),
            ),
          ),
        ),

        /// Espacement
        const SizedBox(
          width: 16,
        ),

        /// Description
        Expanded(
          child: Text(
            dataDesc,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
            softWrap: true,
          ),
        )
      ],
    );
  }
}
