
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SportProgressCard extends StatelessWidget {
  final String title;
  final double objectifPercent;
  final String objectifFinal;
  final String circularText; 
  final String circularExercice;
  final List<LinearProgressData> linearProgressData;

  const SportProgressCard({
    super.key,
    required this.title,
    required this.objectifPercent,
    required this.objectifFinal,
    required this.circularText,
    required this.circularExercice,
    required this.linearProgressData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFF8AA8E5),
            blurRadius: 15,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Titre
            Row(
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),

            const SizedBox(height: 16), // Espacement

            // Cercle des calories
            Center(
              child: CircularPercentIndicator(
                radius: 90.0,
                lineWidth: 17.0,
                percent: objectifPercent,
                animation: true,
                animationDuration: 1000,
                circularStrokeCap: CircularStrokeCap.round,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      circularText, 
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      objectifFinal,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                
                progressColor: Theme.of(context).colorScheme.primary,
                backgroundColor:
                    Theme.of(context).colorScheme.primaryContainer,
              ),
              
            ),
            const SizedBox(height: 16),
            
            Text(
                      circularExercice,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
            const SizedBox(height: 16),

            // Barres de progression linéaires dynamiques
            Column(
              children: linearProgressData
                  .map((data) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: LinearProgressWidget(data: data),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class LinearProgressData {
  final String title;
  final double progress;
  final String progressText;

  LinearProgressData({
    required this.title,
    required this.progress,
    required this.progressText, required double percent,
  });
}

class LinearProgressWidget extends StatelessWidget {
  final LinearProgressData data;

  const LinearProgressWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(data.title),
            Text(data.progressText),
          ],
        ),
        const SizedBox(height: 4),
        LinearPercentIndicator(
          padding: EdgeInsets.zero,
          lineHeight: 10.0,
          percent: data.progress,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          progressColor: Theme.of(context).colorScheme.primary,
          animation: true,
          animationDuration: 500,
          barRadius: const Radius.circular(8),
        ),
      ],
    );
  }
}
