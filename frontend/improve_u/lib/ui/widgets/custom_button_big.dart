import 'package:flutter/material.dart';

class CustomButtonBig extends StatelessWidget {
  final String label;
  final bool isOutline;
  final VoidCallback? onTap;

  const CustomButtonBig({
    super.key,
    required this.label,
    required this.onTap,
    required this.isOutline,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color borderColor;
    Color textColor;

    if (isOutline) {
      backgroundColor = Theme.of(context).colorScheme.background;
      borderColor = Theme.of(context).colorScheme.onSurfaceVariant;
      textColor = Theme.of(context).colorScheme.onBackground;
    } else {
      backgroundColor = Theme.of(context).colorScheme.onBackground;
      borderColor = Colors.transparent;
      textColor = Theme.of(context).colorScheme.background;
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            label,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: textColor,
                ),
          ),
        ),
      ),
    );
  }
}
