import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_course_card_glucides.dart';
import 'package:improve_u/ui/widgets/custom_course_card_legumes.dart';
import 'package:improve_u/ui/widgets/custom_course_card_prot.dart';

class CustomCourseSection extends StatelessWidget {
  const CustomCourseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /// Titre
          Text(
            'Liste de course',
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
          ),

          /// Gap
          const SizedBox(
            height: 16,
          ),

          /// Liste des aliments protéines
          const CustomCourseCardProt(),

          /// Gap
          const SizedBox(
            height: 16,
          ),

          /// Liste des aliments légumes
          const CustomCourseCardLegumes(),

          /// Gap
          const SizedBox(
            height: 16,
          ),

          /// Liste des aliments glucides
          const CustomCourseCardGlucides(),
        ],
      ),
    );
  }
}
