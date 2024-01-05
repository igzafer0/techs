// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:techs/presentation/view/home/view/home_view.dart';
import 'package:techs/util/constant/navigation_constant.dart';

class NavigationRoute {
  var isTeacher = false;
  Route<dynamic> generateRoute(RouteSettings args) {
    return switch (args.name) {
      /* DEFAULT */
      NavigationConstant.DEFAULT =>
        normalNavigate(const HomeView(), NavigationConstant.DEFAULT),
      /* 404 PAGE */
      _ => MaterialPageRoute(builder: (context) => const SizedBox())
      /* */
    };
  }

  MaterialPageRoute normalNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
      builder: (context) => widget,
      settings: RouteSettings(name: pageName),
    );
  }
}
