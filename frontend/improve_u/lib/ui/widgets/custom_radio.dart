import 'package:flutter/material.dart';

class CustomRadio extends StatelessWidget {
  final String label;
  final String? value;
  final ValueChanged<String?> onChanged;
  final String colorType;

  const CustomRadio({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    this.colorType = 'primary',
  });

  @override
  Widget build(BuildContext context) {
    Color activeColor;

    switch (colorType) {
      case 'secondary':
        activeColor = Theme.of(context).colorScheme.secondary;
        break;
      case 'tertiary':
        activeColor = Theme.of(context).colorScheme.tertiary;
        break;
      case 'primary':
      default:
        activeColor = Theme.of(context).colorScheme.primary;
        break;
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: RadioListTile<String>(
        activeColor: activeColor,
        title: Text(
          label,
          style: TextStyle(
            color: label == value
                ? Theme.of(context).colorScheme.onBackground
                : Theme.of(context).colorScheme.outline,
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
        controlAffinity: ListTileControlAffinity.leading,
        value: label,
        groupValue: value,
        onChanged: onChanged,
      ),
    );
  }
}
