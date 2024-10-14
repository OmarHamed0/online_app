
import 'package:dio/dio.dart';
import 'package:online_exam_app/core/networking/exceptions.dart';
import 'package:online_exam_app/core/networking/result.dart';

Future<Result<T>> executeApi<T>({required Future<Result<T>> Function() apiCall}) async {
  try {
    var result = await apiCall.call();
    return  result;
  } on DioException catch (e) {
    return Fail(exception: DioHttpException(dioException: e));
  } on Exception catch (e) {
    return Fail(exception: e);
  }
}
