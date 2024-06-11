import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final String value;
  final VoidCallback? onTap;

  const CustomButton(
      {super.key,
      required this.value,
      required this.label,
      required this.onTap});

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

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        decoration: ShapeDecoration(
          color: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          label,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.background,
              ),
        ),
      ),
    );
  }
}
