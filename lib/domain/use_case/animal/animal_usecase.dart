import 'package:clean_exe/core/usecases/usecase.dart';
import 'package:clean_exe/core/util/data_state.dart';
import 'package:clean_exe/domain/entities/animal/animal_entity.dart';
import 'package:clean_exe/domain/repository/animal/animal_repository.dart';

class AnimalUseCase implements UseCase<DataState<List<AnimalEntity>>, void> {
  final AnimalRepository _repository;
  AnimalUseCase(this._repository);

  @override
  Future<DataState<List<AnimalEntity>>> call({void params}) {
    return _repository.getAnimals();
  }
}
