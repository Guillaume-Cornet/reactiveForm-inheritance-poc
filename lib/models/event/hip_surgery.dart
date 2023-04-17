import 'package:json_annotation/json_annotation.dart';
import 'package:pocreactiveforms/models/event/Event.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'hip_surgery.g.dart';

@JsonSerializable(explicitToJson: true)
@FormGroupAnnotation()
class HipSurgery extends Event {
  HipSurgery({
    required super.type,
    required super.id,
    super.date,
    this.effractionCorticale,
    this.valgusFemoral,
  });

  dynamic effractionCorticale;
  dynamic valgusFemoral;

  @override
  Map<String, dynamic> toJson() => _$HipSurgeryToJson(this);

  factory HipSurgery.fromJson(json) =>
      _$HipSurgeryFromJson(json);
}
