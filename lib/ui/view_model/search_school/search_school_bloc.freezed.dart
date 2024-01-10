// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_school_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchSchoolEvent {
  String? get schoolQuery => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? schoolQuery) getSchool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? schoolQuery)? getSchool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? schoolQuery)? getSchool,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSchool value) getSchool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSchool value)? getSchool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSchool value)? getSchool,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchSchoolEventCopyWith<SearchSchoolEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSchoolEventCopyWith<$Res> {
  factory $SearchSchoolEventCopyWith(
          SearchSchoolEvent value, $Res Function(SearchSchoolEvent) then) =
      _$SearchSchoolEventCopyWithImpl<$Res, SearchSchoolEvent>;
  @useResult
  $Res call({String? schoolQuery});
}

/// @nodoc
class _$SearchSchoolEventCopyWithImpl<$Res, $Val extends SearchSchoolEvent>
    implements $SearchSchoolEventCopyWith<$Res> {
  _$SearchSchoolEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolQuery = freezed,
  }) {
    return _then(_value.copyWith(
      schoolQuery: freezed == schoolQuery
          ? _value.schoolQuery
          : schoolQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSchoolImplCopyWith<$Res>
    implements $SearchSchoolEventCopyWith<$Res> {
  factory _$$GetSchoolImplCopyWith(
          _$GetSchoolImpl value, $Res Function(_$GetSchoolImpl) then) =
      __$$GetSchoolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? schoolQuery});
}

/// @nodoc
class __$$GetSchoolImplCopyWithImpl<$Res>
    extends _$SearchSchoolEventCopyWithImpl<$Res, _$GetSchoolImpl>
    implements _$$GetSchoolImplCopyWith<$Res> {
  __$$GetSchoolImplCopyWithImpl(
      _$GetSchoolImpl _value, $Res Function(_$GetSchoolImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolQuery = freezed,
  }) {
    return _then(_$GetSchoolImpl(
      schoolQuery: freezed == schoolQuery
          ? _value.schoolQuery
          : schoolQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetSchoolImpl implements GetSchool {
  const _$GetSchoolImpl({this.schoolQuery});

  @override
  final String? schoolQuery;

  @override
  String toString() {
    return 'SearchSchoolEvent.getSchool(schoolQuery: $schoolQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSchoolImpl &&
            (identical(other.schoolQuery, schoolQuery) ||
                other.schoolQuery == schoolQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schoolQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSchoolImplCopyWith<_$GetSchoolImpl> get copyWith =>
      __$$GetSchoolImplCopyWithImpl<_$GetSchoolImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? schoolQuery) getSchool,
  }) {
    return getSchool(schoolQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? schoolQuery)? getSchool,
  }) {
    return getSchool?.call(schoolQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? schoolQuery)? getSchool,
    required TResult orElse(),
  }) {
    if (getSchool != null) {
      return getSchool(schoolQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSchool value) getSchool,
  }) {
    return getSchool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSchool value)? getSchool,
  }) {
    return getSchool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSchool value)? getSchool,
    required TResult orElse(),
  }) {
    if (getSchool != null) {
      return getSchool(this);
    }
    return orElse();
  }
}

abstract class GetSchool implements SearchSchoolEvent {
  const factory GetSchool({final String? schoolQuery}) = _$GetSchoolImpl;

  @override
  String? get schoolQuery;
  @override
  @JsonKey(ignore: true)
  _$$GetSchoolImplCopyWith<_$GetSchoolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchSchoolState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  SearchSchool get school => throw _privateConstructorUsedError;
  Option<Either<MainFailure, SearchSchool>> get successorFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchSchoolStateCopyWith<SearchSchoolState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSchoolStateCopyWith<$Res> {
  factory $SearchSchoolStateCopyWith(
          SearchSchoolState value, $Res Function(SearchSchoolState) then) =
      _$SearchSchoolStateCopyWithImpl<$Res, SearchSchoolState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      SearchSchool school,
      Option<Either<MainFailure, SearchSchool>> successorFailure});
}

/// @nodoc
class _$SearchSchoolStateCopyWithImpl<$Res, $Val extends SearchSchoolState>
    implements $SearchSchoolStateCopyWith<$Res> {
  _$SearchSchoolStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? school = null,
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
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as SearchSchool,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, SearchSchool>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchSchoolStateImplCopyWith<$Res>
    implements $SearchSchoolStateCopyWith<$Res> {
  factory _$$SearchSchoolStateImplCopyWith(_$SearchSchoolStateImpl value,
          $Res Function(_$SearchSchoolStateImpl) then) =
      __$$SearchSchoolStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      SearchSchool school,
      Option<Either<MainFailure, SearchSchool>> successorFailure});
}

/// @nodoc
class __$$SearchSchoolStateImplCopyWithImpl<$Res>
    extends _$SearchSchoolStateCopyWithImpl<$Res, _$SearchSchoolStateImpl>
    implements _$$SearchSchoolStateImplCopyWith<$Res> {
  __$$SearchSchoolStateImplCopyWithImpl(_$SearchSchoolStateImpl _value,
      $Res Function(_$SearchSchoolStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? school = null,
    Object? successorFailure = null,
  }) {
    return _then(_$SearchSchoolStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as SearchSchool,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, SearchSchool>>,
    ));
  }
}

/// @nodoc

class _$SearchSchoolStateImpl implements _SearchSchoolState {
  const _$SearchSchoolStateImpl(
      {required this.isLoading,
      required this.isError,
      required this.school,
      required this.successorFailure});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final SearchSchool school;
  @override
  final Option<Either<MainFailure, SearchSchool>> successorFailure;

  @override
  String toString() {
    return 'SearchSchoolState(isLoading: $isLoading, isError: $isError, school: $school, successorFailure: $successorFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSchoolStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.successorFailure, successorFailure) ||
                other.successorFailure == successorFailure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isError, school, successorFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSchoolStateImplCopyWith<_$SearchSchoolStateImpl> get copyWith =>
      __$$SearchSchoolStateImplCopyWithImpl<_$SearchSchoolStateImpl>(
          this, _$identity);
}

abstract class _SearchSchoolState implements SearchSchoolState {
  const factory _SearchSchoolState(
      {required final bool isLoading,
      required final bool isError,
      required final SearchSchool school,
      required final Option<Either<MainFailure, SearchSchool>>
          successorFailure}) = _$SearchSchoolStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  SearchSchool get school;
  @override
  Option<Either<MainFailure, SearchSchool>> get successorFailure;
  @override
  @JsonKey(ignore: true)
  _$$SearchSchoolStateImplCopyWith<_$SearchSchoolStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
