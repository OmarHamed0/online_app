import 'package:flutter/cupertino.dart';
import 'package:online_exam_app/domain/entities/GetAllSubjects.dart';

@immutable
sealed class ExploreStates {}

class ExploreInitialState extends ExploreStates {}

class ExploreErrorState extends ExploreStates {
  final Exception? errorMessage;
  ExploreErrorState({required this.errorMessage});
}

class ExploreLoadingState extends ExploreStates {
  final String? loadingMessage;
  ExploreLoadingState({required this.loadingMessage});
}

class ExploreSuccessState extends ExploreStates {
  final GetAllSubjects? getAllSubjects;
  ExploreSuccessState({required this.getAllSubjects});
}
