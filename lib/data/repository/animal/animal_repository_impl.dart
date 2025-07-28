import 'package:clean_exe/core/util/data_state.dart';
import 'package:clean_exe/data/data_source/animal/animal_service.dart';
import 'package:clean_exe/data/model/animal/animal_model.dart';
import 'package:clean_exe/domain/entities/animal/animal_entity.dart';
import 'package:clean_exe/domain/repository/animal/animal_repository.dart';

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';

class AnimalRepositoryImpl implements AnimalRepository {
  final AnimalService _animalService;
  AnimalRepositoryImpl(
    this._animalService,
  );

  @override
  Future<DataState<List<AnimalEntity>>> getAnimals() async {
    try {
      final HttpResponse<List<AnimalModel>> httpResponse = await _animalService
        .getAnimals();

      if(httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions
          ) 
        );
      }
    } on DioException catch(e) {
      return DataFailed(e);
    }
  }

}