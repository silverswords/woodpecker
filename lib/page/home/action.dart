import 'package:fish_redux/fish_redux.dart';

import 'state.dart';

enum PageAction { initCounter, onAddClick, onAddSucceed }

class PageActionCreator {
  static Action initCounterAction(CounterState state) {
    return Action(PageAction.initCounter, payload: state);
  }

  static Action onAddClickAction() {
    return Action(PageAction.onAddClick);
  }

  static Action onAddSucceedAction() {
    return Action(PageAction.onAddSucceed);
  }
}
