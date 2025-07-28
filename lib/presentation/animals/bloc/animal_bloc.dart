import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:clean_exe/core/util/data_state.dart';
import 'package:clean_exe/domain/entities/animal/animal_entity.dart';
import 'package:clean_exe/domain/use_case/animal/animal_usecase.dart';
import 'package:equatable/equatable.dart';

part 'animal_event.dart';
part 'animal_state.dart';

class AnimalBloc extends Bloc<AnimalEvent, AnimalState> {
  final AnimalUseCase animalUseCase;

  AnimalBloc(
    this.animalUseCase,
  ) : super(const AnimalState()) {
    on<GetAnimalsEvent>(getAnimals);
  }

  void getAnimals(AnimalEvent event, Emitter<AnimalState> emit) async {
    try {
      emit(state.copyWith(status: AnimalStateStatus.loading));

      final DataState<List<AnimalEntity>> result = await animalUseCase.call();
      if(result is DataFailed) {
        return emit(state.copyWith(
          status: AnimalStateStatus.failed,
          errorMessage: result.error.toString(),
        ));
      }
      return emit(state.copyWith(
        status: AnimalStateStatus.loaded,
        animalEntities: result.data ?? [],
      ));
    } catch (e, stackTrace) {
      log(e.toString());
      log(stackTrace.toString());
      emit(state.copyWith(
        status: AnimalStateStatus.failed,
        errorMessage: e.toString(),
      ));
    }
  }
}
