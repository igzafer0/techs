// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:techs/config/core_presentation/core_view_model.dart';
import 'package:techs/domain/usecase/blog/blog_usecase.dart';
import 'package:techs/injection_container.dart';
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

  _getBlog() async {
    var result = await _blogUseCase.blog();
    debugPrint(" ${result.title}");
  }
}
