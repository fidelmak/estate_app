import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CategoriesScreen extends StatefulWidget {
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
          ? Center(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid.
                  crossAxisSpacing: 8.0, // Horizontal spacing between items.
                  mainAxisSpacing: 8.0, // Vertical spacing between items.
                ),

                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: Container(
                      width: screenWidth * 0.5,
                      height: screenHeight * 0.5,
                      key: ValueKey(House[index]["id"]),
                      margin: const EdgeInsets.all(10),
                      color: Colors.amber.shade100,
                      child: ListTile(
                        leading: Text(House[index]["id"]),
                        title: Text(House[index]['title']),
                      ),
                    ),
                  );
                },
                itemCount: House.length, // Total number of items in the grid.
              ),
            )
          : Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Empty"),
              ),
            ),
    );
  }
}
