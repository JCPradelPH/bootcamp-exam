import 'package:clean_exe/data/data_source/animal/animal_service.dart';

import 'injection_container.dart';

class ServicesRegistry {
  void registerAnimalServices() {
    sl.registerSingleton<AnimalService>(AnimalService());
  }
}
