import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('house list'),
        ),
        body: Container(
          margin: EdgeInsets.all(30),
          child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              children: const [
                Text('house 1'),
                Text('house 2'),
                Text('house 3'),
                Text("house 4"),
                Text("house 5"),
                Text("house 6")
              ]),
        ));
  }
}
