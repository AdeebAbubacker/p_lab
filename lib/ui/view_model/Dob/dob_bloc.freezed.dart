// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dob_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DobEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) selectDateEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? selectDateEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? selectDateEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectDateEvent value) selectDateEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectDateEvent value)? selectDateEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectDateEvent value)? selectDateEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DobEventCopyWith<DobEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DobEventCopyWith<$Res> {
  factory $DobEventCopyWith(DobEvent value, $Res Function(DobEvent) then) =
      _$DobEventCopyWithImpl<$Res, DobEvent>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class _$DobEventCopyWithImpl<$Res, $Val extends DobEvent>
    implements $DobEventCopyWith<$Res> {
  _$DobEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectDateEventImplCopyWith<$Res>
    implements $DobEventCopyWith<$Res> {
  factory _$$SelectDateEventImplCopyWith(_$SelectDateEventImpl value,
          $Res Function(_$SelectDateEventImpl) then) =
      __$$SelectDateEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$SelectDateEventImplCopyWithImpl<$Res>
    extends _$DobEventCopyWithImpl<$Res, _$SelectDateEventImpl>
    implements _$$SelectDateEventImplCopyWith<$Res> {
  __$$SelectDateEventImplCopyWithImpl(
      _$SelectDateEventImpl _value, $Res Function(_$SelectDateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$SelectDateEventImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$SelectDateEventImpl implements SelectDateEvent {
  const _$SelectDateEventImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DobEvent.selectDateEvent(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDateEventImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDateEventImplCopyWith<_$SelectDateEventImpl> get copyWith =>
      __$$SelectDateEventImplCopyWithImpl<_$SelectDateEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) selectDateEvent,
  }) {
    return selectDateEvent(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? selectDateEvent,
  }) {
    return selectDateEvent?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? selectDateEvent,
    required TResult orElse(),
  }) {
    if (selectDateEvent != null) {
      return selectDateEvent(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectDateEvent value) selectDateEvent,
  }) {
    return selectDateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectDateEvent value)? selectDateEvent,
  }) {
    return selectDateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectDateEvent value)? selectDateEvent,
    required TResult orElse(),
  }) {
    if (selectDateEvent != null) {
      return selectDateEvent(this);
    }
    return orElse();
  }
}

abstract class SelectDateEvent implements DobEvent {
  const factory SelectDateEvent({required final BuildContext context}) =
      _$SelectDateEventImpl;

  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$SelectDateEventImplCopyWith<_$SelectDateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DobState {
  DateTime get selectedDate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate) dobSelectedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate)? dobSelectedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? dobSelectedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DOBSelectedState value) dobSelectedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DOBSelectedState value)? dobSelectedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DOBSelectedState value)? dobSelectedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DobStateCopyWith<DobState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DobStateCopyWith<$Res> {
  factory $DobStateCopyWith(DobState value, $Res Function(DobState) then) =
      _$DobStateCopyWithImpl<$Res, DobState>;
  @useResult
  $Res call({DateTime selectedDate});
}

/// @nodoc
class _$DobStateCopyWithImpl<$Res, $Val extends DobState>
    implements $DobStateCopyWith<$Res> {
  _$DobStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
  }) {
    return _then(_value.copyWith(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DOBSelectedStateImplCopyWith<$Res>
    implements $DobStateCopyWith<$Res> {
  factory _$$DOBSelectedStateImplCopyWith(_$DOBSelectedStateImpl value,
          $Res Function(_$DOBSelectedStateImpl) then) =
      __$$DOBSelectedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime selectedDate});
}

/// @nodoc
class __$$DOBSelectedStateImplCopyWithImpl<$Res>
    extends _$DobStateCopyWithImpl<$Res, _$DOBSelectedStateImpl>
    implements _$$DOBSelectedStateImplCopyWith<$Res> {
  __$$DOBSelectedStateImplCopyWithImpl(_$DOBSelectedStateImpl _value,
      $Res Function(_$DOBSelectedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
  }) {
    return _then(_$DOBSelectedStateImpl(
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DOBSelectedStateImpl implements DOBSelectedState {
  const _$DOBSelectedStateImpl({required this.selectedDate});

  @override
  final DateTime selectedDate;

  @override
  String toString() {
    return 'DobState.dobSelectedState(selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DOBSelectedStateImpl &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DOBSelectedStateImplCopyWith<_$DOBSelectedStateImpl> get copyWith =>
      __$$DOBSelectedStateImplCopyWithImpl<_$DOBSelectedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate) dobSelectedState,
  }) {
    return dobSelectedState(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime selectedDate)? dobSelectedState,
  }) {
    return dobSelectedState?.call(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? dobSelectedState,
    required TResult orElse(),
  }) {
    if (dobSelectedState != null) {
      return dobSelectedState(selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DOBSelectedState value) dobSelectedState,
  }) {
    return dobSelectedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DOBSelectedState value)? dobSelectedState,
  }) {
    return dobSelectedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DOBSelectedState value)? dobSelectedState,
    required TResult orElse(),
  }) {
    if (dobSelectedState != null) {
      return dobSelectedState(this);
    }
    return orElse();
  }
}

abstract class DOBSelectedState implements DobState {
  const factory DOBSelectedState({required final DateTime selectedDate}) =
      _$DOBSelectedStateImpl;

  @override
  DateTime get selectedDate;
  @override
  @JsonKey(ignore: true)
  _$$DOBSelectedStateImplCopyWith<_$DOBSelectedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
