import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:improve_u/cubit/macro_state.dart';
import 'package:improve_u/cubit/user_state.dart';

class MacroCubit extends Cubit<MacroState> {
  double caloriesPercentage = 0.0;

  MacroCubit()
      : super(
          MacroState(
            calories: 0,
            glucides: 0,
            proteines: 0,
            lipides: 0,
            caloriesPercentage: 0.0,
          ),
        );

  void addMacro(MacroState event) {
    emit(MacroState(
      calories: state.calories + event.calories,
      glucides: state.glucides + event.glucides,
      proteines: state.proteines + event.proteines,
      lipides: state.lipides + event.lipides,
    ));
  }

  double calculateCaloriesPercentage(UserState userState) {
    double totalCalories = userState.totalCalories.toDouble();
    double consumedCalories = state.calories.toDouble();

    caloriesPercentage = (consumedCalories / totalCalories);
    return caloriesPercentage;
  }
}
