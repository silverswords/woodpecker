import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CounterState> buildReducer() {
  return asReducer(
    <Object, Reducer<CounterState>>{
      PageAction.initCounter: _initCounterReducer,
      PageAction.onAddSucceed: _onAddReducer,
    },
  );
}

CounterState _initCounterReducer(CounterState state, Action action) {
  return action.payload.clone();
}

CounterState _onAddReducer(CounterState state, Action action) {
  final CounterState ns = state.clone();
  ns.inc();

  return ns;
}
