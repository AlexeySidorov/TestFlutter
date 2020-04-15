import 'package:arkona_development/base/BaseViewModel.dart';
import 'package:flutter/widgets.dart';
import 'package:mvvm/mvvm.dart';

abstract class BaseView<T extends BaseViewModel> extends View<T> {
  T viewModel;
  BaseView(T model) : super(model) {
    viewModel = model;
  }

  @override
  void dispose() {
    super.dispose();
    viewModel?.deactive();
  }

  @override
  void init(BuildContext context) {
    super.init(context);
    viewModel?.init();
  }

  @override
  void ready(BuildContext context) {
    super.ready(context);
    viewModel?.active();
  }
}
