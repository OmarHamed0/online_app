import 'package:flutter/material.dart';
import 'package:online_exam_app/config/routes/page_route_name.dart';
import 'package:online_exam_app/presentation/auth/forget_password/view/forget_password_screen.dart';
import 'package:online_exam_app/presentation/auth/login/view/login_screen.dart';
import 'package:online_exam_app/presentation/auth/signup/screen/signup_screen.dart';


class AppRoutes{
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case PageRouteName.login:
        return _handleMaterialPageRoute(widget:const  LoginView());
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