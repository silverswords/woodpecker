import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

import 'package:woodpecker/general/localizations/default_localization.dart';

Widget buildView(CounterState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text(DefaultLocalizations.of(viewService.context).localeString.homePageTitle),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            DefaultLocalizations.of(viewService.context).localeString.homeCounterPrompt,
          ),
          Text(
            '${state.counter}',
            style: Theme.of(viewService.context).textTheme.display1,
          ),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () => dispatch(PageActionCreator.onAddClickAction()),
      tooltip: 'Increment',
      child: Icon(Icons.add),
    ), 
  );
}
