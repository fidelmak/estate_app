import 'dart:convert';
import 'house.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<Houses> fetchHouse() async {
  List items = [];
  try {
    final jsonString =
        await rootBundle.loadString('lib/estate/model/house.json');
    final jsonData = jsonDecode(jsonString);
    return Houses.fromJson(jsonData);
  } catch (error) {
    throw Exception('Failed to load house: $error');
  }
}
