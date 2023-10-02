import 'package:flutter/material.dart';

import '../estate/model/api.dart';
import '../estate/model/house.dart';

class CategoriesScreen extends StatelessWidget {
  //late Future<Houses> futureHouses;
  Future<Houses> futureHouses = fetchHouse();
  @override
  void initState() {
    //futureHouses = fetchHouse();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('house list'),
        ),
        body: Center(
          child: FutureBuilder<Houses>(
            future: futureHouses,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.city);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ));
    // body: Container(
    //   child: GridView(
    //       padding: EdgeInsets.all(24),
    //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //           crossAxisCount: 2,
    //           childAspectRatio: 3 / 2,
    //           crossAxisSpacing: 20,
    //           mainAxisSpacing: 20),
    //       children: const [
    //         Text('house 1'),
    //         Text('house 2'),
    //         Text('house 3'),
    //         Text("house 4"),
    //         Text("house 5"),
    //         Text("house 6")
    //       ]),
    // ));
  }
}
