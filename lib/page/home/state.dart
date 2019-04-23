import 'package:fish_redux/fish_redux.dart';

class CounterState implements Cloneable<CounterState> {
  int counter;

  CounterState({this.counter = 0});

  void inc() {
    counter += 1;
  }

  @override
  CounterState clone() {
    return CounterState()..counter = counter;
  }

  @override
  String toString() {
    return 'CounterState{counter: $counter}';
  }
}

CounterState initialState(int counter) {
  return CounterState(counter: counter);
}
