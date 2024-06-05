import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:improve_u/cubit/user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit()
      : super(
          UserState(
            totalCalories: 2094,
            totalGlucides: 390,
            totalProteines: 124,
            totalLipides: 82,
          ),
        );
}
