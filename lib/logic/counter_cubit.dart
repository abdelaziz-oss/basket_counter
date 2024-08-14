import 'package:basketball_counter/logic/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int teamAPoints = 0;
  int teamBPoints = 0;
  void teamsIncrement(String team, int buttonNumber) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }

 
}
