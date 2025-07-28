import 'package:clean_exe/core/config/endpoints.dart';
import 'package:clean_exe/core/util/dio_instance.dart';
import 'package:clean_exe/data/model/animal/animal_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'animal_service.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class AnimalService {
  factory AnimalService({String? baseUrl}) {
    return _AnimalService(DioInstance.init(),
        baseUrl: baseUrl ?? Endpoints.baseUrl);
  }

  @GET(Endpoints.animals)
  Future<HttpResponse<List<AnimalModel>>> getAnimals();
}
