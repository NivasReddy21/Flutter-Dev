import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './onBoarding.dart';

class Main extends StatefulWidget {
  Main({Key key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      //  theme: ThemeData(
      //    fontFamily: 'rubik'
      //   //  canvasColor: CustomColors.GreyBackground
      //  ),
       home: Onboarding(),
    );
  }
}