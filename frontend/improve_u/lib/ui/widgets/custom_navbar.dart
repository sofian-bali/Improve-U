import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_navbar_item.dart';

class CustomNavbar extends StatefulWidget {
  final String firstItemTitle;
  final String secondItemTitle;
  final String thirdItemTitle;
  final ValueChanged<int> onItemSelected;

  const CustomNavbar({
    super.key,
    required this.onItemSelected,
    required this.firstItemTitle,
    required this.secondItemTitle,
    required this.thirdItemTitle,
  });

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  int selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      widget.onItemSelected(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 14,
        ),
        child: Container(
          padding: const EdgeInsets.all(4),
          decoration: ShapeDecoration(
            color: Theme.of(context).colorScheme.onSurface,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => _onItemTapped(0),
                  child: CustomNavbarItem(
                    title: widget.firstItemTitle,
                    selected: selectedIndex == 0,
                  ),
                ),
              ),
              const SizedBox(width: 4),
              Expanded(
                child: GestureDetector(
                  onTap: () => _onItemTapped(1),
                  child: CustomNavbarItem(
                    title: widget.secondItemTitle,
                    selected: selectedIndex == 1,
                  ),
                ),
              ),
              const SizedBox(width: 4),
              Expanded(
                child: GestureDetector(
                  onTap: () => _onItemTapped(2),
                  child: CustomNavbarItem(
                    title: widget.thirdItemTitle,
                    selected: selectedIndex == 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
