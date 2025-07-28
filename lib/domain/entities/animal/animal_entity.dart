import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'animal_entity.g.dart';

@JsonSerializable()
class AnimalEntity extends Equatable {
  @JsonKey(name: 'adoption_fee')
  final double? adoptionFee;

  @JsonKey(name: 'age')
  final String? age;

  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'favorited')
  final bool? favorited;

  @JsonKey(name: 'gender')
  final String? gender;

  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'shelter')
  final int? shelter;

  @JsonKey(name: 'shelter_id')
  final int? shelterId;

  @JsonKey(name: 'short_description')
  final String? shortDescription;

  @JsonKey(name: 'species')
  final String? species;

  @JsonKey(name: 'weight')
  final double? weight;

  const AnimalEntity({
    this.adoptionFee,
    this.age,
    this.createdAt,
    this.description,
    this.favorited,
    this.gender,
    this.id,
    this.imageUrl,
    this.name,
    this.shelter,
    this.shelterId,
    this.shortDescription,
    this.species,
    this.weight,
  });

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

  factory AnimalEntity.fromJson(Map<String, dynamic> json) =>
      _$AnimalEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AnimalEntityToJson(this);
}
