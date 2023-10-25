import 'package:flutter/material.dart';

import 'data/dummy.dart';
import 'widget/category_grid.dart';

class Estate extends StatefulWidget {
  const Estate({super.key});

  @override
  State<Estate> createState() => _EstateState();
}

class _EstateState extends State<Estate> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.primaryColor,
      appBar: AppBar(title: Text("Pick your Category")),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          for (final category in availableCat)
            CategoryWidget(category: category)
        ],
      ),
    ));
  }
}
