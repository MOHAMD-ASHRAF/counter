import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int teamAPoint = 0;
  int teamBPoint = 0;

  void TeamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoint += buttonNumber;
      emit(CounterAddA());git
    } else {
      teamBPoint += buttonNumber;
      emit(CounterAddB());
    }
  }
  void resetPoint(){
    teamBPoint = 0;
    teamAPoint = 0;
    emit(ResetPointState());
  }
}
