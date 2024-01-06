// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:techs/config/core_presentation/core_view_model.dart';
import 'package:techs/domain/entity/blog/blog_entity.dart';
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
  BlogEntity? blogEntity;

  @action
  _getBlog() async {
    blogEntity = await _blogUseCase.blog();
  }

  Widget widgetMixer(int index) {
    if (blogEntity!.item[index].image.url.isEmpty) {
      var result = int.tryParse(blogEntity!.item[index].id)! % 2;
      return switch (result) {
        0 => BlogCardOnlyTitle(title: blogEntity!.item[index].title),
        1 => BlogCardWithoutImage(title: blogEntity!.item[index].title, author: blogEntity!.title),
        _ => BlogCardOnlyTitle(title: blogEntity!.item[index].title),
      };
    }
    var result = int.tryParse(blogEntity!.item[index].id)! % 5;
    return switch (result) {
      0 => BlogCardOnlyTitle(title: blogEntity!.item[index].title),
      1 => BlogCardWithImage(
          imageUrl: blogEntity!.item[index].image.url, title: blogEntity!.item[index].title, author: blogEntity!.title),
      2 => BlogCardWithoutImage(title: blogEntity!.item[index].title, author: blogEntity!.title),
      _ => BlogCardWithImage(
          imageUrl: blogEntity!.item[index].image.url, title: blogEntity!.item[index].title, author: blogEntity!.title),
    };
  }
}
