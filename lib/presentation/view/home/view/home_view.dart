import 'package:flutter/material.dart';
import 'package:techs/config/core_presentation/core_state.dart';
import 'package:techs/config/core_presentation/core_view.dart';
import 'package:techs/presentation/view/home/view_model/home_view_model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends CoreState<HomeView> {
  late HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return CoreView<HomeViewModel>(
      viewModel: HomeViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
        viewModel = model;
      },
      onPageBuilder: (context, value) => Scaffold(
        body: Observer(builder: (context) {
          if (viewModel.blogEntity == null) {
            return const SizedBox.shrink();
          }
          return ListView.builder(
              itemCount: viewModel.blogEntity?.item.length,
              itemBuilder: (context, index) {
                return Text("${viewModel.blogEntity?.item[index].title}");
              });
        }),
      ),
    );
  }
}
