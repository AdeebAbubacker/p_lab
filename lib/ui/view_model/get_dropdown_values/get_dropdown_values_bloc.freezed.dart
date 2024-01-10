// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_dropdown_values_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetDropdownValuesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDropDownValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDropDownValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDropDownValues,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDropDownValues value) getDropDownValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDropDownValues value)? getDropDownValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDropDownValues value)? getDropDownValues,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDropdownValuesEventCopyWith<$Res> {
  factory $GetDropdownValuesEventCopyWith(GetDropdownValuesEvent value,
          $Res Function(GetDropdownValuesEvent) then) =
      _$GetDropdownValuesEventCopyWithImpl<$Res, GetDropdownValuesEvent>;
}

/// @nodoc
class _$GetDropdownValuesEventCopyWithImpl<$Res,
        $Val extends GetDropdownValuesEvent>
    implements $GetDropdownValuesEventCopyWith<$Res> {
  _$GetDropdownValuesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDropDownValuesImplCopyWith<$Res> {
  factory _$$GetDropDownValuesImplCopyWith(_$GetDropDownValuesImpl value,
          $Res Function(_$GetDropDownValuesImpl) then) =
      __$$GetDropDownValuesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDropDownValuesImplCopyWithImpl<$Res>
    extends _$GetDropdownValuesEventCopyWithImpl<$Res, _$GetDropDownValuesImpl>
    implements _$$GetDropDownValuesImplCopyWith<$Res> {
  __$$GetDropDownValuesImplCopyWithImpl(_$GetDropDownValuesImpl _value,
      $Res Function(_$GetDropDownValuesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDropDownValuesImpl implements GetDropDownValues {
  const _$GetDropDownValuesImpl();

  @override
  String toString() {
    return 'GetDropdownValuesEvent.getDropDownValues()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDropDownValuesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDropDownValues,
  }) {
    return getDropDownValues();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDropDownValues,
  }) {
    return getDropDownValues?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDropDownValues,
    required TResult orElse(),
  }) {
    if (getDropDownValues != null) {
      return getDropDownValues();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDropDownValues value) getDropDownValues,
  }) {
    return getDropDownValues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDropDownValues value)? getDropDownValues,
  }) {
    return getDropDownValues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDropDownValues value)? getDropDownValues,
    required TResult orElse(),
  }) {
    if (getDropDownValues != null) {
      return getDropDownValues(this);
    }
    return orElse();
  }
}

abstract class GetDropDownValues implements GetDropdownValuesEvent {
  const factory GetDropDownValues() = _$GetDropDownValuesImpl;
}

/// @nodoc
mixin _$GetDropdownValuesState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  DropDownValues get dropDownValue => throw _privateConstructorUsedError;
  Option<Either<MainFailure, DropDownValues>> get successorFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetDropdownValuesStateCopyWith<GetDropdownValuesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDropdownValuesStateCopyWith<$Res> {
  factory $GetDropdownValuesStateCopyWith(GetDropdownValuesState value,
          $Res Function(GetDropdownValuesState) then) =
      _$GetDropdownValuesStateCopyWithImpl<$Res, GetDropdownValuesState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      DropDownValues dropDownValue,
      Option<Either<MainFailure, DropDownValues>> successorFailure});
}

/// @nodoc
class _$GetDropdownValuesStateCopyWithImpl<$Res,
        $Val extends GetDropdownValuesState>
    implements $GetDropdownValuesStateCopyWith<$Res> {
  _$GetDropdownValuesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? dropDownValue = null,
    Object? successorFailure = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      dropDownValue: null == dropDownValue
          ? _value.dropDownValue
          : dropDownValue // ignore: cast_nullable_to_non_nullable
              as DropDownValues,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, DropDownValues>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDropdownValuesStateImplCopyWith<$Res>
    implements $GetDropdownValuesStateCopyWith<$Res> {
  factory _$$GetDropdownValuesStateImplCopyWith(
          _$GetDropdownValuesStateImpl value,
          $Res Function(_$GetDropdownValuesStateImpl) then) =
      __$$GetDropdownValuesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      DropDownValues dropDownValue,
      Option<Either<MainFailure, DropDownValues>> successorFailure});
}

/// @nodoc
class __$$GetDropdownValuesStateImplCopyWithImpl<$Res>
    extends _$GetDropdownValuesStateCopyWithImpl<$Res,
        _$GetDropdownValuesStateImpl>
    implements _$$GetDropdownValuesStateImplCopyWith<$Res> {
  __$$GetDropdownValuesStateImplCopyWithImpl(
      _$GetDropdownValuesStateImpl _value,
      $Res Function(_$GetDropdownValuesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? dropDownValue = null,
    Object? successorFailure = null,
  }) {
    return _then(_$GetDropdownValuesStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      dropDownValue: null == dropDownValue
          ? _value.dropDownValue
          : dropDownValue // ignore: cast_nullable_to_non_nullable
              as DropDownValues,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, DropDownValues>>,
    ));
  }
}

/// @nodoc

class _$GetDropdownValuesStateImpl implements _GetDropdownValuesState {
  const _$GetDropdownValuesStateImpl(
      {required this.isLoading,
      required this.isError,
      required this.dropDownValue,
      required this.successorFailure});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final DropDownValues dropDownValue;
  @override
  final Option<Either<MainFailure, DropDownValues>> successorFailure;

  @override
  String toString() {
    return 'GetDropdownValuesState(isLoading: $isLoading, isError: $isError, dropDownValue: $dropDownValue, successorFailure: $successorFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDropdownValuesStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.dropDownValue, dropDownValue) ||
                other.dropDownValue == dropDownValue) &&
            (identical(other.successorFailure, successorFailure) ||
                other.successorFailure == successorFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isError, dropDownValue, successorFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDropdownValuesStateImplCopyWith<_$GetDropdownValuesStateImpl>
      get copyWith => __$$GetDropdownValuesStateImplCopyWithImpl<
          _$GetDropdownValuesStateImpl>(this, _$identity);
}

abstract class _GetDropdownValuesState implements GetDropdownValuesState {
  const factory _GetDropdownValuesState(
      {required final bool isLoading,
      required final bool isError,
      required final DropDownValues dropDownValue,
      required final Option<Either<MainFailure, DropDownValues>>
          successorFailure}) = _$GetDropdownValuesStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  DropDownValues get dropDownValue;
  @override
  Option<Either<MainFailure, DropDownValues>> get successorFailure;
  @override
  @JsonKey(ignore: true)
  _$$GetDropdownValuesStateImplCopyWith<_$GetDropdownValuesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
