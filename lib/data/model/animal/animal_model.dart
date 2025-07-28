import 'package:clean_exe/domain/entities/animal/animal_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'animal_model.g.dart';

@JsonSerializable()
class AnimalModel extends AnimalEntity {
  const AnimalModel({
    double? adoptionFee,
    String? age,
    DateTime? createdAt,
    String? description,
    bool? favorited,
    String? gender,
    int? id,
    String? imageUrl,
    String? name,
    int? shelter,
    int? shelterId,
    String? shortDescription,
    String? species,
    double? weight,
  }) : super(
          adoptionFee: adoptionFee,
          age: age,
          createdAt: createdAt,
          description: description,
          favorited: favorited,
          gender: gender,
          id: id,
          imageUrl: imageUrl,
          name: name,
          shelter: shelter,
          shelterId: shelterId,
          shortDescription: shortDescription,
          species: species,
          weight: weight,
        );

  factory AnimalModel.fromJson(Map<String, dynamic> json) =>
      _$AnimalModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AnimalModelToJson(this);

  @override
  List<Object?> get props => [
        adoptionFee,
        age,
        createdAt,
        description,
        favorited,
        gender,
        id,
        imageUrl,
        name,
        shelter,
        shelterId,
        shortDescription,
        species,
        weight,
      ];
}
