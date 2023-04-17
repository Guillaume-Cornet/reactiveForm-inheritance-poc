import 'package:json_annotation/json_annotation.dart';
import 'package:pocreactiveforms/models/event/Event.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'knee_surgery.g.dart';

@JsonSerializable(explicitToJson: true)
@FormGroupAnnotation()
class KneeSurgery extends Event {
  KneeSurgery({
    required super.type,
    required super.id,
    super.date,
    super.zzIndication,
    this.tailleIncision,
    this.perteSanguines,
  });

  num? duree;
  num? tailleIncision;
  dynamic perteSanguines;

  Map<String, dynamic> toJson() => _$KneeSurgeryToJson(this);

  factory KneeSurgery.fromJson(json) => _$KneeSurgeryFromJson(json);
}
