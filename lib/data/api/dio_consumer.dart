import 'package:dio/dio.dart';
import 'package:online_exam_app/data/api/api_constants.dart';
import 'package:online_exam_app/data/api/api_consumer.dart';
import 'package:online_exam_app/data/api/model/GetAllSubjectsDto.dart';
import 'package:online_exam_app/data/api/model/response/auth_response.dart';
import 'package:injectable/injectable.dart';
import 'model/LoggedUserDto.dart';

@Injectable(as:ApiConsumer )
class DioConsumer implements ApiConsumer {
  late Dio _dio;
  DioConsumer() {
    _dio = Dio(BaseOptions(baseUrl: ApiConstants.baseUrl));
  }

  @override
  Future<AuthResponse?> login(
      {required String email, required String password}) async {
    var response = await _dio.post(ApiConstants.signInUrl, data: {
      "email": email,
      "password": password,
    });
    return AuthResponse.fromJson(response.data);
  }

  @override
  Future<AuthResponse?> signup(
      {required String firstName,
      required String lastName,
      required String userName,
      required String email,
      required String password,
      required String rePassword,
      required String phone}) async {
    var response = await _dio.post(ApiConstants.signInUrl, data: {
      "username": userName,
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "password": password,
      "rePassword": rePassword,
      "phone": phone
    });
    return AuthResponse.fromJson(response.data);
  }

  @override
  Future<String?> forgetPassword({
    required String email,
  }) async {
    var response =
        await _dio.post(ApiConstants.forgetPasswordApi, data: {"email": email});
    return response.data["message"];
  }

  @override
  Future<String?> emailVerification({
    required String resetCode,
  }) async {
    var response = await _dio
        .post(ApiConstants.verifyResetCodeApi, data: {"resetCode": resetCode});
    return response.data["status"];
  }

  @override
  Future<AuthResponse?> resetPassword(
      {required String email, required String newPassword}) async {
    var response = await _dio.put(ApiConstants.resetPasswordApi,
        data: {"email": email, "newPassword": newPassword});
    AuthResponse authResponse = AuthResponse.fromJson(response.data);
    return authResponse;
  }

  @override
  Future<GetAllSubjectsDto?> getAllSubjects()async {
    var response=await _dio.get(ApiConstants.getAllSubjectsApi);
    GetAllSubjectsDto getAllSubjects=GetAllSubjectsDto.fromJson(response.data);
    return getAllSubjects;
  }
  @override
  Future<LoggedUserDto?> loggedUser() async {
    var response = await _dio.get(ApiConstants.loggedUserApi,
        options: Options(headers: {}));
    LoggedUserDto loggedUserDto=LoggedUserDto.fromJson(response.data);
    return loggedUserDto;
  }
}
