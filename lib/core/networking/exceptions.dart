import 'package:dio/dio.dart';

class DioHttpException implements Exception{
   DioException dioException;
  DioHttpException({required this.dioException});
}

class NoInternetException implements Exception{}
