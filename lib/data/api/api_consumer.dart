import 'package:online_exam_app/data/api/model/response/auth_response.dart';

abstract class ApiConsumer{
  Future<AuthResponse?> signup({
    required String firstName ,
    required String lastName ,
    required String userName ,
    required String email ,
    required String password ,
    required String rePassword ,
    required String phone ,
});

  Future<AuthResponse?> login({
    required String email,
    required String password,
  });


  Future<String?> forgetPassword({
    required String email,
  });


  Future<String?> emailVerification({
    required String  resetCode,
  });

  Future<AuthResponse?> resetPassword({
    required String  email,
    required String newPassword
  });
}

