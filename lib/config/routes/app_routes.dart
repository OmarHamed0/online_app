import 'package:flutter/material.dart';
import 'package:online_exam_app/config/routes/page_route_name.dart';


class AppRoutes{
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case PageRouteName.login:
        return _handleMaterialPageRoute(widget:const  Scaffold());
      default:
        return _handleMaterialPageRoute(widget: const Scaffold());

    }
  }

  static MaterialPageRoute<dynamic> _handleMaterialPageRoute({required Widget widget}){
    return MaterialPageRoute(builder: (context) => widget,);
  }
}