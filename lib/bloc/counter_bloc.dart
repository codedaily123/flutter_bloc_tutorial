//import both event.dart and state.dart files
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<CountIncrement>(
      (event, emit) {
        emit(state.copyWith(count: state.count + 1));
      },
    );
    on<CountDecrement>(
      ((event, emit) {
        emit(state.copyWith(count: state.count - 1));
      }),
    );
  }
}
