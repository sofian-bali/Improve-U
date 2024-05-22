import 'package:flutter/material.dart';

class CustomLabel extends StatelessWidget {
  final String value;

  const CustomLabel({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color accentColor;

    if (value == 'Training') {
      backgroundColor = Theme.of(context).colorScheme.primaryContainer;
      accentColor = Theme.of(context).colorScheme.primary;
    } else if (value == 'Nutrition') {
      backgroundColor = Theme.of(context).colorScheme.secondaryContainer;
      accentColor = Theme.of(context).colorScheme.secondary;
    } else {
      backgroundColor = Theme.of(context).colorScheme.tertiaryContainer;
      accentColor = Theme.of(context).colorScheme.tertiary;
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 6,
      ),
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: accentColor,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Text(
        value,
        style: TextStyle(
          color: accentColor,
        ),
      ),
    );
  }
}
