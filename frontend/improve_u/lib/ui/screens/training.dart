import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_bottom_bar.dart';
import 'package:improve_u/ui/widgets/custom_app_bar.dart';
import 'package:improve_u/ui/widgets/section_defi_sport.dart';
import 'package:improve_u/ui/Sport/widgets/section_statistique_sport.dart';
import 'package:improve_u/ui/Sport/widgets/section_information_exercice.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Improve-U'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionDefiSport(points: '2000', info_defi_seances: 'Faire 10 pompes en moins d’une minutes',),
            SectionStatistiqueSport(statisticNumber: '12',  statisticDescription: 'Faire 10 pompes en moins d’une minute',),
            SectionInformationExercice(
          title: 'Développé couché',
          description: 'Le développé couché est un exercice de musculation qui sollicite principalement les pectoraux, les triceps et les épaules. Il est souvent pratiqué avec une barre, mais peut également se faire avec des haltères.',
          tableData: [
            ['Nombre de série', 'Poids', 'Nombre de reps', 'Temps de repos'],
            ['Série 1', '40 kg', '9', '2\'30"'],
            ['Série 2', '40 kg', '9', '2\'30"'],
            ['Série 3', '50 kg', '9', '2\'30"'],
          ], 
        ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
