import 'package:flutter/material.dart';

class CustomCourseCardGlucides extends StatefulWidget {
  const CustomCourseCardGlucides({super.key});

  @override
  State<CustomCourseCardGlucides> createState() => _CustomCourseCardState();
}

class _CustomCourseCardState extends State<CustomCourseCardGlucides> {
  final List<bool> _checkedItems = [false, false, false];

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
            'Glucides',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),

          /// Gap
          const SizedBox(
            height: 4,
          ),

          CheckboxListTile(
            title: const Text('1kg de spaghettis'),
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
            title: const Text('500g de pommes de terre'),
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
            title: const Text('2 baguettes'),
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
        ],
      ),
    );
  }
}
