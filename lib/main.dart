import 'package:estate_app/estate/screens/welcome/welcome.dart';
import 'package:estate_app/practise/data/dummy.dart';
import 'package:flutter/material.dart';
import 'estate/routes/routes.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'categories.dart';
import 'estate/screens/splash/homepage.dart';
import 'practise/SCREENS/meals.dart';
import 'estate/screens/house_list/categories.dart';
import 'practise/SCREENS/intro_app.dart';

final theme = ThemeData(
  primaryColor: Colors.black,
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: routes,
        theme: theme,
        home:
            Home()); //const Estate()); //Home()); //home()); //const CategoriesScreen());
  }
}
