import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:online_exam_app/data/api/model/GetAllSubjectsDto.dart';
import 'package:online_exam_app/domain/entities/GetAllSubjects.dart';
import 'package:online_exam_app/domain/usecase/get_all_subjects_use_case.dart';

import '../../../../../core/networking/result.dart';
import 'explore_states.dart';

@injectable
class ExploreCubit extends Cubit<ExploreStates> {
  GetAllSubjectsUseCase useCase;
  ExploreCubit({required this.useCase}) : super(ExploreInitialState());
  List<Subjects> subjectList = [];

  void getAllSubjects() async {
    emit(ExploreLoadingState(loadingMessage: "loading..." ''));
    var result = await useCase.invoke();
    if (result is Success<GetAllSubjectsDto?>) {
      subjectList = result.data?.subjects ?? [];
      emit(ExploreSuccessState(getAllSubjects: result.data));
    } else if (result is Fail<GetAllSubjectsDto?>) {
      emit(ExploreErrorState(errorMessage: result.exception));
    }
  }
}
