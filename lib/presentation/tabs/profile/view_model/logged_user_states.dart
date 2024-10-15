import 'package:flutter/cupertino.dart';

import '../../../../domain/entities/LoggedUser.dart';

@immutable
sealed class LoggedUserState {}

class LoggedUserInitialStata extends LoggedUserState {}

class LoggedUserLoadingStata extends LoggedUserState {
  final String? loading;
  LoggedUserLoadingStata({required this.loading});
}

class LoggedUserSuccessStata extends LoggedUserState {
  final LoggedUser? user;
  LoggedUserSuccessStata({required this.user});
}

class LoggedUserErrorStata extends LoggedUserState {
  final String? errorMassage;

  LoggedUserErrorStata({required this.errorMassage});
}