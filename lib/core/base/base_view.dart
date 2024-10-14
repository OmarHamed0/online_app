import 'package:flutter/cupertino.dart';
import 'package:online_exam_app/core/base/base_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

abstract class BaseView<T extends StatefulWidget, VM extends BaseViewModel>
    extends State<T> {
  late VM viewModel;

  @override
  void initState() {
    viewModel = initViewModel();
    super.initState();
  }

  VM initViewModel();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
