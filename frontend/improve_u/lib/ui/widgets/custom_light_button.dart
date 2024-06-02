import 'package:flutter/material.dart';

class CustomLightButton extends StatelessWidget {
  final String label;
  final String value;

  const CustomLightButton(
      {super.key, required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;

    if (value == 'Training') {
      backgroundColor = Theme.of(context).colorScheme.primary;
    } else if (value == 'Nutrition') {
      backgroundColor = Theme.of(context).colorScheme.secondary;
    } else {
      backgroundColor = Theme.of(context).colorScheme.tertiary;
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      decoration: ShapeDecoration(
        color: Theme.of(context).colorScheme.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            width: 1,
            color: backgroundColor,
          ),
        ),
      ),
      child: Text(
        label,
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: backgroundColor),
      ),
    );
  }
}
