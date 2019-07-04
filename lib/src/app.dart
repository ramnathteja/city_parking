// Import fultter helper library
import 'package:flutter/material.dart';

import 'package:city_parking/src/screens/Map_screen.dart';



//create a class that will be our custom widget, this
//class must extend the 'StatelessWidget' base class
class App extends StatelessWidget {
//Must define a 'build' method that returns
//the widgets that *this* widget will show

//Every custom widget should have 'build'

//'build' should satisfy 3 requirements
//1. should be called build
//2. should return widget
//3. should accept a parameter context
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mapmaker(),
    );
  }
}
