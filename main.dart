import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Pages/constant.dart';
import 'Pages/main_home_page.dart';


void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:Colors.transparent
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainHomePage(),

    );
  }
}