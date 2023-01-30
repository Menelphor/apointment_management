// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppointmentDetailState {
  AppointmentDetailViewStatus get status => throw _privateConstructorUsedError;
  SavingStatus get savingStatus => throw _privateConstructorUsedError;
  AppointmentState? get appointmentState => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppointmentDetailStateCopyWith<AppointmentDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDetailStateCopyWith<$Res> {
  factory $AppointmentDetailStateCopyWith(AppointmentDetailState value,
          $Res Function(AppointmentDetailState) then) =
      _$AppointmentDetailStateCopyWithImpl<$Res, AppointmentDetailState>;
  @useResult
  $Res call(
      {AppointmentDetailViewStatus status,
      SavingStatus savingStatus,
      AppointmentState? appointmentState,
      String? comment});
}

/// @nodoc
class _$AppointmentDetailStateCopyWithImpl<$Res,
        $Val extends AppointmentDetailState>
    implements $AppointmentDetailStateCopyWith<$Res> {
  _$AppointmentDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? savingStatus = null,
    Object? appointmentState = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppointmentDetailViewStatus,
      savingStatus: null == savingStatus
          ? _value.savingStatus
          : savingStatus // ignore: cast_nullable_to_non_nullable
              as SavingStatus,
      appointmentState: freezed == appointmentState
          ? _value.appointmentState
          : appointmentState // ignore: cast_nullable_to_non_nullable
              as AppointmentState?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppointmentDetailStateCopyWith<$Res>
    implements $AppointmentDetailStateCopyWith<$Res> {
  factory _$$_AppointmentDetailStateCopyWith(_$_AppointmentDetailState value,
          $Res Function(_$_AppointmentDetailState) then) =
      __$$_AppointmentDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppointmentDetailViewStatus status,
      SavingStatus savingStatus,
      AppointmentState? appointmentState,
      String? comment});
}

/// @nodoc
class __$$_AppointmentDetailStateCopyWithImpl<$Res>
    extends _$AppointmentDetailStateCopyWithImpl<$Res,
        _$_AppointmentDetailState>
    implements _$$_AppointmentDetailStateCopyWith<$Res> {
  __$$_AppointmentDetailStateCopyWithImpl(_$_AppointmentDetailState _value,
      $Res Function(_$_AppointmentDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? savingStatus = null,
    Object? appointmentState = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$_AppointmentDetailState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppointmentDetailViewStatus,
      savingStatus: null == savingStatus
          ? _value.savingStatus
          : savingStatus // ignore: cast_nullable_to_non_nullable
              as SavingStatus,
      appointmentState: freezed == appointmentState
          ? _value.appointmentState
          : appointmentState // ignore: cast_nullable_to_non_nullable
              as AppointmentState?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AppointmentDetailState implements _AppointmentDetailState {
  _$_AppointmentDetailState(
      {this.status = AppointmentDetailViewStatus.initial,
      this.savingStatus = SavingStatus.none,
      this.appointmentState,
      this.comment});

  @override
  @JsonKey()
  final AppointmentDetailViewStatus status;
  @override
  @JsonKey()
  final SavingStatus savingStatus;
  @override
  final AppointmentState? appointmentState;
  @override
  final String? comment;

  @override
  String toString() {
    return 'AppointmentDetailState(status: $status, savingStatus: $savingStatus, appointmentState: $appointmentState, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppointmentDetailState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.savingStatus, savingStatus) ||
                other.savingStatus == savingStatus) &&
            (identical(other.appointmentState, appointmentState) ||
                other.appointmentState == appointmentState) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, savingStatus, appointmentState, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppointmentDetailStateCopyWith<_$_AppointmentDetailState> get copyWith =>
      __$$_AppointmentDetailStateCopyWithImpl<_$_AppointmentDetailState>(
          this, _$identity);
}

abstract class _AppointmentDetailState implements AppointmentDetailState {
  factory _AppointmentDetailState(
      {final AppointmentDetailViewStatus status,
      final SavingStatus savingStatus,
      final AppointmentState? appointmentState,
      final String? comment}) = _$_AppointmentDetailState;

  @override
  AppointmentDetailViewStatus get status;
  @override
  SavingStatus get savingStatus;
  @override
  AppointmentState? get appointmentState;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentDetailStateCopyWith<_$_AppointmentDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
