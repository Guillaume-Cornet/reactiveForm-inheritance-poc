import 'package:json_annotation/json_annotation.dart';
import 'package:pocreactiveforms/models/event/Event.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'pre_op.g.dart';

@JsonSerializable(explicitToJson: true)
@FormGroupAnnotation()
class PreOp extends Event {
  PreOp({
    required super.type,
    required super.id,
    super.date,
    super.zzIndication,
    this.zzCompartiment,
    @FormControlAnnotation() this.weight,
    @FormControlAnnotation() this.size,
    this.imc,
    this.comment,
    @FormControlAnnotation() this.diagnostic,
  });

  dynamic zzCompartiment;
  num? weight;
  num? size;
  num? imc;
  String? comment;
  String? diagnostic;

  Map<String, dynamic> toJson() => _$PreOpToJson(this);

  factory PreOp.fromJson(json) => _$PreOpFromJson(json);
}
