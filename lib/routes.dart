import 'package:flutter/material.dart';
import 'package:home_food/screens/billetera/billetera_screen.dart';
import 'package:home_food/screens/shared/shared_screen.dart';

import 'screens/home/home_screen.dart';

const homeScreen = 'homeScreen';
const secondScreen = 'secondScreen';
const sharedScreen = 'sharedScreen';

Route<dynamic>? generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case homeScreen:
      return createPageBuilder(const HomeScreen());
    case secondScreen:
      return createPageBuilder(const BilleteraScreen());
    case sharedScreen:
      return createPageBuilder(const SharedScreen());
    default:
      return null;
  }
}

PageRouteBuilder createPageBuilder(Widget widget) => PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => widget,
    );
