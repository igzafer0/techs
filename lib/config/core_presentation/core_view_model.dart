import 'package:flutter/material.dart';
import 'package:techs/config/navigation/navigation_service.dart';
import 'package:techs/injection_container.dart';

mixin CoreViewModel {
  late BuildContext viewModelContext;
  void setContext(BuildContext context);
  void init();

  NavigationService navigation = locator.get<NavigationService>();
}
