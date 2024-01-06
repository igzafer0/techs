import 'package:flutter/material.dart';
import 'package:techs/util/constant/color_constant.dart';
import 'package:techs/util/extension/context_extension.dart';

class NormalCard extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget child;
  final Color bgColor;

  const NormalCard({super.key, required this.child, this.onTap, this.bgColor = ColorConstant.APP_PRIMARY_COLOR});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: context.midSpacer,
          decoration: cardDecoration(context),
          alignment: Alignment.topLeft,
          child: child,
        ),
        onTap != null
            ? Positioned.fill(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: context.smallRadius,
                    splashColor: ColorConstant.APP_ORANGE.withAlpha(30),
                    highlightColor: Colors.transparent,
                    onTap: () => onTap!(),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }

  BoxDecoration cardDecoration(BuildContext context) =>
      BoxDecoration(borderRadius: context.smallRadius, color: bgColor);
}
