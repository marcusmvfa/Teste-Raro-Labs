import 'package:get/get.dart';
import 'package:park_do_jao/Models/Spot.dart';

class Lote {
  String id = "";
  String name = "";
  var index = 0;
  var freeSpots = 10.obs;

  ///Vagas
  List<Spot> spots = [];
  Lote(this.name, this.index) {
    for (int i = 0; i < 10; i++) {
      spots.add(Spot(name, i));
    }
  }
  Lote.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['spots'] != null) {
      spots = <Spot>[];
      json['spots'].forEach((v) {
        spots.add(Spot.fromJson(v));
      });
    }
  }
}
