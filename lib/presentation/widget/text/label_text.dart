import 'package:flutter/material.dart';
import 'package:techs/util/constant/color_constant.dart';
import 'package:techs/util/enum/text_size_enum.dart';
import 'package:techs/util/extension/context_extension.dart';

class LabelText extends StatelessWidget {
  final String text;
  final TextSize textSize;
  final TextOverflow overflow;
  final Color textColor;
  final int? maxLines;
  const LabelText(
      {super.key,
      required this.text,
      required this.textSize,
      this.textColor = ColorConstant.APP_WHITE_SURFACE_COLOR,
      this.overflow = TextOverflow.visible,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: overflow,
      style: context.styler(textSize).copyWith(color: textColor, overflow: TextOverflow.ellipsis),
      text,
      maxLines: maxLines,
    );
  }
}
