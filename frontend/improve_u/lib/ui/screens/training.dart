import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_bottom_bar.dart';
import 'package:improve_u/ui/widgets/custom_app_bar.dart';
import 'package:improve_u/ui/widgets/section_defi_sport.dart';
import 'package:improve_u/ui/Sport/widgets/section_statistique_sport.dart';


class TrainingPage extends StatelessWidget {
  const TrainingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Improve-U'),
      body: 
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SectionDefiSport(points: '2000', info_defi_seances: 'Faire 10 pompes en moins d’une minutes',),
            SectionStatistiqueSport(statisticNumber: '12',  statisticDescription: 'Faire 10 pompes en moins d’une minute',),
          ],
      ),
bottomNavigationBar: CustomBottomAppBar(),

    );
  }
}