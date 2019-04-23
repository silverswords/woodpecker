import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'effect.dart';
import 'reducer.dart';
import 'view.dart';

class HomePage extends Page<CounterState, int> {
  HomePage()
    : super(
        initState: initialState,
        effect: buildEffect(),
        reducer: buildReducer(),
        view: buildView,
        middleware: <Middleware<CounterState>>[
          logMiddleware(tag: 'HomePage'),
        ],
      );
}