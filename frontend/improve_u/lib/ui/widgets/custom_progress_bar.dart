import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CustomProgressBar extends StatelessWidget {
  final String name;
  final int value;
  final int valueTotal;

  const CustomProgressBar(
      {super.key,
      required this.name,
      required this.value,
      required this.valueTotal});

  @override
  Widget build(BuildContext context) {
    double percent = ((value * 100) / valueTotal) / 100;
    double roundedPercent = double.parse(percent.toStringAsFixed(2));

    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          /// Nom de la progress bar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(name), Text('$value/$valueTotal')],
          ),

          /// Gap
          const SizedBox(
            height: 4,
          ),

          /// Barre de progression
          LinearPercentIndicator(
            padding: EdgeInsets.zero,
            lineHeight: 10.0,
            percent: roundedPercent,
            backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
            progressColor: Theme.of(context).colorScheme.secondary,
            animation: true,
            animationDuration: 500,
            barRadius: const Radius.circular(8),
          ),
        ],
      ),
    );
  }
}
