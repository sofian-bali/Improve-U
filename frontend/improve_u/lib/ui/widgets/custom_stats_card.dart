import 'package:flutter/material.dart';
import 'package:improve_u/theme/main_theme.dart';
import 'package:improve_u/ui/widgets/custom_stats_item.dart';

class CustomStatsCard extends StatelessWidget {
  final String title;

  const CustomStatsCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(12),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: CustomColors.secondaireVert300.withOpacity(.2),
            blurRadius: 15,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Titre
          Text(
            title,
            style: Theme.of(context).textTheme.displaySmall,
          ),

          /// Espacement
          const SizedBox(
            height: 16,
          ),

          /// Ligne de stats
          const CustomStatsItem(
            dataNumber: '372',
            dataDesc: 'Délicieux repas sains mangés',
          ),

          /// Espacement
          const SizedBox(
            height: 16,
          ),

          /// Ligne de stats
          const CustomStatsItem(
            dataNumber: '74',
            dataDesc: 'Pourcents de repas salés',
          ),

          /// Espacement
          const SizedBox(
            height: 16,
          ),

          /// Ligne de stats
          const CustomStatsItem(
            dataNumber: '1',
            dataDesc: 'Repas favori : les Spaghettis Bolognaises',
          ),

          /// Espacement
          const SizedBox(
            height: 16,
          ),

          /// Ligne de stats
          const CustomStatsItem(
            dataNumber: '12',
            dataDesc: 'Kilos de perdus depuis ta remise en forme',
          ),
        ],
      ),
    );
  }
}
