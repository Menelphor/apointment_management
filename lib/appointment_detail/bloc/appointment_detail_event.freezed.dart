// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppointmentDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancel,
    required TResult Function() complete,
    required TResult Function(AppointmentState? appointmentState)
        setAppointmentState,
    required TResult Function(String additionalInformation)
        addAdditionalInformation,
    required TResult Function() save,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancel,
    TResult? Function()? complete,
    TResult? Function(AppointmentState? appointmentState)? setAppointmentState,
    TResult? Function(String additionalInformation)? addAdditionalInformation,
    TResult? Function()? save,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancel,
    TResult Function()? complete,
    TResult Function(AppointmentState? appointmentState)? setAppointmentState,
    TResult Function(String additionalInformation)? addAdditionalInformation,
    TResult Function()? save,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelAppointmentEvent value) cancel,
    required TResult Function(CompleteAppointmentEvent value) complete,
    required TResult Function(SetAppointmentStateEvent value)
        setAppointmentState,
    required TResult Function(AddAdditionalInformationEvent value)
        addAdditionalInformation,
    required TResult Function(SaveAppointment value) save,
    required TResult Function(ResetAppointment value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelAppointmentEvent value)? cancel,
    TResult? Function(CompleteAppointmentEvent value)? complete,
    TResult? Function(SetAppointmentStateEvent value)? setAppointmentState,
    TResult? Function(AddAdditionalInformationEvent value)?
        addAdditionalInformation,
    TResult? Function(SaveAppointment value)? save,
    TResult? Function(ResetAppointment value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelAppointmentEvent value)? cancel,
    TResult Function(CompleteAppointmentEvent value)? complete,
    TResult Function(SetAppointmentStateEvent value)? setAppointmentState,
    TResult Function(AddAdditionalInformationEvent value)?
        addAdditionalInformation,
    TResult Function(SaveAppointment value)? save,
    TResult Function(ResetAppointment value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDetailEventCopyWith<$Res> {
  factory $AppointmentDetailEventCopyWith(AppointmentDetailEvent value,
          $Res Function(AppointmentDetailEvent) then) =
      _$AppointmentDetailEventCopyWithImpl<$Res, AppointmentDetailEvent>;
}

/// @nodoc
class _$AppointmentDetailEventCopyWithImpl<$Res,
        $Val extends AppointmentDetailEvent>
    implements $AppointmentDetailEventCopyWith<$Res> {
  _$AppointmentDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CancelAppointmentEventCopyWith<$Res> {
  factory _$$CancelAppointmentEventCopyWith(_$CancelAppointmentEvent value,
          $Res Function(_$CancelAppointmentEvent) then) =
      __$$CancelAppointmentEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelAppointmentEventCopyWithImpl<$Res>
    extends _$AppointmentDetailEventCopyWithImpl<$Res, _$CancelAppointmentEvent>
    implements _$$CancelAppointmentEventCopyWith<$Res> {
  __$$CancelAppointmentEventCopyWithImpl(_$CancelAppointmentEvent _value,
      $Res Function(_$CancelAppointmentEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelAppointmentEvent implements CancelAppointmentEvent {
  _$CancelAppointmentEvent();

  @override
  String toString() {
    return 'AppointmentDetailEvent.cancel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelAppointmentEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancel,
    required TResult Function() complete,
    required TResult Function(AppointmentState? appointmentState)
        setAppointmentState,
    required TResult Function(String additionalInformation)
        addAdditionalInformation,
    required TResult Function() save,
    required TResult Function() reset,
  }) {
    return cancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancel,
    TResult? Function()? complete,
    TResult? Function(AppointmentState? appointmentState)? setAppointmentState,
    TResult? Function(String additionalInformation)? addAdditionalInformation,
    TResult? Function()? save,
    TResult? Function()? reset,
  }) {
    return cancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancel,
    TResult Function()? complete,
    TResult Function(AppointmentState? appointmentState)? setAppointmentState,
    TResult Function(String additionalInformation)? addAdditionalInformation,
    TResult Function()? save,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelAppointmentEvent value) cancel,
    required TResult Function(CompleteAppointmentEvent value) complete,
    required TResult Function(SetAppointmentStateEvent value)
        setAppointmentState,
    required TResult Function(AddAdditionalInformationEvent value)
        addAdditionalInformation,
    required TResult Function(SaveAppointment value) save,
    required TResult Function(ResetAppointment value) reset,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelAppointmentEvent value)? cancel,
    TResult? Function(CompleteAppointmentEvent value)? complete,
    TResult? Function(SetAppointmentStateEvent value)? setAppointmentState,
    TResult? Function(AddAdditionalInformationEvent value)?
        addAdditionalInformation,
    TResult? Function(SaveAppointment value)? save,
    TResult? Function(ResetAppointment value)? reset,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelAppointmentEvent value)? cancel,
    TResult Function(CompleteAppointmentEvent value)? complete,
    TResult Function(SetAppointmentStateEvent value)? setAppointmentState,
    TResult Function(AddAdditionalInformationEvent value)?
        addAdditionalInformation,
    TResult Function(SaveAppointment value)? save,
    TResult Function(ResetAppointment value)? reset,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class CancelAppointmentEvent implements AppointmentDetailEvent {
  factory CancelAppointmentEvent() = _$CancelAppointmentEvent;
}

/// @nodoc
abstract class _$$CompleteAppointmentEventCopyWith<$Res> {
  factory _$$CompleteAppointmentEventCopyWith(_$CompleteAppointmentEvent value,
          $Res Function(_$CompleteAppointmentEvent) then) =
      __$$CompleteAppointmentEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompleteAppointmentEventCopyWithImpl<$Res>
    extends _$AppointmentDetailEventCopyWithImpl<$Res,
        _$CompleteAppointmentEvent>
    implements _$$CompleteAppointmentEventCopyWith<$Res> {
  __$$CompleteAppointmentEventCopyWithImpl(_$CompleteAppointmentEvent _value,
      $Res Function(_$CompleteAppointmentEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompleteAppointmentEvent implements CompleteAppointmentEvent {
  _$CompleteAppointmentEvent();

  @override
  String toString() {
    return 'AppointmentDetailEvent.complete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteAppointmentEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancel,
    required TResult Function() complete,
    required TResult Function(AppointmentState? appointmentState)
        setAppointmentState,
    required TResult Function(String additionalInformation)
        addAdditionalInformation,
    required TResult Function() save,
    required TResult Function() reset,
  }) {
    return complete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancel,
    TResult? Function()? complete,
    TResult? Function(AppointmentState? appointmentState)? setAppointmentState,
    TResult? Function(String additionalInformation)? addAdditionalInformation,
    TResult? Function()? save,
    TResult? Function()? reset,
  }) {
    return complete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancel,
    TResult Function()? complete,
    TResult Function(AppointmentState? appointmentState)? setAppointmentState,
    TResult Function(String additionalInformation)? addAdditionalInformation,
    TResult Function()? save,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelAppointmentEvent value) cancel,
    required TResult Function(CompleteAppointmentEvent value) complete,
    required TResult Function(SetAppointmentStateEvent value)
        setAppointmentState,
    required TResult Function(AddAdditionalInformationEvent value)
        addAdditionalInformation,
    required TResult Function(SaveAppointment value) save,
    required TResult Function(ResetAppointment value) reset,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelAppointmentEvent value)? cancel,
    TResult? Function(CompleteAppointmentEvent value)? complete,
    TResult? Function(SetAppointmentStateEvent value)? setAppointmentState,
    TResult? Function(AddAdditionalInformationEvent value)?
        addAdditionalInformation,
    TResult? Function(SaveAppointment value)? save,
    TResult? Function(ResetAppointment value)? reset,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelAppointmentEvent value)? cancel,
    TResult Function(CompleteAppointmentEvent value)? complete,
    TResult Function(SetAppointmentStateEvent value)? setAppointmentState,
    TResult Function(AddAdditionalInformationEvent value)?
        addAdditionalInformation,
    TResult Function(SaveAppointment value)? save,
    TResult Function(ResetAppointment value)? reset,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class CompleteAppointmentEvent implements AppointmentDetailEvent {
  factory CompleteAppointmentEvent() = _$CompleteAppointmentEvent;
}

/// @nodoc
abstract class _$$SetAppointmentStateEventCopyWith<$Res> {
  factory _$$SetAppointmentStateEventCopyWith(_$SetAppointmentStateEvent value,
          $Res Function(_$SetAppointmentStateEvent) then) =
      __$$SetAppointmentStateEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AppointmentState? appointmentState});
}

/// @nodoc
class __$$SetAppointmentStateEventCopyWithImpl<$Res>
    extends _$AppointmentDetailEventCopyWithImpl<$Res,
        _$SetAppointmentStateEvent>
    implements _$$SetAppointmentStateEventCopyWith<$Res> {
  __$$SetAppointmentStateEventCopyWithImpl(_$SetAppointmentStateEvent _value,
      $Res Function(_$SetAppointmentStateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentState = freezed,
  }) {
    return _then(_$SetAppointmentStateEvent(
      freezed == appointmentState
          ? _value.appointmentState
          : appointmentState // ignore: cast_nullable_to_non_nullable
              as AppointmentState?,
    ));
  }
}

/// @nodoc

class _$SetAppointmentStateEvent implements SetAppointmentStateEvent {
  _$SetAppointmentStateEvent(this.appointmentState);

  @override
  final AppointmentState? appointmentState;

  @override
  String toString() {
    return 'AppointmentDetailEvent.setAppointmentState(appointmentState: $appointmentState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAppointmentStateEvent &&
            (identical(other.appointmentState, appointmentState) ||
                other.appointmentState == appointmentState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointmentState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAppointmentStateEventCopyWith<_$SetAppointmentStateEvent>
      get copyWith =>
          __$$SetAppointmentStateEventCopyWithImpl<_$SetAppointmentStateEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancel,
    required TResult Function() complete,
    required TResult Function(AppointmentState? appointmentState)
        setAppointmentState,
    required TResult Function(String additionalInformation)
        addAdditionalInformation,
    required TResult Function() save,
    required TResult Function() reset,
  }) {
    return setAppointmentState(appointmentState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancel,
    TResult? Function()? complete,
    TResult? Function(AppointmentState? appointmentState)? setAppointmentState,
    TResult? Function(String additionalInformation)? addAdditionalInformation,
    TResult? Function()? save,
    TResult? Function()? reset,
  }) {
    return setAppointmentState?.call(appointmentState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancel,
    TResult Function()? complete,
    TResult Function(AppointmentState? appointmentState)? setAppointmentState,
    TResult Function(String additionalInformation)? addAdditionalInformation,
    TResult Function()? save,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (setAppointmentState != null) {
      return setAppointmentState(appointmentState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelAppointmentEvent value) cancel,
    required TResult Function(CompleteAppointmentEvent value) complete,
    required TResult Function(SetAppointmentStateEvent value)
        setAppointmentState,
    required TResult Function(AddAdditionalInformationEvent value)
        addAdditionalInformation,
    required TResult Function(SaveAppointment value) save,
    required TResult Function(ResetAppointment value) reset,
  }) {
    return setAppointmentState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelAppointmentEvent value)? cancel,
    TResult? Function(CompleteAppointmentEvent value)? complete,
    TResult? Function(SetAppointmentStateEvent value)? setAppointmentState,
    TResult? Function(AddAdditionalInformationEvent value)?
        addAdditionalInformation,
    TResult? Function(SaveAppointment value)? save,
    TResult? Function(ResetAppointment value)? reset,
  }) {
    return setAppointmentState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelAppointmentEvent value)? cancel,
    TResult Function(CompleteAppointmentEvent value)? complete,
    TResult Function(SetAppointmentStateEvent value)? setAppointmentState,
    TResult Function(AddAdditionalInformationEvent value)?
        addAdditionalInformation,
    TResult Function(SaveAppointment value)? save,
    TResult Function(ResetAppointment value)? reset,
    required TResult orElse(),
  }) {
    if (setAppointmentState != null) {
      return setAppointmentState(this);
    }
    return orElse();
  }
}

