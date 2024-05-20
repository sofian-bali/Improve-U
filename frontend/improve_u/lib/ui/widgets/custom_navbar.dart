import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_navbar_item.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 14,
        ),
        child: Expanded(
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: ShapeDecoration(
              color: Theme.of(context).colorScheme.onSurface,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Row(
              children: [
                CustomNavbarItem(
                  title: 'Courses',
                  selected: false,
                ),
                SizedBox(width: 4),
                CustomNavbarItem(
                  title: 'Nutrition',
                  selected: true,
                ),
                SizedBox(width: 4),
                CustomNavbarItem(
                  title: 'Recettes',
                  selected: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
