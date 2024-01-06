// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:techs/config/core_presentation/core_view_model.dart';
import 'package:techs/domain/entity/item/item_entity.dart';
import 'package:techs/domain/usecase/blog/blog_usecase.dart';
import 'package:techs/injection_container.dart';
import 'package:techs/presentation/view/widget/blog_card/blog_card_only_title.dart';
import 'package:techs/presentation/view/widget/blog_card/blog_card_with_image.dart';
import 'package:techs/presentation/view/widget/blog_card/blog_card_without_image.dart';
part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store, CoreViewModel {
  late BlogUseCase _blogUseCase;

  @override
  void init() {
    _blogUseCase = locator<BlogUseCase>();
    _getBlog();
  }

  @override
  void setContext(BuildContext context) {
    viewModelContext = context;
  }

  @observable
  List<ItemEntity>? blogEntity;

  @action
  _getBlog() async {
    var donanim = await _blogUseCase.blog("https://www.donanimhaber.com/rss/tum/");
    var webtekno = await _blogUseCase.blog("https://feeds.feedburner.com/webteknocom");
    var shiftdelete = await _blogUseCase.blog("https://shiftdelete.net/feed");
    var evrimagaci = await _blogUseCase.blog("https://evrimagaci.org/rss.xml");
    blogEntity = donanim.item;
    blogEntity!.addAll(webtekno.item);
    blogEntity!.addAll(shiftdelete.item);
    blogEntity!.addAll(evrimagaci.item);
    blogEntity!.shuffle();
  }

  Widget widgetMixer(int index) {
    var result = int.tryParse(blogEntity![index].id)! % 3;
    debugPrint("test $result");
    return switch (result) {
      0 => BlogCardOnlyTitle(title: blogEntity![index].title),
      1 => BlogCardWithImage(
          imageUrl: blogEntity![index].image.url,
          title: blogEntity![index].title,
          author: blogEntity![index].authorTitle),
      2 => BlogCardWithoutImage(title: blogEntity![index].title, author: blogEntity![index].authorTitle),
      _ => BlogCardWithImage(
          imageUrl: blogEntity![index].image.url,
          title: blogEntity![index].title,
          author: blogEntity![index].authorTitle),
    };
  }
}
