import 'package:clean_exe/domain/repository/animal/animal_repository.dart';
import 'package:clean_exe/domain/use_case/animal/animal_usecase.dart';

import 'injection_container.dart';

class UseCaseRegistry {
  void registerAnimalUseCases() {
    sl.registerSingleton<AnimalUseCase>(
        AnimalUseCase(sl<AnimalRepository>()));
  }
}