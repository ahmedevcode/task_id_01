import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  dynamic value = 0;
  void incress() {
    value++;
    emit(Counterincress());
  }

  void decress() {
    value--;
    emit(Counterdecress());
  }
}