abstract class SetAppointmentStateEvent implements AppointmentDetailEvent {
  factory SetAppointmentStateEvent(final AppointmentState? appointmentState) =
      _$SetAppointmentStateEvent;

  AppointmentState? get appointmentState;
  @JsonKey(ignore: true)
  _$$SetAppointmentStateEventCopyWith<_$SetAppointmentStateEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddAdditionalInformationEventCopyWith<$Res> {
  factory _$$AddAdditionalInformationEventCopyWith(
          _$AddAdditionalInformationEvent value,
          $Res Function(_$AddAdditionalInformationEvent) then) =
      __$$AddAdditionalInformationEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String additionalInformation});
}

/// @nodoc
class __$$AddAdditionalInformationEventCopyWithImpl<$Res>
    extends _$AppointmentDetailEventCopyWithImpl<$Res,
        _$AddAdditionalInformationEvent>
    implements _$$AddAdditionalInformationEventCopyWith<$Res> {
  __$$AddAdditionalInformationEventCopyWithImpl(
      _$AddAdditionalInformationEvent _value,
      $Res Function(_$AddAdditionalInformationEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? additionalInformation = null,
  }) {
    return _then(_$AddAdditionalInformationEvent(
      null == additionalInformation
          ? _value.additionalInformation
          : additionalInformation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddAdditionalInformationEvent implements AddAdditionalInformationEvent {
  _$AddAdditionalInformationEvent(this.additionalInformation);

  @override
  final String additionalInformation;

  @override
  String toString() {
    return 'AppointmentDetailEvent.addAdditionalInformation(additionalInformation: $additionalInformation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAdditionalInformationEvent &&
            (identical(other.additionalInformation, additionalInformation) ||
                other.additionalInformation == additionalInformation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, additionalInformation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAdditionalInformationEventCopyWith<_$AddAdditionalInformationEvent>
      get copyWith => __$$AddAdditionalInformationEventCopyWithImpl<
          _$AddAdditionalInformationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancel,
    required TResult Function() complete,
    required TResult Function(AppointmentState? appointmentState)
        setAppointmentState,
    required TResult Function(String additionalInformation)
        addAdditionalInformation,
    required TResult Function() save,
    required TResult Function() reset,
  }) {
    return addAdditionalInformation(additionalInformation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancel,
    TResult? Function()? complete,
    TResult? Function(AppointmentState? appointmentState)? setAppointmentState,
    TResult? Function(String additionalInformation)? addAdditionalInformation,
    TResult? Function()? save,
    TResult? Function()? reset,
  }) {
    return addAdditionalInformation?.call(additionalInformation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancel,
    TResult Function()? complete,
    TResult Function(AppointmentState? appointmentState)? setAppointmentState,
    TResult Function(String additionalInformation)? addAdditionalInformation,
    TResult Function()? save,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (addAdditionalInformation != null) {
      return addAdditionalInformation(additionalInformation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelAppointmentEvent value) cancel,
    required TResult Function(CompleteAppointmentEvent value) complete,
    required TResult Function(SetAppointmentStateEvent value)
        setAppointmentState,
    required TResult Function(AddAdditionalInformationEvent value)
        addAdditionalInformation,
    required TResult Function(SaveAppointment value) save,
    required TResult Function(ResetAppointment value) reset,
  }) {
    return addAdditionalInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelAppointmentEvent value)? cancel,
    TResult? Function(CompleteAppointmentEvent value)? complete,
    TResult? Function(SetAppointmentStateEvent value)? setAppointmentState,
    TResult? Function(AddAdditionalInformationEvent value)?
        addAdditionalInformation,
    TResult? Function(SaveAppointment value)? save,
    TResult? Function(ResetAppointment value)? reset,
  }) {
    return addAdditionalInformation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelAppointmentEvent value)? cancel,
    TResult Function(CompleteAppointmentEvent value)? complete,
    TResult Function(SetAppointmentStateEvent value)? setAppointmentState,
    TResult Function(AddAdditionalInformationEvent value)?
        addAdditionalInformation,
    TResult Function(SaveAppointment value)? save,
    TResult Function(ResetAppointment value)? reset,
    required TResult orElse(),
  }) {
    if (addAdditionalInformation != null) {
      return addAdditionalInformation(this);
    }
    return orElse();
  }
}

abstract class AddAdditionalInformationEvent implements AppointmentDetailEvent {
  factory AddAdditionalInformationEvent(final String additionalInformation) =
      _$AddAdditionalInformationEvent;

  String get additionalInformation;
  @JsonKey(ignore: true)
  _$$AddAdditionalInformationEventCopyWith<_$AddAdditionalInformationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveAppointmentCopyWith<$Res> {
  factory _$$SaveAppointmentCopyWith(
          _$SaveAppointment value, $Res Function(_$SaveAppointment) then) =
      __$$SaveAppointmentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveAppointmentCopyWithImpl<$Res>
    extends _$AppointmentDetailEventCopyWithImpl<$Res, _$SaveAppointment>
    implements _$$SaveAppointmentCopyWith<$Res> {
  __$$SaveAppointmentCopyWithImpl(
      _$SaveAppointment _value, $Res Function(_$SaveAppointment) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveAppointment implements SaveAppointment {
  _$SaveAppointment();

  @override
  String toString() {
    return 'AppointmentDetailEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveAppointment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancel,
    required TResult Function() complete,
    required TResult Function(AppointmentState? appointmentState)
        setAppointmentState,
    required TResult Function(String additionalInformation)
        addAdditionalInformation,
    required TResult Function() save,
    required TResult Function() reset,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancel,
    TResult? Function()? complete,
    TResult? Function(AppointmentState? appointmentState)? setAppointmentState,
    TResult? Function(String additionalInformation)? addAdditionalInformation,
    TResult? Function()? save,
    TResult? Function()? reset,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancel,
    TResult Function()? complete,
    TResult Function(AppointmentState? appointmentState)? setAppointmentState,
    TResult Function(String additionalInformation)? addAdditionalInformation,
    TResult Function()? save,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelAppointmentEvent value) cancel,
    required TResult Function(CompleteAppointmentEvent value) complete,
    required TResult Function(SetAppointmentStateEvent value)
        setAppointmentState,
    required TResult Function(AddAdditionalInformationEvent value)
        addAdditionalInformation,
    required TResult Function(SaveAppointment value) save,
    required TResult Function(ResetAppointment value) reset,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelAppointmentEvent value)? cancel,
    TResult? Function(CompleteAppointmentEvent value)? complete,
    TResult? Function(SetAppointmentStateEvent value)? setAppointmentState,
    TResult? Function(AddAdditionalInformationEvent value)?
        addAdditionalInformation,
    TResult? Function(SaveAppointment value)? save,
    TResult? Function(ResetAppointment value)? reset,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelAppointmentEvent value)? cancel,
    TResult Function(CompleteAppointmentEvent value)? complete,
    TResult Function(SetAppointmentStateEvent value)? setAppointmentState,
    TResult Function(AddAdditionalInformationEvent value)?
        addAdditionalInformation,
    TResult Function(SaveAppointment value)? save,
    TResult Function(ResetAppointment value)? reset,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class SaveAppointment implements AppointmentDetailEvent {
  factory SaveAppointment() = _$SaveAppointment;
}

/// @nodoc
abstract class _$$ResetAppointmentCopyWith<$Res> {
  factory _$$ResetAppointmentCopyWith(
          _$ResetAppointment value, $Res Function(_$ResetAppointment) then) =
      __$$ResetAppointmentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetAppointmentCopyWithImpl<$Res>
    extends _$AppointmentDetailEventCopyWithImpl<$Res, _$ResetAppointment>
    implements _$$ResetAppointmentCopyWith<$Res> {
  __$$ResetAppointmentCopyWithImpl(
      _$ResetAppointment _value, $Res Function(_$ResetAppointment) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetAppointment implements ResetAppointment {
  _$ResetAppointment();

  @override
  String toString() {
    return 'AppointmentDetailEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetAppointment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancel,
    required TResult Function() complete,
    required TResult Function(AppointmentState? appointmentState)
        setAppointmentState,
    required TResult Function(String additionalInformation)
        addAdditionalInformation,
    required TResult Function() save,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancel,
    TResult? Function()? complete,
    TResult? Function(AppointmentState? appointmentState)? setAppointmentState,
    TResult? Function(String additionalInformation)? addAdditionalInformation,
    TResult? Function()? save,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancel,
    TResult Function()? complete,
    TResult Function(AppointmentState? appointmentState)? setAppointmentState,
    TResult Function(String additionalInformation)? addAdditionalInformation,
    TResult Function()? save,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelAppointmentEvent value) cancel,
    required TResult Function(CompleteAppointmentEvent value) complete,
    required TResult Function(SetAppointmentStateEvent value)
        setAppointmentState,
    required TResult Function(AddAdditionalInformationEvent value)
        addAdditionalInformation,
    required TResult Function(SaveAppointment value) save,
    required TResult Function(ResetAppointment value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelAppointmentEvent value)? cancel,
    TResult? Function(CompleteAppointmentEvent value)? complete,
    TResult? Function(SetAppointmentStateEvent value)? setAppointmentState,
    TResult? Function(AddAdditionalInformationEvent value)?
        addAdditionalInformation,
    TResult? Function(SaveAppointment value)? save,
    TResult? Function(ResetAppointment value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelAppointmentEvent value)? cancel,
    TResult Function(CompleteAppointmentEvent value)? complete,
    TResult Function(SetAppointmentStateEvent value)? setAppointmentState,
    TResult Function(AddAdditionalInformationEvent value)?
        addAdditionalInformation,
    TResult Function(SaveAppointment value)? save,
    TResult Function(ResetAppointment value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class ResetAppointment implements AppointmentDetailEvent {
  factory ResetAppointment() = _$ResetAppointment;
}
