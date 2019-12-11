//import 'dart:async';

import 'Constant.dart';
import './SplashScreen.dart';
import './ProfilePage.dart';



import 'package:flutter/material.dart';


main() {
  runApp(new MaterialApp(
    title: 'Thông tin cá nhân',
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
        primaryColor: Color(0xff0082CD),

        primaryColorDark: Color(0xff0082CD)),
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      //SPLASH_SCREEN: (BuildContext context) => new MapScreen(),
      PROFILE: (BuildContext context) => new ProfilePage(),
    },
  ));
}