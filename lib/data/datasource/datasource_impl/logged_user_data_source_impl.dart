import 'package:injectable/injectable.dart';

import '../../../core/networking/api_extensions.dart';
import '../../../core/networking/result.dart';
import '../../../domain/entities/LoggedUser.dart';
import '../../api/api_consumer.dart';
import '../../api/model/LoggedUserDto.dart';
import '../contracts/logged_user_data_sourc.dart';

@Injectable(as: LoggedUserDataSource)
class LoggedUserDataSourceImpl implements LoggedUserDataSource {
  ApiConsumer apiConsumer;
  LoggedUserDataSourceImpl({required this.apiConsumer});

  @override
  Future<Result<LoggedUserDto?>> loggedUser() async {
    return executeApi<LoggedUserDto?>(
            apiCall: () async {
      var response = await apiConsumer.loggedUser();
      return Success(data: response);
    });
  }
}
