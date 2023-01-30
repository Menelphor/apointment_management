// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointments_overview_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppointmentsOverviewState {
  List<Appointment> get appointments => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  AppointmentsOverviewStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppointmentsOverviewStateCopyWith<AppointmentsOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentsOverviewStateCopyWith<$Res> {
  factory $AppointmentsOverviewStateCopyWith(AppointmentsOverviewState value,
          $Res Function(AppointmentsOverviewState) then) =
      _$AppointmentsOverviewStateCopyWithImpl<$Res, AppointmentsOverviewState>;
  @useResult
  $Res call(
      {List<Appointment> appointments,
      bool hasReachedMax,
      AppointmentsOverviewStatus status});
}

/// @nodoc
class _$AppointmentsOverviewStateCopyWithImpl<$Res,
        $Val extends AppointmentsOverviewState>
    implements $AppointmentsOverviewStateCopyWith<$Res> {
  _$AppointmentsOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointments = null,
    Object? hasReachedMax = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      appointments: null == appointments
          ? _value.appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppointmentsOverviewStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppointmentsOverviewStateCopyWith<$Res>
    implements $AppointmentsOverviewStateCopyWith<$Res> {
  factory _$$_AppointmentsOverviewStateCopyWith(
          _$_AppointmentsOverviewState value,
          $Res Function(_$_AppointmentsOverviewState) then) =
      __$$_AppointmentsOverviewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Appointment> appointments,
      bool hasReachedMax,
      AppointmentsOverviewStatus status});
}

/// @nodoc
class __$$_AppointmentsOverviewStateCopyWithImpl<$Res>
    extends _$AppointmentsOverviewStateCopyWithImpl<$Res,
        _$_AppointmentsOverviewState>
    implements _$$_AppointmentsOverviewStateCopyWith<$Res> {
  __$$_AppointmentsOverviewStateCopyWithImpl(
      _$_AppointmentsOverviewState _value,
      $Res Function(_$_AppointmentsOverviewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointments = null,
    Object? hasReachedMax = null,
    Object? status = null,
  }) {
    return _then(_$_AppointmentsOverviewState(
      appointments: null == appointments
          ? _value._appointments
          : appointments // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppointmentsOverviewStatus,
    ));
  }
}

/// @nodoc

class _$_AppointmentsOverviewState implements _AppointmentsOverviewState {
  _$_AppointmentsOverviewState(
      {final List<Appointment> appointments = const [],
      this.hasReachedMax = false,
      required this.status})
      : _appointments = appointments;

  final List<Appointment> _appointments;
  @override
  @JsonKey()
  List<Appointment> get appointments {
    if (_appointments is EqualUnmodifiableListView) return _appointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appointments);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  final AppointmentsOverviewStatus status;

  @override
  String toString() {
    return 'AppointmentsOverviewState(appointments: $appointments, hasReachedMax: $hasReachedMax, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppointmentsOverviewState &&
            const DeepCollectionEquality()
                .equals(other._appointments, _appointments) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_appointments),
      hasReachedMax,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppointmentsOverviewStateCopyWith<_$_AppointmentsOverviewState>
      get copyWith => __$$_AppointmentsOverviewStateCopyWithImpl<
          _$_AppointmentsOverviewState>(this, _$identity);
}

abstract class _AppointmentsOverviewState implements AppointmentsOverviewState {
  factory _AppointmentsOverviewState(
          {final List<Appointment> appointments,
          final bool hasReachedMax,
          required final AppointmentsOverviewStatus status}) =
      _$_AppointmentsOverviewState;

  @override
  List<Appointment> get appointments;
  @override
  bool get hasReachedMax;
  @override
  AppointmentsOverviewStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentsOverviewStateCopyWith<_$_AppointmentsOverviewState>
      get copyWith => throw _privateConstructorUsedError;
}
