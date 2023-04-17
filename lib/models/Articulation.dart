import 'package:json_annotation/json_annotation.dart';
import 'package:pocreactiveforms/models/event/Event.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'Articulation.g.dart';
part 'Articulation.gform.dart';

Map<String, dynamic>? requiredValidator(AbstractControl<dynamic> control) {
  return Validators.required(control);
}
Map<String, dynamic>? sideValidator(AbstractControl<dynamic> control) {
  return control.isNotNull && [0,1].contains(control.value)
      ? null
      : {'sideValidator': true};
}

@JsonSerializable(explicitToJson: true)
@ReactiveFormAnnotation()
class Articulation {
  Articulation({
    required this.createdDate,
    @FormControlAnnotation() required this.patientName,
    @FormControlAnnotation()this.id,
    @FormArrayAnnotation() required this.events,
  });

  DateTime createdDate;
  int? id;
  String patientName;
  List<Event> events;

  Map<String, dynamic> toJson() => _$ArticulationToJson(this);

  factory Articulation.fromJson(json) => _$ArticulationFromJson(json);

  Articulation copyWith({
    DateTime? createdDate,
    int? id,
    List<Event>? events,
    String? patientName
  }) {
    return Articulation(
        createdDate: createdDate ?? this.createdDate,
        patientName: patientName ?? this.patientName,
        id: id ?? this.id,
        events: events ?? this.events,
    );
  }
}
