import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:city_parking/src/widgets/marker_list.dart';

class Mapmaker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _MapMakerState();
  }
}

class _MapMakerState extends State<Mapmaker> {
  List<Marker> _markings = [];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text('City Parking')),
      body: new FlutterMap(
        options: new MapOptions(
          minZoom: 18.0,
          center: new LatLng(37.4114423, 127.1293735),
        ),
        layers: [
          new TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
          ),
          new MarkerLayerOptions(
            markers: _markings,
          ),
        ], //Todo:  this layer should be automatically updated with markers
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          onPressed: () {
            setState(() {
              MarkerListing.assignMarker()
                  .then((onValue) {
                    print(onValue.length);
                    _markings = onValue;
                    print(_markings.length);
                  });
            });
          } // implement refresh function
          ),
    );
  }
}
