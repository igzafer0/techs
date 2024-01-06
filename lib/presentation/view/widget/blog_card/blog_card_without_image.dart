import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:techs/presentation/widget/card/normal_card.dart';
import 'package:techs/presentation/widget/text/label_text.dart';
import 'package:techs/presentation/widget/text/link_text.dart';
import 'package:techs/util/enum/text_size_enum.dart';
import 'package:techs/util/extension/context_extension.dart';

class BlogCardWithoutImage extends StatelessWidget {
  final String title;
  final String author;
  const BlogCardWithoutImage({required this.title, required this.author, super.key});

  @override
  Widget build(BuildContext context) {
    return NormalCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LinkText(title: author, callback: () => null),
          Gap(context.midSpacerSize),
          LabelText(
            text: title,
            textSize: TextSize.SMALL_TITLE,
          ),
        ],
      ),
    );
  }
}
