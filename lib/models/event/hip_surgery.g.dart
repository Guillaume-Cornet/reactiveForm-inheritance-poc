// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hip_surgery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HipSurgery _$HipSurgeryFromJson(Map<String, dynamic> json) => HipSurgery(
      type: $enumDecode(_$EventTypeEnumMap, json['type']),
      id: json['id'] as int,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      effractionCorticale: json['effractionCorticale'],
      valgusFemoral: json['valgusFemoral'],
    )..zzIndication = json['zzIndication'] as String?;

Map<String, dynamic> _$HipSurgeryToJson(HipSurgery instance) =>
    <String, dynamic>{
      'type': _$EventTypeEnumMap[instance.type]!,
      'id': instance.id,
      'date': instance.date?.toIso8601String(),
      'zzIndication': instance.zzIndication,
      'effractionCorticale': instance.effractionCorticale,
      'valgusFemoral': instance.valgusFemoral,
    };

const _$EventTypeEnumMap = {
  EventType.kneeSurgery: 'kneeSurgery',
  EventType.hipSurgery: 'hipSurgery',
  EventType.ligamentSurgery: 'ligamentSurgery',
  EventType.preOp: 'preOp',
  EventType.postOp: 'postOp',
  EventType.undesirable: 'undesirable',
};
