import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CategoriesScreen extends StatefulWidget {
  void _selectCategory() {}

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<Map<String, dynamic>> House = [];

  Future<void> fetchHouse() async {
    try {
      final jsonString = await rootBundle.loadString('assets/house.json');
      final data = jsonDecode(jsonString);

      setState(() {
        House = List<Map<String, dynamic>>.from(data['House']);
      });
    } catch (e) {
      print('Error loading JSON data: $e');
    }
  }

  @override
  void initState() {
    fetchHouse();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('House List'),
      ),
      body: House.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(children: [
                Container(
                  child: Text("hi"),
                )
              ]))
          : Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Empty"),
              ),
            ),
    );
  }
}
