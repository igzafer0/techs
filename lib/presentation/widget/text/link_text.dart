import 'package:flutter/cupertino.dart';
import 'package:techs/util/constant/color_constant.dart';
import 'package:techs/util/enum/text_size_enum.dart';
import 'package:techs/util/extension/context_extension.dart';

class LinkText extends StatelessWidget {
  final String title;
  final VoidCallback callback;
  final TextSize textSize;

  const LinkText({
    super.key,
    required this.title,
    required this.callback,
    this.textSize = TextSize.PARAGRAPH,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Text(
        style: context.styler(textSize).copyWith(color: ColorConstant.APP_BLUE),
        title,
      ),
    );
  }
}
