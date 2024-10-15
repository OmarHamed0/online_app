import 'package:online_exam_app/core/networking/result.dart';
import 'package:online_exam_app/data/api/api_consumer.dart';
import 'package:online_exam_app/data/api/model/GetAllSubjectsDto.dart';
import 'package:online_exam_app/data/datasource/contracts/get_all_subjects_online_data_source.dart';

import '../../../core/networking/api_extensions.dart';
import 'package:injectable/injectable.dart';

@Injectable(as:GetAllSubjectsOnlineDataSource )

class GetAllSubjectsDataSourceImpl implements GetAllSubjectsOnlineDataSource{
  ApiConsumer apiConsumer;
  GetAllSubjectsDataSourceImpl({required this.apiConsumer});
  @override
  Future<Result<GetAllSubjectsDto?>> getAllSubjects() async{
   return executeApi<GetAllSubjectsDto?>(
     apiCall:()async{
       var response=await apiConsumer.getAllSubjects();
       return Success(data: response);
   }
   );
  }

}