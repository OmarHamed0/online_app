import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/utils/Functions/custom_bottom_navigation_bar.dart';
import '../../../di/di.dart';
import 'main_home_view_model/main_home_cubit.dart';
import 'main_home_view_model/main_home_states.dart';

class MainHomeScreen extends StatelessWidget {
  static String routeName = "MainHomeScreen";
  var viewModel = getIt.get<MainHomeCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainHomeCubit, MainHomeStates>(
        bloc: viewModel,
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              bottomNavigationBar: CustomBottomNavigationBar(
                  selectedIndex: viewModel.selectedIndex,
                  context: context,
                  onTabFunction: (index) {
                    viewModel.changeBottomNavigationBar(index);
                  }),
              body: viewModel.tabs[viewModel.selectedIndex]);
        });
  }
}
