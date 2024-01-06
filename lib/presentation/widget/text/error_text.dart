import 'package:flutter/material.dart';
import 'package:techs/util/constant/color_constant.dart';
import 'package:techs/util/enum/text_size_enum.dart';
import 'package:techs/util/extension/context_extension.dart';

class ErrorText extends StatelessWidget {
  final String text;
  final TextSize textSize;
  final TextOverflow overflow;
  const ErrorText({super.key, required this.text, required this.textSize, this.overflow = TextOverflow.visible});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: overflow,
      style: context.styler(textSize).copyWith(color: ColorConstant.APP_RED),
      text,
    );
  }
}
