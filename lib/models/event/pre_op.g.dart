// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_op.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreOp _$PreOpFromJson(Map<String, dynamic> json) => PreOp(
      type: $enumDecode(_$EventTypeEnumMap, json['type']),
      id: json['id'] as int,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      zzIndication: json['zzIndication'] as String?,
      zzCompartiment: json['zzCompartiment'],
      weight: json['weight'] as num?,
      size: json['size'] as num?,
      imc: json['imc'] as num?,
      comment: json['comment'] as String?,
      diagnostic: json['diagnostic'] as String?,
    );

Map<String, dynamic> _$PreOpToJson(PreOp instance) => <String, dynamic>{
      'type': _$EventTypeEnumMap[instance.type]!,
      'id': instance.id,
      'date': instance.date?.toIso8601String(),
      'zzIndication': instance.zzIndication,
      'zzCompartiment': instance.zzCompartiment,
      'weight': instance.weight,
      'size': instance.size,
      'imc': instance.imc,
      'comment': instance.comment,
      'diagnostic': instance.diagnostic,
    };

const _$EventTypeEnumMap = {
  EventType.kneeSurgery: 'kneeSurgery',
  EventType.hipSurgery: 'hipSurgery',
  EventType.ligamentSurgery: 'ligamentSurgery',
  EventType.preOp: 'preOp',
  EventType.postOp: 'postOp',
  EventType.undesirable: 'undesirable',
};
