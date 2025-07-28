import 'package:clean_exe/core/util/data_state.dart';
import 'package:clean_exe/domain/entities/animal/animal_entity.dart';

abstract class AnimalRepository {
  Future<DataState<List<AnimalEntity>>> getAnimals();
}
