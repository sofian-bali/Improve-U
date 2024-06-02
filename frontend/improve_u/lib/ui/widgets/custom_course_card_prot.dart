import 'package:flutter/material.dart';

class CustomCourseCardProt extends StatefulWidget {
  const CustomCourseCardProt({super.key});

  @override
  State<CustomCourseCardProt> createState() => _CustomCourseCardState();
}

class _CustomCourseCardState extends State<CustomCourseCardProt> {
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
            'Protéines',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),

          /// Gap
          const SizedBox(
            height: 4,
          ),

          CheckboxListTile(
            title: const Text('1,5kg de viande hachée 5% de matières grasses'),
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
            title: const Text('6 filets de poulet'),
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
            title: const Text('500g de whey isolate'),
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
