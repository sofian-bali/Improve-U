class MacroState {
  final int calories;
  final int glucides;
  final int proteines;
  final int lipides;
  final double caloriesPercentage;

  MacroState({
    required this.calories,
    required this.glucides,
    required this.proteines,
    required this.lipides,
    this.caloriesPercentage = 0.0,
  });
}
