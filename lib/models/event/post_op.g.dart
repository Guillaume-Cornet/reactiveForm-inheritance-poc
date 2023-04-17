// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_op.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostOp _$PostOpFromJson(Map<String, dynamic> json) => PostOp(
      type: $enumDecode(_$EventTypeEnumMap, json['type']),
      id: json['id'] as int,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      zzIndication: json['zzIndication'] as String?,
      weight: json['weight'] as num?,
      size: json['size'] as num?,
      imc: json['imc'] as num?,
      commentaire: json['commentaire'] as String?,
      corticalThickening: json['corticalThickening'],
      indiceBlackburne: json['indiceBlackburne'],
    );

Map<String, dynamic> _$PostOpToJson(PostOp instance) => <String, dynamic>{
      'type': _$EventTypeEnumMap[instance.type]!,
      'id': instance.id,
      'date': instance.date?.toIso8601String(),
      'zzIndication': instance.zzIndication,
      'weight': instance.weight,
      'size': instance.size,
      'imc': instance.imc,
      'commentaire': instance.commentaire,
      'corticalThickening': instance.corticalThickening,
      'indiceBlackburne': instance.indiceBlackburne,
    };

const _$EventTypeEnumMap = {
  EventType.kneeSurgery: 'kneeSurgery',
  EventType.hipSurgery: 'hipSurgery',
  EventType.ligamentSurgery: 'ligamentSurgery',
  EventType.preOp: 'preOp',
  EventType.postOp: 'postOp',
  EventType.undesirable: 'undesirable',
};
