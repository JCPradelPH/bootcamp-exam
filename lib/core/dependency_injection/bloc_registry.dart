import 'package:clean_exe/domain/use_case/animal/animal_usecase.dart';
import 'package:clean_exe/presentation/animals/bloc/animal_bloc.dart';

import 'injection_container.dart';

class BlocRegistry {
  void registerAnimalBlocs() {
    sl.registerFactory<AnimalBloc>(() => AnimalBloc(
          sl<AnimalUseCase>(),
        ));
  }
}