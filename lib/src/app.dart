// Import fultter helper library
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

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
      home: Scaffold(
        appBar: new AppBar(title: new Text('City Parking')),
        body: new FlutterMap(
          options: new MapOptions(
            minZoom: 10.0,
            center: new LatLng(40.71, -74.00),
            ),
          layers: [
            new TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c'],
            ),
            new MarkerLayerOptions(
              markers: [
                new Marker(
                  width: 45.0,
                  height: 45.0,
                  point: new LatLng(40.71, -74.00),
                  builder: (context) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      color: Colors.red,
                      iconSize: 45.0,
                      onPressed: () => print('Marker Tapped'),
                    ),
                  ),
                ),
              ],
            ),
          ],//layers
        ),
      ),
    );
  }
}
