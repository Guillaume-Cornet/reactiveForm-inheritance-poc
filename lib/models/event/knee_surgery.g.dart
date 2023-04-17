// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'knee_surgery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KneeSurgery _$KneeSurgeryFromJson(Map<String, dynamic> json) => KneeSurgery(
      type: $enumDecode(_$EventTypeEnumMap, json['type']),
      id: json['id'] as int,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      zzIndication: json['zzIndication'] as String?,
      tailleIncision: json['tailleIncision'] as num?,
      perteSanguines: json['perteSanguines'],
    )..duree = json['duree'] as num?;

Map<String, dynamic> _$KneeSurgeryToJson(KneeSurgery instance) =>
    <String, dynamic>{
      'type': _$EventTypeEnumMap[instance.type]!,
      'id': instance.id,
      'date': instance.date?.toIso8601String(),
      'zzIndication': instance.zzIndication,
      'duree': instance.duree,
      'tailleIncision': instance.tailleIncision,
      'perteSanguines': instance.perteSanguines,
    };

const _$EventTypeEnumMap = {
  EventType.kneeSurgery: 'kneeSurgery',
  EventType.hipSurgery: 'hipSurgery',
  EventType.ligamentSurgery: 'ligamentSurgery',
  EventType.preOp: 'preOp',
  EventType.postOp: 'postOp',
  EventType.undesirable: 'undesirable',
};
