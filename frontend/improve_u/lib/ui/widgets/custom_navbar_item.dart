import 'package:flutter/material.dart';

class CustomNavbarItem extends StatelessWidget {
  final String title;
  final bool selected;

  const CustomNavbarItem(
      {super.key, required this.title, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      decoration: ShapeDecoration(
        color: selected
            ? Theme.of(context).colorScheme.surface
            : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: selected
                      ? Theme.of(context).colorScheme.onBackground
                      : Theme.of(context).colorScheme.surface,
                ),
          ),
        ],
      ),
    );
  }
}
