import 'package:http/http.dart' show get;
import 'dart:convert';

import 'package:city_parking/src/models/pir_model.dart';

//Todo have to get data from the mobius of all the parking spots

class AllGuru {
  //this function would return free markers
  static Future<List<PIRModel>> fetchMarker() async {
    var response = await get(
        'http://203.253.128.164:1026/v2/entities?idPattern=^spot_[0-676]&type=ParkingSpot&q=status==free');
    List<PIRModel> freeList = [];
    var list = json.decode(response.body);
    print(list);
    list.forEach((item) => freeList.add(PIRModel.fromJson(item)));
    freeList.forEach((f)=> print(f.coordinates));
    return freeList;
  }

// This function would return occupied markers
  static void fetchOccupiedMarker() async {
    var response = await get(
        'http://203.253.128.164:1026/v2/entities?idPattern=^spot_[0-676]&type=ParkingSpot&q=status==occupied');
    print(response.body);
  }
}
