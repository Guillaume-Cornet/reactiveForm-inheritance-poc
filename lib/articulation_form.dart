import 'package:flutter/material.dart';
import 'package:pocreactiveforms/models/Articulation.dart';
import 'package:pocreactiveforms/models/event/Event.dart';
import 'package:pocreactiveforms/models/event/hip_surgery.dart';
import 'package:pocreactiveforms/models/event/knee_surgery.dart';
import 'package:pocreactiveforms/models/event/post_op.dart';
import 'package:pocreactiveforms/models/event/pre_op.dart';
import 'package:pocreactiveforms/models/event/undesirable.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ArticulationForm extends StatefulWidget {
  const ArticulationForm({Key? key}) : super(key: key);

  @override
  State<ArticulationForm> createState() => _ArticulationFormState();
}

class _ArticulationFormState extends State<ArticulationForm> {
  late Articulation _articulation;

  @override
  void initState() {
    _articulation = Articulation(id: 232, createdDate: DateTime.now(), patientName: "John do", events: [
      PreOp(type: EventType.preOp, id: 1),
      KneeSurgery(type: EventType.kneeSurgery, id: 2),
      HipSurgery(type: EventType.hipSurgery, id: 3),
      PostOp(type: EventType.postOp, id: 4),
      Undesirable(type: EventType.undesirable, id: 5),
    ]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ArticulationFormBuilder(
        model: _articulation,
        builder: (context, formModel, child) {
          return Column(
            children: [
              // build fields from articulation
              ReactiveTextField<int>(
                formControl: formModel.idControl,
                keyboardType: TextInputType.number,
              ),
              ReactiveTextField(formControl: formModel.patientNameControl),

              // build form fields from events loop in Articulation
              ReactiveFormArray(
                  formArray: formModel.eventsControl,
                  builder: (context, formArray, child) {
                    List<Widget> widgetsFromEvent = formArray.value!
                        .asMap()
                        .map((i, event) {
                          if (event is PreOp) {
                            Column column = Column(children: _buildPreopFields(i, event));
                            return MapEntry(i, _buildFormEventPanel("PreOp fields", column));
                          }

                          if (event is PostOp) {
                            Column column = Column(children: _buildPostOpFields(i, event));
                            return MapEntry(i, _buildFormEventPanel("PostOp fields", column));
                          }

                          if (event is KneeSurgery) {
                            Column column = Column(children: _buildKneeSurgeryFields(i, event));
                            return MapEntry(i, _buildFormEventPanel("KneeSurgery fields", column));
                          }

                          if (event is HipSurgery) {
                            Column column = Column(children: _buildHipSurgeryFields(i, event));
                            return MapEntry(i, _buildFormEventPanel("HipSurgery fields", column));
                          }

                          if (event is Undesirable) {
                            Column column = Column(children: _buildUndesirableFields(i, event));
                            return MapEntry(i, _buildFormEventPanel("Undesirable fields", column));
                          }

                          throw Exception("event type not manage");
                        })
                        .values
                        .toList();

                    return Column(children: widgetsFromEvent);
                  }),
            ],
          );
        });
  }

  List<Widget> _buildPreopFields(int i, PreOp preop) {
    return [
      ReactiveTextField(formControlName: '${i}.id'),
      ReactiveTextField(formControlName: '${i}.weight'),
      ReactiveTextField(formControlName: '${i}.diagnostic'),
    ];
  }

  List<Widget> _buildPostOpFields(int i, PostOp postOp) {
    return [
      ReactiveTextField(formControlName: '${i}.id'),
      ReactiveTextField(formControlName: '${i}.commentaire'),
    ];
  }

  List<Widget> _buildKneeSurgeryFields(int i, KneeSurgery kneeSurgery) {
    return [
      ReactiveTextField(formControlName: '${i}.tailleIncision'),
    ];
  }

  List<Widget> _buildHipSurgeryFields(int i, HipSurgery hipSurgery) {
    return [
      ReactiveTextField(formControlName: '${i}.valgusFemoral'),
    ];
  }

  List<Widget> _buildUndesirableFields(int i, Undesirable undesirable) {
    return [
      ReactiveTextField(formControlName: '${i}.complicationImplantCause'),
    ];
  }

  Container _buildFormEventPanel(String label, Column eventPanel) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: eventPanel,
    );
  }
}
