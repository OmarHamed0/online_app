// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/api/api_consumer.dart' as _i165;
import '../data/api/dio_consumer.dart' as _i711;
import '../data/datasource/contracts/auth_online_data_source.dart' as _i544;
import '../data/datasource/contracts/get_all_subjects_online_data_source.dart'
    as _i592;
import '../data/datasource/contracts/logged_user_data_sourc.dart' as _i596;
import '../data/datasource/datasource_impl/auth_online_data_source_impl.dart'
    as _i455;
import '../data/datasource/datasource_impl/get_all_subjects_data_source_impl.dart'
    as _i1001;
import '../data/datasource/datasource_impl/logged_user_data_source_impl.dart'
    as _i169;
import '../data/repository/auth_repository_imp.dart' as _i1062;
import '../data/repository/get_all_subjects_repository_impl.dart' as _i186;
import '../data/repository/logged_user_repository_impl.dart' as _i419;
import '../domain/repository/auth_repository.dart' as _i306;
import '../domain/repository/get_all_subject_repository.dart' as _i386;
import '../domain/repository/logge_user_repository.dart' as _i486;
import '../domain/usecase/forget_password_use_case.dart' as _i598;
import '../domain/usecase/get_all_subjects_use_case.dart' as _i835;
import '../domain/usecase/logged_user_use_case.dart' as _i655;
import '../domain/usecase/login_use_case.dart' as _i374;
import '../domain/usecase/reset_password_use_case.dart' as _i239;
import '../domain/usecase/signup_use_case.dart' as _i633;
import '../domain/usecase/verify_reset_code_use_case.dart' as _i1015;
import '../presentation/auth/forget_password/view_model/forget_password_cubit.dart'
    as _i40;
import '../presentation/auth/login/view_model/login_cubit.dart' as _i327;
import '../presentation/auth/signup/view_model/signup_cubit.dart' as _i560;
import '../presentation/main_home/main_home_view_model/main_home_cubit.dart'
    as _i399;

import '../presentation/tabs/explore/explore/explore_view_model/explore_cubit.dart'
    as _i43;
import '../presentation/tabs/profile/view_model/logged_user_cubit.dart'
    as _i888;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i399.MainHomeCubit>(() => _i399.MainHomeCubit());
    gh.factory<_i165.ApiConsumer>(() => _i711.DioConsumer());
    gh.factory<_i592.GetAllSubjectsOnlineDataSource>(() =>
        _i1001.GetAllSubjectsDataSourceImpl(
            apiConsumer: gh<_i165.ApiConsumer>()));
    gh.factory<_i544.AuthOnlineDataSource>(() =>
        _i455.AuthOnlineDataSourceImpl(apiConsumer: gh<_i165.ApiConsumer>()));
    gh.factory<_i596.LoggedUserDataSource>(() =>
        _i169.LoggedUserDataSourceImpl(apiConsumer: gh<_i165.ApiConsumer>()));
    gh.factory<_i386.GetAllSubjectsRepository>(() =>
        _i186.GetAllSubjectsRepositoryImpl(
            dataSource: gh<_i592.GetAllSubjectsOnlineDataSource>()));
    gh.factory<_i306.AuthRepository>(() => _i1062.AuthRepositoryImp(
        authOnlineDataSource: gh<_i544.AuthOnlineDataSource>()));
    gh.factory<_i486.LoggedUserRepository>(() => _i419.LoggedUserRepositoryImpl(
        dataSource: gh<_i596.LoggedUserDataSource>()));
    gh.factory<_i835.GetAllSubjectsUseCase>(() => _i835.GetAllSubjectsUseCase(
        repository: gh<_i386.GetAllSubjectsRepository>()));
    gh.factory<_i598.ForgetPasswordUseCase>(
        () => _i598.ForgetPasswordUseCase(gh<_i306.AuthRepository>()));
    gh.factory<_i374.LoginUseCase>(
        () => _i374.LoginUseCase(gh<_i306.AuthRepository>()));
    gh.factory<_i239.ResetPasswordUseCase>(
        () => _i239.ResetPasswordUseCase(gh<_i306.AuthRepository>()));
    gh.factory<_i633.SignupUseCase>(
        () => _i633.SignupUseCase(authRepository: gh<_i306.AuthRepository>()));
    gh.factory<_i1015.VerifyResetCodeUseCase>(() =>
        _i1015.VerifyResetCodeUseCase(
            authRepository: gh<_i306.AuthRepository>()));
    gh.factory<_i655.LoggedUserUseCase>(() =>
        _i655.LoggedUserUseCase(repository: gh<_i486.LoggedUserRepository>()));
    gh.factory<_i43.ExploreCubit>(
        () => _i43.ExploreCubit(useCase: gh<_i835.GetAllSubjectsUseCase>()));
    gh.factory<_i40.ForgetPasswordCubit>(() => _i40.ForgetPasswordCubit(
          gh<_i598.ForgetPasswordUseCase>(),
          gh<_i1015.VerifyResetCodeUseCase>(),
          gh<_i239.ResetPasswordUseCase>(),
        ));
    gh.factory<_i560.SignupCubit>(
        () => _i560.SignupCubit(gh<_i633.SignupUseCase>()));
    gh.factory<_i327.LoginCubit>(
        () => _i327.LoginCubit(gh<_i374.LoginUseCase>()));
    gh.factory<_i888.LoggedUserCubit>(
        () => _i888.LoggedUserCubit(useCase: gh<_i655.LoggedUserUseCase>()));
    return this;
  }
}
