import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/base/base_view_model.dart';
import '../../../../core/networking/result.dart';
import '../../../../data/api/model/LoggedUserDto.dart';
import '../../../../domain/entities/LoggedUser.dart';
import '../../../../domain/usecase/logged_user_use_case.dart';
import 'logged_user_states.dart';

@injectable
class LoggedUserCubit extends BaseViewModel<LoggedUserState> {
  LoggedUserUseCase useCase;
  LoggedUser? user;
  LoggedUserCubit({required this.useCase}) : super(LoggedUserInitialStata());
  void loggedUser() async {
    emit(LoggedUserLoadingStata(loading: 'Loading...'));
    var result = await useCase.invoke();
    if (result is Success<LoggedUserDto?>) {
      user = result.data;
      print("success$result");
      emit(LoggedUserSuccessStata(user: result.data));
    } else if (result is Fail<LoggedUserDto?>) {
      print(getErrorMassageFromException(result.exception));

      emit(LoggedUserErrorStata(
          errorMassage: getErrorMassageFromException(result.exception)));
    }
  }
}
