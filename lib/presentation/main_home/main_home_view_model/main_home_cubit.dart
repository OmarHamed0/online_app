import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import '../../tabs/explore/explore/explore_screen/explore_screen.dart';
import '../../tabs/profile/profile_screen/profile_screen.dart';
import '../../tabs/result/result_screen/result_screen.dart';
import 'main_home_states.dart';

@injectable
class MainHomeCubit extends Cubit<MainHomeStates> {
  MainHomeCubit() : super(MainHomeInitialStates());
  int selectedIndex = 0;

  List<Widget> tabs = [
    ExploreScreen(),
    ResultScreen(),
    ProfileScreen(),
  ];
  void changeBottomNavigationBar(int newSelectedIndex) {
    MainHomeInitialStates();
    selectedIndex = newSelectedIndex;
    emit(ChangeBottomNavigationBar());
  }
}
