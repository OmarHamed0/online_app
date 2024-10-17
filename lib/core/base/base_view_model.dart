
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:online_exam_app/core/networking/exceptions.dart';

abstract class BaseViewModel<state> extends Cubit<state>{
  BaseViewModel(super.initialState);
  AppLocalizations? local;
   String getErrorMassageFromException(Exception ? exception){
     if(exception is DioHttpException){
       return _mapDioExceptionToMessage(exception.dioException);
     }else {
       return local!.unknown;
     }
   }
  String _mapDioExceptionToMessage(DioException dioException) {
    switch (dioException.type) {
        case DioExceptionType.connectionTimeout:
          return local!.connectionTimeout;
        case DioExceptionType.sendTimeout:
          return local!.sendTimeout;
        case DioExceptionType.receiveTimeout:
          return local!.receiveTimeout ;
        case DioExceptionType.badCertificate:
          return local!.badCertificate ;
        case DioExceptionType.badResponse:
          return _handleBadResponse(dioException);
        case DioExceptionType.connectionError:
          return local!.connectionError ;
        case DioExceptionType.unknown:
          return local!.unknown ;
        case DioExceptionType.cancel:
          return "Request cancelled";
        default:
          return local!.unknown;
      }
  }
  String _handleBadResponse(DioException exception) {
    final statusCode = exception.response?.statusCode;
    if (statusCode == 400) {
      return exception.response?.data["message"] ?? local!.badRequest ;
    } else if (statusCode == 401 || statusCode == 403) {
      return exception.response?.data["message"] ?? local!.unauthorized ;
    } else if (statusCode == 404) {
      return  local!.notFount;
    } else if (statusCode == 409) {
      return exception.response?.data["message"] ?? local!.conflict ;
    } else if (statusCode == 500) {
      return  local!.internalServerError ;
    } else {
      return exception.response?.data["message"] ?? local!.unknown ;
    }
  }
}