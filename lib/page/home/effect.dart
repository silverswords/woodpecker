import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<CounterState> buildEffect() {
  return combineEffects(<Object, Effect<CounterState>>{
    Lifecycle.initState: _init,
    PageAction.onAddClick: _onAdd,
  });
}

void _init(Action action, Context<CounterState> ctx) {
  final CounterState state = CounterState(counter: 10);

  ctx.dispatch(PageActionCreator.initCounterAction(state));
}

void _onAdd(Action action, Context<CounterState> ctx) {
  ctx.dispatch(PageActionCreator.onAddSucceedAction());
}
