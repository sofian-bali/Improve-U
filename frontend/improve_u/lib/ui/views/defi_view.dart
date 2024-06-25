import 'package:flutter/material.dart';
import 'package:improve_u/ui/widgets/custom_defi_section_sante.dart';
import 'package:improve_u/ui/widgets/custom_defi_section.dart';
import 'package:improve_u/ui/widgets/section_defi_sport.dart';

class DefiView extends StatelessWidget {
  const DefiView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Défis de la semaine',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                ),
              ),
              CustomDefiSectionSante(),
              SectionDefiSport(
                defis: [
                  DefiData(
                    points: '50 ',
                    info: 'Faire 10 pompes en moins d’une minute',
                    textButton: 'Faire le défi',
                  ),
                ],
                titleDefi: '',
              ),
              CustomDefiSection(),
              CustomDefiSectionSante(),
              CustomDefiSection(),
              SectionDefiSport(
                defis: [
                  DefiData(
                    points: '50 ',
                    info: 'Faire 10 pompes en moins d’une minute',
                    textButton: 'Faire le défi',
                  ),
                ],
                titleDefi: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}