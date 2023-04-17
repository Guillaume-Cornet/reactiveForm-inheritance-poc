// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'undesirable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Undesirable _$UndesirableFromJson(Map<String, dynamic> json) => Undesirable(
      type: $enumDecode(_$EventTypeEnumMap, json['type']),
      id: json['id'] as int,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      commentaire: json['commentaire'],
      complicationImplantCause: json['complicationImplantCause'] as bool?,
    )..zzIndication = json['zzIndication'] as String?;

Map<String, dynamic> _$UndesirableToJson(Undesirable instance) =>
    <String, dynamic>{
      'type': _$EventTypeEnumMap[instance.type]!,
      'id': instance.id,
      'date': instance.date?.toIso8601String(),
      'zzIndication': instance.zzIndication,
      'commentaire': instance.commentaire,
      'complicationImplantCause': instance.complicationImplantCause,
    };

const _$EventTypeEnumMap = {
  EventType.kneeSurgery: 'kneeSurgery',
  EventType.hipSurgery: 'hipSurgery',
  EventType.ligamentSurgery: 'ligamentSurgery',
  EventType.preOp: 'preOp',
  EventType.postOp: 'postOp',
  EventType.undesirable: 'undesirable',
};
