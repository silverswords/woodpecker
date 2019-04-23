import 'package:flutter/material.dart';
import 'package:fish_redux/fish_redux.dart';

import 'page/home/page.dart';

Widget createApplication() {
  final AbstractRoutes routes = HybridRoutes(routes: <AbstractRoutes>[
    PageRoutes(
      pages: <String, Page<Object, dynamic>>{
        'home': HomePage(),
      },
    ),
  ]);

  return MaterialApp(
    title: 'Flutter Redux Demo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: routes.buildPage('home', null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
