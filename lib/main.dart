import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:techs/config/navigation/navigation_route.dart';
import 'package:techs/config/navigation/navigation_service.dart';
import 'package:techs/injection_container.dart' as di;
import 'package:techs/injection_container.dart';
import 'package:techs/presentation/provider/provider_manager.dart';
import 'package:techs/presentation/provider/theme_provider.dart';

void main() {
  di.init();

  runApp(
    MultiProvider(
      providers: [
        ...ProviderManager.instance.dependItems,
      ],
      child: const TechsApp(),
    ),
  );
}

class TechsApp extends StatelessWidget {
  const TechsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: locator.get<NavigationRoute>().generateRoute,
      navigatorKey: locator.get<NavigationService>().navigatorKey,
      theme: context.watch<ThemeNotifier>().currentTheme,
    );
  }
}
