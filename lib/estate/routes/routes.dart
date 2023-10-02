import 'package:flutter/material.dart';

import '../../practise/categories.dart';
import '../screens/splash/homepage.dart';
import '../screens/unboarding/OnboardOne.dart';
import '../screens/welcome/welcome.dart';

Map<String, WidgetBuilder> routes = {
  '/home': (BuildContext context) => const home(),
  '/welcome': (BuildContext context) => const Welcome(),
  '/onboard_one': (BuildContext context) => const OnboardOne(),
  '/house': (BuildContext context) => const CategoriesScreen(),
};
