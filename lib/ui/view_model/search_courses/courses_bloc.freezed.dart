// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoursesEvent {
  String? get movieQuery => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? movieQuery) getCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? movieQuery)? getCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? movieQuery)? getCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCourses value) getCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCourses value)? getCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCourses value)? getCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoursesEventCopyWith<CoursesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesEventCopyWith<$Res> {
  factory $CoursesEventCopyWith(
          CoursesEvent value, $Res Function(CoursesEvent) then) =
      _$CoursesEventCopyWithImpl<$Res, CoursesEvent>;
  @useResult
  $Res call({String? movieQuery});
}

/// @nodoc
class _$CoursesEventCopyWithImpl<$Res, $Val extends CoursesEvent>
    implements $CoursesEventCopyWith<$Res> {
  _$CoursesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieQuery = freezed,
  }) {
    return _then(_value.copyWith(
      movieQuery: freezed == movieQuery
          ? _value.movieQuery
          : movieQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCoursesImplCopyWith<$Res>
    implements $CoursesEventCopyWith<$Res> {
  factory _$$GetCoursesImplCopyWith(
          _$GetCoursesImpl value, $Res Function(_$GetCoursesImpl) then) =
      __$$GetCoursesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? movieQuery});
}

/// @nodoc
class __$$GetCoursesImplCopyWithImpl<$Res>
    extends _$CoursesEventCopyWithImpl<$Res, _$GetCoursesImpl>
    implements _$$GetCoursesImplCopyWith<$Res> {
  __$$GetCoursesImplCopyWithImpl(
      _$GetCoursesImpl _value, $Res Function(_$GetCoursesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieQuery = freezed,
  }) {
    return _then(_$GetCoursesImpl(
      movieQuery: freezed == movieQuery
          ? _value.movieQuery
          : movieQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetCoursesImpl implements GetCourses {
  const _$GetCoursesImpl({this.movieQuery});

  @override
  final String? movieQuery;

  @override
  String toString() {
    return 'CoursesEvent.getCourses(movieQuery: $movieQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCoursesImpl &&
            (identical(other.movieQuery, movieQuery) ||
                other.movieQuery == movieQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCoursesImplCopyWith<_$GetCoursesImpl> get copyWith =>
      __$$GetCoursesImplCopyWithImpl<_$GetCoursesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? movieQuery) getCourses,
  }) {
    return getCourses(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? movieQuery)? getCourses,
  }) {
    return getCourses?.call(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? movieQuery)? getCourses,
    required TResult orElse(),
  }) {
    if (getCourses != null) {
      return getCourses(movieQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCourses value) getCourses,
  }) {
    return getCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCourses value)? getCourses,
  }) {
    return getCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCourses value)? getCourses,
    required TResult orElse(),
  }) {
    if (getCourses != null) {
      return getCourses(this);
    }
    return orElse();
  }
}

abstract class GetCourses implements CoursesEvent {
  const factory GetCourses({final String? movieQuery}) = _$GetCoursesImpl;

  @override
  String? get movieQuery;
  @override
  @JsonKey(ignore: true)
  _$$GetCoursesImplCopyWith<_$GetCoursesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CoursesState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  SearchCourse get course => throw _privateConstructorUsedError;
  Option<Either<MainFailure, SearchCourse>> get successorFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoursesStateCopyWith<CoursesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesStateCopyWith<$Res> {
  factory $CoursesStateCopyWith(
          CoursesState value, $Res Function(CoursesState) then) =
      _$CoursesStateCopyWithImpl<$Res, CoursesState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      SearchCourse course,
      Option<Either<MainFailure, SearchCourse>> successorFailure});
}

/// @nodoc
class _$CoursesStateCopyWithImpl<$Res, $Val extends CoursesState>
    implements $CoursesStateCopyWith<$Res> {
  _$CoursesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? course = null,
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
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as SearchCourse,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, SearchCourse>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoursesStateImplCopyWith<$Res>
    implements $CoursesStateCopyWith<$Res> {
  factory _$$CoursesStateImplCopyWith(
          _$CoursesStateImpl value, $Res Function(_$CoursesStateImpl) then) =
      __$$CoursesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      SearchCourse course,
      Option<Either<MainFailure, SearchCourse>> successorFailure});
}

/// @nodoc
class __$$CoursesStateImplCopyWithImpl<$Res>
    extends _$CoursesStateCopyWithImpl<$Res, _$CoursesStateImpl>
    implements _$$CoursesStateImplCopyWith<$Res> {
  __$$CoursesStateImplCopyWithImpl(
      _$CoursesStateImpl _value, $Res Function(_$CoursesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? course = null,
    Object? successorFailure = null,
  }) {
    return _then(_$CoursesStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as SearchCourse,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, SearchCourse>>,
    ));
  }
}

/// @nodoc

class _$CoursesStateImpl implements _CoursesState {
  const _$CoursesStateImpl(
      {required this.isLoading,
      required this.isError,
      required this.course,
      required this.successorFailure});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final SearchCourse course;
  @override
  final Option<Either<MainFailure, SearchCourse>> successorFailure;

  @override
  String toString() {
    return 'CoursesState(isLoading: $isLoading, isError: $isError, course: $course, successorFailure: $successorFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoursesStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.successorFailure, successorFailure) ||
                other.successorFailure == successorFailure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isError, course, successorFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoursesStateImplCopyWith<_$CoursesStateImpl> get copyWith =>
      __$$CoursesStateImplCopyWithImpl<_$CoursesStateImpl>(this, _$identity);
}

abstract class _CoursesState implements CoursesState {
  const factory _CoursesState(
      {required final bool isLoading,
      required final bool isError,
      required final SearchCourse course,
      required final Option<Either<MainFailure, SearchCourse>>
          successorFailure}) = _$CoursesStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  SearchCourse get course;
  @override
  Option<Either<MainFailure, SearchCourse>> get successorFailure;
  @override
  @JsonKey(ignore: true)
  _$$CoursesStateImplCopyWith<_$CoursesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
