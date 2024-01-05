import 'package:flutter/material.dart';
import 'package:techs/config/navigation/navigation_route.dart';
import 'package:techs/config/navigation/navigation_service.dart';
import 'package:techs/injection_container.dart' as di;
import 'package:techs/injection_container.dart';

void main() {
  di.init();

  runApp(const TechsApp());
}

class TechsApp extends StatelessWidget {
  const TechsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: locator.get<NavigationRoute>().generateRoute,
      navigatorKey: locator.get<NavigationService>().navigatorKey,
    );
  }
}
