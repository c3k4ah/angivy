import 'package:json_annotation/json_annotation.dart';

part 'actu.g.dart';

@JsonSerializable()
class Actu {
  final int id;
  final String titre;
  final String description;
  final DateTime date;
  final String image;

  Actu({
    required this.id,
    required this.titre,
    required this.description,
    required this.date,
    required this.image,
  });

  factory Actu.fromJson(Map<String, dynamic> json) => _$ActuFromJson(json);
  Map<String, dynamic> toJson() => _$ActuToJson(this);
}
