import 'package:disenos/src/pages/basico_page.dart';
import 'package:disenos/src/pages/botones_page.dart';
import 'package:disenos/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => BotonesPage(),
    'basico': (BuildContext context) => BasicoPage(),
    'scroll': (BuildContext context) => ScrollPage(),
  };
}
