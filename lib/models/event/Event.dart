

import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

import 'hip_surgery.dart';
import 'knee_surgery.dart';
import 'post_op.dart';
import 'pre_op.dart';
import 'undesirable.dart';

enum EventType {
  kneeSurgery,
  hipSurgery,
  ligamentSurgery,
  preOp,
  postOp,
  undesirable;

  isPreOp() {
    return this == preOp;
  }
}

extension EventTypeString on String {
  EventType get asEventType {
    switch (this) {
      case 'KneeSurgery':
        return EventType.kneeSurgery;
      case 'HipSurgery':
        return EventType.hipSurgery;
      case 'LigamentSurgery':
        return EventType.ligamentSurgery;
      case 'PreOp':
        return EventType.preOp;
      case 'postOp':
        return EventType.postOp;
      case 'indesirable':
        return EventType.undesirable;
    }
    throw Exception("EvenementType $this not found");
  }
}

abstract class Event {
  Event({
    required this.type,
    @FormControlAnnotation() required this.id,
    this.date,
    this.zzIndication,
  });

  EventType type;
  int id;
  DateTime? date;
  String? zzIndication;

  Map<String, dynamic> toJson();

  factory Event.fromJson(Map<String, dynamic> json) {
    switch ((json['type'] as String).asEventType) {
      case EventType.preOp:
        return PreOp.fromJson(json);
      case EventType.kneeSurgery:
        return KneeSurgery.fromJson(json);
      case EventType.hipSurgery:
        return HipSurgery.fromJson(json);
      case EventType.postOp:
        return PostOp.fromJson(json);
      case EventType.undesirable:
        return Undesirable.fromJson(json);
    }
    return HipSurgery.fromJson(json);
  }
}
