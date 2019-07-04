import 'package:city_parking/src/models/pir_model.dart';
import 'package:city_parking/src/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:city_parking/src/server/orion_data.dart';

class MarkerListing {
  static Future<List<Marker>> assignMarker() async {
    List<Marker> markerslist = [];
    final valueWidth = 45.0;
    final valueHeight = 45.0;
    print('came into marker class');
    List<PIRModel> listOfThings = await AllGuru.fetchMarker();
    listOfThings.forEach((value) {
      markerslist.add(new Marker(
        width: valueWidth,
        height: valueHeight,
        point: new LatLng(value.coordinates[1],
            value.coordinates[0]), //have to change this to dynamic values,
        builder: (context) => new Container(
              child: IconButton(
                icon: Icon(Icons.location_on),
                color: value.status == "free"?Colors.green: Colors.red, //delimiter operation
                iconSize: 45.0,
                onPressed: () {
                  Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => Detail()));
                }, //send to another screen with details
              ),
            ),
      ));
    });

    return markerslist;
  }
}
