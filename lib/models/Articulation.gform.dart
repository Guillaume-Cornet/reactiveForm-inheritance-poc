// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'Articulation.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveArticulationFormConsumer extends StatelessWidget {
  const ReactiveArticulationFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, ArticulationForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveArticulationForm.of(context);

    if (formModel is! ArticulationForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ArticulationFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const ArticulationFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ArticulationForm form;
}

class ReactiveArticulationForm extends StatelessWidget {
  const ReactiveArticulationForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ArticulationForm form;

  final WillPopCallback? onWillPop;

  static ArticulationForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ArticulationFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ArticulationFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ArticulationFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ArticulationFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ArticulationFormBuilder extends StatefulWidget {
  const ArticulationFormBuilder({
    Key? key,
    required this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Articulation model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, ArticulationForm formModel, Widget? child) builder;

  final void Function(BuildContext context, ArticulationForm formModel)?
      initState;

  @override
  _ArticulationFormBuilderState createState() =>
      _ArticulationFormBuilderState();
}

class _ArticulationFormBuilderState extends State<ArticulationFormBuilder> {
  late ArticulationForm _formModel;

  @override
  void initState() {
    _formModel = ArticulationForm(
        widget.model, ArticulationForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ArticulationFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ArticulationForm(
          widget.model, ArticulationForm.formElements(widget.model), null);

      if (_formModel.form.disabled) {
        _formModel.form.markAsDisabled();
      }

      widget.initState?.call(context, _formModel);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveArticulationForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        onWillPop: widget.onWillPop,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class ArticulationForm implements FormModel<Articulation> {
  ArticulationForm(
    this.articulation,
    this.form,
    this.path,
  ) {}

  static String patientNameControlName = "patientName";

  static String idControlName = "id";

  static String eventsControlName = "events";

  final Articulation articulation;

  final FormGroup form;

  final String? path;

  String patientNameControlPath() => pathBuilder(patientNameControlName);
  String idControlPath() => pathBuilder(idControlName);
  String eventsControlPath() => pathBuilder(eventsControlName);
  String get _patientNameValue => patientNameControl.value as String;
  int? get _idValue => idControl?.value;
  List<Event> get _eventsValue =>
      eventsControl.value?.whereType<Event>().toList() ?? [];
  bool get containsPatientName {
    try {
      form.control(patientNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsId {
    try {
      form.control(idControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsEvents {
    try {
      form.control(eventsControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get patientNameErrors => patientNameControl.errors;
  Object? get idErrors => idControl?.errors;
  Object? get eventsErrors => eventsControl.errors;
  void get patientNameFocus => form.focus(patientNameControlPath());
  void get idFocus => form.focus(idControlPath());
  void get eventsFocus => form.focus(eventsControlPath());
  void idRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsId) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          idControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            idControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void patientNameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    patientNameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValueUpdate(
    int? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void eventsValueUpdate(
    List<Event> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    eventsControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void patientNameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    patientNameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValuePatch(
    int? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void eventsValuePatch(
    List<Event> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    eventsControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void patientNameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      patientNameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void idValueReset(
    int? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      idControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void eventsValueReset(
    List<Event> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      eventsControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get patientNameControl =>
      form.control(patientNameControlPath()) as FormControl<String>;
  FormControl<int>? get idControl =>
      containsId ? form.control(idControlPath()) as FormControl<int>? : null;
  FormArray<Event> get eventsControl =>
      form.control(eventsControlPath()) as FormArray<Event>;
  void patientNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      patientNameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      patientNameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void idSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      idControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      idControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void eventsSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      eventsControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      eventsControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addEventsItem(
    Event value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    eventsControl.add(FormControl<Event>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  @override
  Articulation get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return Articulation(
        createdDate: articulation.createdDate,
        patientName: _patientNameValue,
        id: _idValue,
        events: _eventsValue);
  }

  ArticulationForm copyWithPath(String? path) {
    return ArticulationForm(articulation, form, path);
  }

  @override
  void updateValue(
    Articulation value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ArticulationForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    Articulation? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(Articulation articulation) => FormGroup({
        patientNameControlName: FormControl<String>(
            value: articulation.patientName,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        idControlName: FormControl<int>(
            value: articulation.id,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        eventsControlName: FormArray<Event>(
            (articulation.events)
                .map((e) => FormControl<Event>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveArticulationFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveArticulationFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ArticulationForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ArticulationForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, ArticulationForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveArticulationForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<T>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final itemList = (formArray.value ?? [])
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveArticulationFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveArticulationFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<V>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<V>> Function(
      ArticulationForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ArticulationForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, ArticulationForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveArticulationForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <V>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
