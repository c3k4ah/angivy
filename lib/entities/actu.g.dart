// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Actu _$ActuFromJson(Map<String, dynamic> json) => Actu(
      id: json['id'] as int,
      titre: json['titre'] as String,
      description: json['description'] as String,
      date: DateTime.parse(json['date'] as String),
      image: json['image'] as String,
    );

Map<String, dynamic> _$ActuToJson(Actu instance) => <String, dynamic>{
      'id': instance.id,
      'titre': instance.titre,
      'description': instance.description,
      'date': instance.date.toIso8601String(),
      'image': instance.image,
    };
