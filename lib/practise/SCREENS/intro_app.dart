import 'package:estate_app/practise/SCREENS/meals.dart';
import 'package:flutter/material.dart';

import '../data/dummy.dart';
import '../widget/category_grid.dart';

class Estate extends StatelessWidget {
  const Estate({super.key});
  void _selectCategory(BuildContext, context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => MealsScreen(title: "some title ", meals: [])));
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.primaryColor,
      appBar: AppBar(title: Text("Pick your Category")),
      body: GridView(
        padding: EdgeInsets.all(24),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          for (final category in availableCat)
            CategoryWidget(
              category: category,
              onSelectCategory: () => _selectCategory(BuildContext, context),
            )
        ],
      ),
    ));
  }
}
