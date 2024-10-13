import 'package:flutter/cupertino.dart';
import 'package:online_exam_app/core/base/base_view_model.dart';

abstract class BaseView<T extends StatefulWidget, VM extends BaseViewModel>
    extends State<T> {
  late VM viewModel;
  @override
  void initState() {
    viewModel = initViewModel();
    super.initState();
  }
  VM initViewModel();

  // @override
  // void dispose() {
  //   super.dispose();
  //   viewModel.locale = null;
  // }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
