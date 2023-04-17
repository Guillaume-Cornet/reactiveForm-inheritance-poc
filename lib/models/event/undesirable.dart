import 'package:json_annotation/json_annotation.dart';
import 'package:pocreactiveforms/models/event/Event.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'undesirable.g.dart';

@JsonSerializable(explicitToJson: true)
@FormGroupAnnotation()
class Undesirable extends Event {
  Undesirable({
    required super.type,
    required super.id,
    super.date,
    this.commentaire,
    this.complicationImplantCause,
  });

  dynamic commentaire;
  bool? complicationImplantCause;

  Map<String, dynamic> toJson() => _$UndesirableToJson(this);

  factory Undesirable.fromJson(json) => _$UndesirableFromJson(json);
}
