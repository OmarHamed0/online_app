import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_exam_app/core/utils/bloc_observer/bloc_observer.dart';
import 'package:online_exam_app/di/di.dart';
import 'package:online_exam_app/online_exam.dart';

void main() {
 WidgetsFlutterBinding.ensureInitialized();
   configureDependencies();
 Bloc.observer = MyBlocObserver();
 runApp(const OnlineExam());
}
