import 'package:flutter/material.dart';
import 'package:techs/util/constant/color_constant.dart';
import 'package:techs/util/enum/text_size_enum.dart';
import 'package:techs/util/extension/context_extension.dart';

class TagText extends StatelessWidget {
  final String text;
  final TextSize textSize;
  final Color backgroundColor;
  final Color textColor;
  const TagText(
      {required this.text,
      required this.textSize,
      this.backgroundColor = ColorConstant.APP_ORANGE,
      this.textColor = ColorConstant.APP_WHITE,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.onlyTextSpacer,
      decoration: _tagDecoration(context),
      child: Text(
        style: context.styler(textSize).copyWith(color: textColor),
        text,
      ),
    );
  }

  BoxDecoration _tagDecoration(BuildContext context) => BoxDecoration(
        color: backgroundColor,
        borderRadius: context.midSmallRadius,
      );
}
