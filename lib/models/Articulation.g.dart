// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Articulation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Articulation _$ArticulationFromJson(Map<String, dynamic> json) => Articulation(
      createdDate: DateTime.parse(json['createdDate'] as String),
      patientName: json['patientName'] as String,
      id: json['id'] as int?,
      events: (json['events'] as List<dynamic>)
          .map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArticulationToJson(Articulation instance) =>
    <String, dynamic>{
      'createdDate': instance.createdDate.toIso8601String(),
      'id': instance.id,
      'patientName': instance.patientName,
      'events': instance.events.map((e) => e.toJson()).toList(),
    };
