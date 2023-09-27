import 'package:flutter/material.dart';

import '../screens/splash/homepage.dart';
import '../screens/welcome/welcome.dart';

Map<String, WidgetBuilder> routes = {
  '/home': (BuildContext context) => const home(),
  '/welcome': (BuildContext context) => const Welcome()
};
