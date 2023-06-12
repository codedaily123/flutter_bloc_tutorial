part of 'counter_bloc.dart';

class CounterState {
  int count;
  //default consttructor value
  CounterState({this.count = 0});
  CounterState copyWith({int? count}) {
    return CounterState(count: count ?? this.count);
  }
}
