import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_course_section.dart';
import 'package:improve_u/ui/widgets/custom_recettes_section.dart';

class NutritionViewCourses extends StatelessWidget {
  const NutritionViewCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          /// Titre
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Courses',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ],
          ),

          /// Gap
          const SizedBox(
            height: 32,
          ),

          const CustomRecettesSection(),

          /// Gap
          const SizedBox(
            height: 16,
          ),

          const CustomCourseSection(),
        ],
      ),
    );
  }
}
