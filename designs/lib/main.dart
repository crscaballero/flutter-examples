import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutters_designs/src/pages/main_page.dart';
import 'package:flutters_designs/src/pages/basico_page.dart';
import 'package:flutters_designs/src/pages/scroll_page.dart';
import 'package:flutters_designs/src/pages/botones_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'main',
      routes: {
        'main': (BuildContext context) => MainPage(),
        'basico': (BuildContext context) => BasicoPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'botones': (BuildContext context) => BotonesPage()
      },
    );
  }
}
