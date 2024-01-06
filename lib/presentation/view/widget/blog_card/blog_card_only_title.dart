import 'package:flutter/material.dart';
import 'package:techs/presentation/widget/card/normal_card.dart';
import 'package:techs/presentation/widget/text/label_text.dart';
import 'package:techs/util/enum/text_size_enum.dart';

class BlogCardOnlyTitle extends StatelessWidget {
  final String title;
  const BlogCardOnlyTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return NormalCard(
      child: LabelText(
        text: title,
        textSize: TextSize.BIG_THIN,
      ),
    );
  }
}
