import 'package:online_exam_app/core/networking/result.dart';
import 'package:online_exam_app/domain/entities/User.dart';

abstract class AuthRepository{
  Future<Result<User>>signup({
    required String phone,
    required String rePassword,
    required String password,
    required String email,
    required String lastName,
    required String firstName,
    required String username,

});

  Future<Result<User?>> login({required String  email, required String  password } );
  Future<Result<String?>> forgetPassword({required String  email } );
  Future<Result<String?>> verifyResetCode({required String  resetCode } );
  Future<Result<User?>> resetPassword({required String  email, required String newPassword} );
}