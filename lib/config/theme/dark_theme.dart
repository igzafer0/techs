import 'package:flutter/material.dart';
import 'package:techs/config/theme/theme_manager.dart';
import 'package:techs/util/constant/color_constant.dart';
import 'package:techs/util/constant/general_constant.dart';

class DarkTheme extends ThemeManager {
  static DarkTheme? _instance;
  static DarkTheme get instance {
    _instance ??= DarkTheme._init();
    return _instance!;
  }

  DarkTheme._init();

  @override
  ThemeData get theme => ThemeData.dark().copyWith(
        scaffoldBackgroundColor: ColorConstant.APP_BLACK,
        primaryColor: ColorConstant.APP_WHITE_SURFACE_COLOR,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
              color: ColorConstant.APP_WHITE_SURFACE_COLOR,
              fontSize: 32,
              fontWeight: FontWeight.w600,
              fontFamily: GeneralConstant.FONT_FAMILY),

          displayLarge: TextStyle(
              color: ColorConstant.APP_WHITE_SURFACE_COLOR,
              fontSize: 22,
              fontWeight: FontWeight.w400,
              fontFamily: GeneralConstant.FONT_FAMILY),

          //  Title
          titleLarge: TextStyle(
              color: ColorConstant.APP_WHITE_SURFACE_COLOR,
              fontSize: 22,
              fontWeight: FontWeight.w600,
              fontFamily: GeneralConstant.FONT_FAMILY),
          titleMedium: TextStyle(
              color: ColorConstant.APP_WHITE_SURFACE_COLOR,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: GeneralConstant.FONT_FAMILY),
          titleSmall: TextStyle(
              color: ColorConstant.APP_WHITE_SURFACE_COLOR,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: GeneralConstant.FONT_FAMILY),

          //Body
          bodyMedium: TextStyle(color: ColorConstant.APP_WHITE_SURFACE_COLOR, fontFamily: GeneralConstant.FONT_FAMILY),

          bodyLarge: TextStyle(color: ColorConstant.APP_WHITE_SURFACE_COLOR, fontFamily: GeneralConstant.FONT_FAMILY),

          // Label
          labelLarge: TextStyle(
              color: ColorConstant.APP_WHITE_SURFACE_COLOR,
              fontWeight: FontWeight.w700,
              fontSize: 16,
              fontFamily: GeneralConstant.FONT_FAMILY),

          labelMedium: TextStyle(
              color: ColorConstant.APP_WHITE_SURFACE_COLOR,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              fontFamily: GeneralConstant.FONT_FAMILY),

          labelSmall: TextStyle(
              color: ColorConstant.APP_WHITE_SURFACE_COLOR,
              fontWeight: FontWeight.w400,
              fontSize: 14,
              fontFamily: GeneralConstant.FONT_FAMILY),
        ),
      );
}
