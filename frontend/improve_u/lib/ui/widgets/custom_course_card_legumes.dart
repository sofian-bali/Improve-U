import 'package:flutter/material.dart';

class CustomCourseCardLegumes extends StatefulWidget {
  const CustomCourseCardLegumes({super.key});

  @override
  State<CustomCourseCardLegumes> createState() => _CustomCourseCardState();
}

class _CustomCourseCardState extends State<CustomCourseCardLegumes> {
  final List<bool> _checkedItems = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Theme.of(context).colorScheme.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Titre
          Text(
            'Légumes',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),

          /// Gap
          const SizedBox(
            height: 4,
          ),

          CheckboxListTile(
            title: const Text('4 poivrons'),
            controlAffinity: ListTileControlAffinity.leading,
            value: _checkedItems[0],
            onChanged: (bool? value) {
              setState(() {
                _checkedItems[0] = value ?? false;
              });
            },
            activeColor: Theme.of(context).colorScheme.secondary,
            checkColor: Theme.of(context).colorScheme.secondaryContainer,
          ),

          CheckboxListTile(
            title: const Text('500g de brocolis'),
            controlAffinity: ListTileControlAffinity.leading,
            value: _checkedItems[1],
            onChanged: (bool? value) {
              setState(() {
                _checkedItems[1] = value ?? false;
              });
            },
            activeColor: Theme.of(context).colorScheme.secondary,
            checkColor: Theme.of(context).colorScheme.secondaryContainer,
          ),

          CheckboxListTile(
            title: const Text('8 tomates'),
            controlAffinity: ListTileControlAffinity.leading,
            value: _checkedItems[2],
            onChanged: (bool? value) {
              setState(() {
                _checkedItems[2] = value ?? false;
              });
            },
            activeColor: Theme.of(context).colorScheme.secondary,
            checkColor: Theme.of(context).colorScheme.secondaryContainer,
          ),

          CheckboxListTile(
            title: const Text('4 carottes'),
            controlAffinity: ListTileControlAffinity.leading,
            value: _checkedItems[3],
            onChanged: (bool? value) {
              setState(() {
                _checkedItems[3] = value ?? false;
              });
            },
            activeColor: Theme.of(context).colorScheme.secondary,
            checkColor: Theme.of(context).colorScheme.secondaryContainer,
          ),
        ],
      ),
    );
  }
}
