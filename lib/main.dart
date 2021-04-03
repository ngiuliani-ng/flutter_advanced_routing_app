import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:page_transition/page_transition.dart';

import 'package:flutter_advanced_routing_app/pages/home.dart';
import 'package:flutter_advanced_routing_app/pages/detail.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      onGenerateRoute: (settings) {
        if (settings.name == DetailPage.routeName)
          return PageTransition(
            type: PageTransitionType.bottomToTop,
            child: DetailPage(),
            settings: settings,
          );
        else
          return null;
      },
      // routes: {
      //   '/email/detail': (context) => DetailPage(),
      // },
      home: HomePage(),
    );
  }
}
