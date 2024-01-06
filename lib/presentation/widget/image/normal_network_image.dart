import 'package:flutter/material.dart';
import 'package:techs/util/constant/color_constant.dart';
import 'package:techs/util/extension/context_extension.dart';

class NormalNetworkImage extends StatelessWidget {
  final String imagePath;
  const NormalNetworkImage({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    if (imagePath.isNotEmpty && imagePath.startsWith("https://")) {
      return ClipRRect(
        borderRadius: context.smallRadius,
        child: Image.network(
          imagePath,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return Center(
              child: CircularProgressIndicator(
                color: ColorConstant.APP_ORANGE,
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                    : null,
              ),
            );
          },
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
