// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimalEntity _$AnimalEntityFromJson(Map<String, dynamic> json) => AnimalEntity(
      adoptionFee: (json['adoption_fee'] as num?)?.toDouble(),
      age: json['age'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      description: json['description'] as String?,
      favorited: json['favorited'] as bool?,
      gender: json['gender'] as String?,
      id: (json['id'] as num?)?.toInt(),
      imageUrl: json['image_url'] as String?,
      name: json['name'] as String?,
      shelter: (json['shelter'] as num?)?.toInt(),
      shelterId: (json['shelter_id'] as num?)?.toInt(),
      shortDescription: json['short_description'] as String?,
      species: json['species'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AnimalEntityToJson(AnimalEntity instance) =>
    <String, dynamic>{
      'adoption_fee': instance.adoptionFee,
      'age': instance.age,
      'createdAt': instance.createdAt?.toIso8601String(),
      'description': instance.description,
      'favorited': instance.favorited,
      'gender': instance.gender,
      'id': instance.id,
      'image_url': instance.imageUrl,
      'name': instance.name,
      'shelter': instance.shelter,
      'shelter_id': instance.shelterId,
      'short_description': instance.shortDescription,
      'species': instance.species,
      'weight': instance.weight,
    };
