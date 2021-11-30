import 'package:flutter/material.dart';
import 'package:thirdapp/pages/choose_location.dart';
import 'package:thirdapp/pages/home.dart';
import 'package:thirdapp/pages/loading.dart';

void main() => runApp(MaterialApp(
  // home: Home(),
  initialRoute: '/',
  routes:{
    '/':(context) =>Loading(),
    '/home': (context) =>Home(),
    '/location' :(context) => ChooseLocation(),
  },
));
