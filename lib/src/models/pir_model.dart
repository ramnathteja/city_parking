class PIRModel {
  String id;
  List<dynamic> coordinates;
  String status; 
  PIRModel(this.id, this.coordinates, this.status);
  PIRModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    coordinates = parsedJson['location']['value']['coordinates'];
    status = parsedJson['status']['value'];
  }
}