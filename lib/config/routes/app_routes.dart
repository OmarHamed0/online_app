import 'package:flutter/material.dart';
import 'package:online_exam_app/config/routes/page_route_name.dart';
import 'package:online_exam_app/presentation/auth/forget_password/view/forget_password_screen.dart';
import 'package:online_exam_app/presentation/auth/login/view/login_screen.dart';
import 'package:online_exam_app/presentation/auth/signup/screen/signup_screen.dart';
import 'package:online_exam_app/presentation/main_home/main_home_screen/main_home_screen.dart';
import 'package:online_exam_app/presentation/tabs/explore/explore_screen/explore_screen.dart';

import '../../presentation/tabs/explore/explore_screen/specific_subject_screen.dart';


class AppRoutes{
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case PageRouteName.specificSubjectScreen:
        return _handleMaterialPageRoute(widget:  SpecificSubjectScreen());
      case PageRouteName.exploreScreen:
        return _handleMaterialPageRoute(widget:  ExploreScreen());
      case PageRouteName.login:
        return _handleMaterialPageRoute(widget:const  LoginView());
      case PageRouteName.mainHome:
        return _handleMaterialPageRoute(widget:MainHomeScreen());
      case PageRouteName.register:
        return _handleMaterialPageRoute(widget:  SignupScreen());
      case PageRouteName.forgetPassword:
        return _handleMaterialPageRoute(widget:  ForgetPasswordView());

        default:
        return _handleMaterialPageRoute(widget: const LoginView());

    }
  }

  static MaterialPageRoute<dynamic> _handleMaterialPageRoute({required Widget widget}){
    return MaterialPageRoute(builder: (context) => widget,);
  }
}