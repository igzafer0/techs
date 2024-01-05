import 'package:flutter/material.dart';

abstract class CoreState<T extends StatefulWidget> extends State<T> {
  ThemeData get currentTheme => Theme.of(context);
}
