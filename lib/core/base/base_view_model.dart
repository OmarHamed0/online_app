
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:online_exam_app/core/networking/exceptions.dart';

abstract class BaseViewModel<event,state> extends Bloc<event ,state>{
  BaseViewModel(super.initialState);
  AppLocalizations? locale;
   String getErrorMassageFromException(Exception ? exception){
     if(exception is DioHttpException){
       return _mapDioExceptionToMessage(exception.dioException);
     }else {
       return locale!.unknown;
     }
   }
  String _mapDioExceptionToMessage(DioException dioException) {
    switch (dioException.type) {
        case DioExceptionType.connectionTimeout:
          return locale!.connectionTimeout;
        case DioExceptionType.sendTimeout:
          return locale!.sendTimeout;
        case DioExceptionType.receiveTimeout:
          return locale!.receiveTimeout ;
        case DioExceptionType.badCertificate:
          return locale!.badCertificate ;
        case DioExceptionType.badResponse:
          return _handleBadResponse(dioException);
        case DioExceptionType.connectionError:
          return locale!.connectionError ;
        case DioExceptionType.unknown:
          return locale!.unknown ;
        case DioExceptionType.cancel:
          return "Request cancelled";
        default:
          return locale!.unknown;
      }
  }
  String _handleBadResponse(DioException exception) {
    final statusCode = exception.response?.statusCode;
    if (statusCode == 400) {
      return exception.response?.data["message"] ?? locale!.badRequest ;
    } else if (statusCode == 401 || statusCode == 403) {
      return exception.response?.data["message"] ?? locale!.unauthorized ;
    } else if (statusCode == 404) {
      return  locale!.notFount;
    } else if (statusCode == 409) {
      return exception.response?.data["message"] ?? locale!.conflict ;
    } else if (statusCode == 500) {
      return  locale!.internalServerError ;
    } else {
      return exception.response?.data["message"] ?? locale!.unknown ;
    }
  }








}