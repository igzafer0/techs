import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:techs/presentation/provider/theme_provider.dart';
import 'package:techs/util/enum/text_size_enum.dart';

extension ScreenSizeExtension on BuildContext {
  double get sHeight => MediaQuery.of(this).size.height;
  double get sWidth => MediaQuery.of(this).size.width;
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => watch<ThemeNotifier>().currentTheme;
  ColorScheme get colors => theme.colorScheme;
  TextTheme get textTheme => theme.textTheme;
}

extension RadiusExtension on BuildContext {
  BorderRadius get xxLargeRadius => const BorderRadius.all(Radius.circular(40));

  BorderRadius get largeRadius => const BorderRadius.all(Radius.circular(20));
  BorderRadius get midRadius => const BorderRadius.all(Radius.circular(10));
  BorderRadius get midSmallRadius => const BorderRadius.all(Radius.circular(7));

  BorderRadius get smallRadius => const BorderRadius.all(Radius.circular(5));

  BorderRadius get largeRadiusOnlyTop => const BorderRadius.vertical(top: Radius.circular(20));
  BorderRadius get midRadiusOnlyTop => const BorderRadius.vertical(top: Radius.circular(10));
  BorderRadius get midRadiusOnlyBottom => const BorderRadius.vertical(bottom: Radius.circular(10));
}

extension TextStyleExtension on BuildContext {
  TextStyle styler(TextSize textSize) {
    return switch (textSize) {
      TextSize.EXTREME_BIG => textTheme.headlineLarge!,
      TextSize.BIG_THIN => textTheme.displayLarge!,
      TextSize.BIG_TITLE => textTheme.titleLarge!,
      TextSize.TITLE => textTheme.titleMedium!,
      TextSize.SMALL_TITLE => textTheme.titleSmall!,
      TextSize.BIG_SUBTITLE => textTheme.bodyLarge!,
      TextSize.SUBTITLE => textTheme.bodyMedium!,
      TextSize.SMALL_SUBTITLE => textTheme.bodyLarge!,
      TextSize.BIG_PARAGRAPH => textTheme.labelLarge!,
      TextSize.PARAGRAPH => textTheme.labelMedium!,
      TextSize.SMALL_PARAGRAPH => textTheme.labelSmall!
    };
  }
}

extension MarginPaddingExtension on BuildContext {
  EdgeInsets get safeAreaOnlyVertical => const EdgeInsets.symmetric(vertical: 85);

  EdgeInsets get xLargeSpacerOnlyHorizontal => const EdgeInsets.symmetric(horizontal: 30);
  EdgeInsets get xLargeSpacerOnlyVertical => const EdgeInsets.symmetric(vertical: 30);

  EdgeInsets get largeSpacer => const EdgeInsets.symmetric(vertical: 20, horizontal: 20);
  EdgeInsets get largeSpacerOnlyVertical => const EdgeInsets.symmetric(vertical: 20);
  EdgeInsets get largeSpacerOnlyHorizontal => const EdgeInsets.symmetric(horizontal: 20);

  EdgeInsets get midSpacer => const EdgeInsets.symmetric(vertical: 10, horizontal: 10);
  EdgeInsets get midSpacerOnlyVertical => const EdgeInsets.symmetric(vertical: 10);
  EdgeInsets get midSpacerOnlyHorizontal => const EdgeInsets.symmetric(horizontal: 10);

  EdgeInsets get xSmallSpacer => const EdgeInsets.all(2);
  EdgeInsets get smallSpacer => const EdgeInsets.all(5);
  EdgeInsets get smallSpacerOnlyHorizontal => const EdgeInsets.symmetric(horizontal: 5);
  EdgeInsets get smallSpacerOnlyVertical => const EdgeInsets.symmetric(vertical: 5);

  EdgeInsets get largeSpacerOnlyTop => const EdgeInsets.only(top: 20);
  EdgeInsets get largeSpacerOnlyBottom => const EdgeInsets.only(bottom: 20);
  EdgeInsets get largeSpacerOnlyLeft => const EdgeInsets.only(left: 20);
  EdgeInsets get largeSpacerOnlyRight => const EdgeInsets.only(right: 20);

  EdgeInsets get midSpacerOnlyTop => const EdgeInsets.only(top: 10);
  EdgeInsets get midSpacerOnlyBottom => const EdgeInsets.only(bottom: 10);
  EdgeInsets get midSpacerOnlyRight => const EdgeInsets.only(right: 10);

  EdgeInsets get smallSpacerOnlyBottom => const EdgeInsets.only(bottom: 5);
  EdgeInsets get smallSpacerOnlyRight => const EdgeInsets.only(right: 5);

  EdgeInsets get onlyTextSpacer => const EdgeInsets.symmetric(vertical: 5, horizontal: 20);
}

extension SizeExtension on BuildContext {
  double get xxxLargeHeight => Platform.isAndroid ? 190 : 200;

  double get unPinnedParticipantHeight => Platform.isAndroid ? 180 : 200;
  double get unPinnedParticipantWidth => Platform.isAndroid ? 120 : 135;

  double get xxLargeHeightSame => 120;
  double get xxxLargeHeightSame => 150;

  double get xxLargeHeight => Platform.isAndroid ? 100 : 135;
  double get xLargeHeightSame => 100;

  double get xLargeHeight => 80;
  double get largeHeightText => 65;
  double get largeHeightSame => 60;

  double get largeHeight => 55;
  double get midHeight => 47;
  double get smallHeight => 40;
  double get xSmallHeight => 30;
  double get xxSmallHeight => Platform.isAndroid ? 23 : 30;
  double get xxSmallHeightSame => 24;
}

extension SpacerSizeExtension on BuildContext {
  double get meetingBotomBarSpacerExpanded => xxLargeHeight + midSpacerSize;

  double get meetingBotomBarSpacer => Platform.isAndroid ? 20 : 50;

  double get xlargeSpacerSize => Platform.isAndroid ? 0 : 35;

  double get xlargeSpacerSizeSame => Platform.isAndroid ? 20 : 20;
  double get largeSpacerSize => 15;
  double get midSpacerSize => 10;
  double get smallSpacerSize => 5;
}

extension BottomSheetExtension on BuildContext {
  largeBottomSheet(Widget widget) => SizedBox(height: sHeight * .9, child: widget);
  midBottomSheet(Widget widget) => SizedBox(height: sHeight * .75, child: widget);
  midsmallBottomSheet(Widget widget) => SizedBox(height: sHeight * .60, child: widget);

  smallBottomSheet(Widget widget) => SizedBox(height: sHeight * .42, child: widget);
  xSmallBottomSheet(Widget widget) => SizedBox(height: sHeight * .34, child: widget);
  xxSmallBottomSheet(Widget widget) => SizedBox(height: sHeight * .10, child: widget);
}

extension ValidatePhoneNumber on BuildContext {
  String validatePhoneNumber(String dialCode, String phoneNumber) {
    if (phoneNumber.isEmpty || dialCode.isEmpty) return "";
    return switch (dialCode) {
      "+90" => phoneNumber.characters.first == "0"
          ? "$dialCode${phoneNumber.replaceFirst(RegExp('^0+'), "")}"
          : "$dialCode$phoneNumber",
      _ => "$dialCode$phoneNumber"
    };
  }
}
