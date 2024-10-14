import 'package:online_exam_app/core/networking/api_extensions.dart';
import 'package:online_exam_app/core/networking/result.dart';
import 'package:online_exam_app/data/api/api_consumer.dart';
import 'package:online_exam_app/data/api/model/user_dto.dart';

import 'package:online_exam_app/domain/entities/User.dart';

import '../contracts/auth_online_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as:AuthOnlineDataSource )
class AuthOnlineDataSourceImpl implements AuthOnlineDataSource {
  final ApiConsumer apiConsumer;
  AuthOnlineDataSourceImpl({required this.apiConsumer});
  @override
  Future<Result<User>> signup({
    required String username,
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String rePassword,
    required String phone,
  }) async {
    return executeApi<User>(
      apiCall: () async {
        var authResponse = await apiConsumer.signup(
            firstName: firstName,
            lastName: lastName,
            userName: username,
            email: email,
            password: password,
            rePassword: rePassword,
            phone: phone);
        UserDto userDto = UserDto(token: authResponse?.token);
        return Success(data: userDto.toUser());
      },
    );
  }

  @override
  Future<Result<User?>> login(
      {required String email, required String password}) async {
    return executeApi<User?>(
      apiCall: () async {
        var authResponse =
            await apiConsumer.login(email: email, password: password);
        UserDto userDto = UserDto(token: authResponse?.token);
        return Success(data: userDto.toUser());
      },
    );
  }

  @override
  Future<Result<String?>> forgetPassword({required String email}) async {
    return executeApi<String?>(
      apiCall: () async {
        String? massage = await apiConsumer.forgetPassword(email: email);
        return Success(data: massage);
      },
    );
  }

  @override
  Future<Result<User?>> resetPassword(
      {required String email, required String newPassword}) {
    return executeApi<User?>(apiCall: () async {
      var authResponse = await apiConsumer.resetPassword(
          email: email, newPassword: newPassword);
      var userDto = UserDto(token: authResponse?.token);
      return Success(data: userDto.toUser());
    });
  }

  @override
  Future<Result<String?>> verifyResetCode({required String resetCode}) {
    return executeApi<String?>(
      apiCall: () async {
        String? massage =
            await apiConsumer.emailVerification(resetCode: resetCode);
        return Success(data: massage);
      },
    );
  }
}
