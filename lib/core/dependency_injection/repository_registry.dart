import 'package:clean_exe/data/data_source/animal/animal_service.dart';
import 'package:clean_exe/data/repository/animal/animal_repository_impl.dart';
import 'package:clean_exe/domain/repository/animal/animal_repository.dart';

import 'injection_container.dart';

class RepositoryRegistry {
  void registerAnimalRepositories() {
    sl.registerSingleton<AnimalRepository>(
      AnimalRepositoryImpl(
        sl<AnimalService>(),
      )
    );
  }
  
}