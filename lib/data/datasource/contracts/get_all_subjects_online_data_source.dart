  import 'package:online_exam_app/data/api/model/GetAllSubjectsDto.dart';

import '../../../core/networking/result.dart';
import '../../../domain/entities/GetAllSubjects.dart';

abstract class GetAllSubjectsOnlineDataSource{
    Future<Result<GetAllSubjectsDto?>>getAllSubjects();

  }