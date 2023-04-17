import 'package:json_annotation/json_annotation.dart';
import 'package:pocreactiveforms/models/event/Event.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'post_op.g.dart';

@JsonSerializable(explicitToJson: true)
@FormGroupAnnotation()
class PostOp extends Event {
  PostOp({
    required super.type,
    required super.id,
    super.date,
    super.zzIndication,
    this.weight,
    this.size,
    this.imc,
    this.commentaire,
    this.corticalThickening,
    this.indiceBlackburne,
  });

  num? weight;
  num? size;
  num? imc;
  String? commentaire;
  dynamic corticalThickening;
  dynamic indiceBlackburne;


  Map<String, dynamic> toJson() => _$PostOpToJson(this);

  factory PostOp.fromJson(json) => _$PostOpFromJson(json);

}
