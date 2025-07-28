part of 'animal_bloc.dart';

enum AnimalStateStatus {
  initial,
  loading,
  loaded,
  success,
  failed,
}

final class AnimalState extends Equatable {
  final AnimalStateStatus status;
  final List<AnimalEntity> animalEntities;
  final String errorMessage;

  const AnimalState({
    this.status = AnimalStateStatus.initial,
    this.animalEntities = const [],
    this.errorMessage = '',
  });

  AnimalState copyWith({
    AnimalStateStatus? status,
    List<AnimalEntity>? animalEntities,
    String? errorMessage,
  }) {
    return AnimalState(
      status: status ?? this.status,
      animalEntities: animalEntities ?? this.animalEntities,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        status,
        animalEntities,
        errorMessage,
      ];
}
