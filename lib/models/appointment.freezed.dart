// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return _Appointment.fromJson(json);
}

/// @nodoc
mixin _$Appointment {
  DateTime get date => throw _privateConstructorUsedError;
  Company get company => throw _privateConstructorUsedError;
  AppointmentState get appointmentState => throw _privateConstructorUsedError;
  int? get durationMinutes => throw _privateConstructorUsedError;
  String? get additionalComment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentCopyWith<Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) then) =
      _$AppointmentCopyWithImpl<$Res, Appointment>;
  @useResult
  $Res call(
      {DateTime date,
      Company company,
      AppointmentState appointmentState,
      int? durationMinutes,
      String? additionalComment});

  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res, $Val extends Appointment>
    implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? company = null,
    Object? appointmentState = null,
    Object? durationMinutes = freezed,
    Object? additionalComment = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
      appointmentState: null == appointmentState
          ? _value.appointmentState
          : appointmentState // ignore: cast_nullable_to_non_nullable
              as AppointmentState,
      durationMinutes: freezed == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalComment: freezed == additionalComment
          ? _value.additionalComment
          : additionalComment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res> get company {
    return $CompanyCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppointmentCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$$_AppointmentCopyWith(
          _$_Appointment value, $Res Function(_$_Appointment) then) =
      __$$_AppointmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      Company company,
      AppointmentState appointmentState,
      int? durationMinutes,
      String? additionalComment});

  @override
  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class __$$_AppointmentCopyWithImpl<$Res>
    extends _$AppointmentCopyWithImpl<$Res, _$_Appointment>
    implements _$$_AppointmentCopyWith<$Res> {
  __$$_AppointmentCopyWithImpl(
      _$_Appointment _value, $Res Function(_$_Appointment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? company = null,
    Object? appointmentState = null,
    Object? durationMinutes = freezed,
    Object? additionalComment = freezed,
  }) {
    return _then(_$_Appointment(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
      appointmentState: null == appointmentState
          ? _value.appointmentState
          : appointmentState // ignore: cast_nullable_to_non_nullable
              as AppointmentState,
      durationMinutes: freezed == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalComment: freezed == additionalComment
          ? _value.additionalComment
          : additionalComment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Appointment implements _Appointment {
  _$_Appointment(
      {required this.date,
      required this.company,
      this.appointmentState = AppointmentState.none,
      this.durationMinutes,
      this.additionalComment});

  factory _$_Appointment.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentFromJson(json);

  @override
  final DateTime date;
  @override
  final Company company;
  @override
  @JsonKey()
  final AppointmentState appointmentState;
  @override
  final int? durationMinutes;
  @override
  final String? additionalComment;

  @override
  String toString() {
    return 'Appointment(date: $date, company: $company, appointmentState: $appointmentState, durationMinutes: $durationMinutes, additionalComment: $additionalComment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Appointment &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.appointmentState, appointmentState) ||
                other.appointmentState == appointmentState) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.additionalComment, additionalComment) ||
                other.additionalComment == additionalComment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, company, appointmentState,
      durationMinutes, additionalComment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppointmentCopyWith<_$_Appointment> get copyWith =>
      __$$_AppointmentCopyWithImpl<_$_Appointment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentToJson(
      this,
    );
  }
}

abstract class _Appointment implements Appointment {
  factory _Appointment(
      {required final DateTime date,
      required final Company company,
      final AppointmentState appointmentState,
      final int? durationMinutes,
      final String? additionalComment}) = _$_Appointment;

  factory _Appointment.fromJson(Map<String, dynamic> json) =
      _$_Appointment.fromJson;

  @override
  DateTime get date;
  @override
  Company get company;
  @override
  AppointmentState get appointmentState;
  @override
  int? get durationMinutes;
  @override
  String? get additionalComment;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentCopyWith<_$_Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}
