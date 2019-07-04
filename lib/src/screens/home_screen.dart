import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

import 'package:city_parking/src/screens/detail_screen.dart';


class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: new Text('City Parking')),
        body: new FlutterMap(
          options: new MapOptions(
            minZoom: 10.0,
            center: new LatLng(37.4114423, 127.1293735),
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
                  point: new LatLng(37.4114423, 127.1293735),
                  builder: (context) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      color: Colors.red,
                      iconSize: 45.0,
                      onPressed: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => Detail()));
                      },//send to another screen with details
                    ),
                  ),
                ),
              ],
            ),
          ],//Todo:  this layer should be automatically updated with markers
        ),
        floatingActionButton: FloatingActionButton(
          child :Icon(Icons.refresh),
          onPressed: (){
            
          }// implement refresh function
        ),
      );
  }
}