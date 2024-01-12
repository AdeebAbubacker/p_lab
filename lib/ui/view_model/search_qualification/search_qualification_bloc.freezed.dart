// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_qualification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchQualificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String searchQuery) searchQualificationList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String searchQuery)? searchQualificationList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String searchQuery)? searchQualificationList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SearchQualificationList value)
        searchQualificationList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SearchQualificationList value)? searchQualificationList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SearchQualificationList value)? searchQualificationList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchQualificationEventCopyWith<$Res> {
  factory $SearchQualificationEventCopyWith(SearchQualificationEvent value,
          $Res Function(SearchQualificationEvent) then) =
      _$SearchQualificationEventCopyWithImpl<$Res, SearchQualificationEvent>;
}

/// @nodoc
class _$SearchQualificationEventCopyWithImpl<$Res,
        $Val extends SearchQualificationEvent>
    implements $SearchQualificationEventCopyWith<$Res> {
  _$SearchQualificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SearchQualificationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SearchQualificationEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String searchQuery) searchQualificationList,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String searchQuery)? searchQualificationList,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String searchQuery)? searchQualificationList,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SearchQualificationList value)
        searchQualificationList,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SearchQualificationList value)? searchQualificationList,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SearchQualificationList value)? searchQualificationList,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SearchQualificationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SearchQualificationListImplCopyWith<$Res> {
  factory _$$SearchQualificationListImplCopyWith(
          _$SearchQualificationListImpl value,
          $Res Function(_$SearchQualificationListImpl) then) =
      __$$SearchQualificationListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchQuery});
}

/// @nodoc
class __$$SearchQualificationListImplCopyWithImpl<$Res>
    extends _$SearchQualificationEventCopyWithImpl<$Res,
        _$SearchQualificationListImpl>
    implements _$$SearchQualificationListImplCopyWith<$Res> {
  __$$SearchQualificationListImplCopyWithImpl(
      _$SearchQualificationListImpl _value,
      $Res Function(_$SearchQualificationListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
  }) {
    return _then(_$SearchQualificationListImpl(
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchQualificationListImpl implements SearchQualificationList {
  const _$SearchQualificationListImpl({required this.searchQuery});

  @override
  final String searchQuery;

  @override
  String toString() {
    return 'SearchQualificationEvent.searchQualificationList(searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQualificationListImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchQualificationListImplCopyWith<_$SearchQualificationListImpl>
      get copyWith => __$$SearchQualificationListImplCopyWithImpl<
          _$SearchQualificationListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String searchQuery) searchQualificationList,
  }) {
    return searchQualificationList(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String searchQuery)? searchQualificationList,
  }) {
    return searchQualificationList?.call(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String searchQuery)? searchQualificationList,
    required TResult orElse(),
  }) {
    if (searchQualificationList != null) {
      return searchQualificationList(searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SearchQualificationList value)
        searchQualificationList,
  }) {
    return searchQualificationList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SearchQualificationList value)? searchQualificationList,
  }) {
    return searchQualificationList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SearchQualificationList value)? searchQualificationList,
    required TResult orElse(),
  }) {
    if (searchQualificationList != null) {
      return searchQualificationList(this);
    }
    return orElse();
  }
}

abstract class SearchQualificationList implements SearchQualificationEvent {
  const factory SearchQualificationList({required final String searchQuery}) =
      _$SearchQualificationListImpl;

  String get searchQuery;
  @JsonKey(ignore: true)
  _$$SearchQualificationListImplCopyWith<_$SearchQualificationListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchQualificationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  SearchQualification get qualification => throw _privateConstructorUsedError;
  Option<Either<MainFailure, SearchQualification>> get successorFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchQualificationStateCopyWith<SearchQualificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchQualificationStateCopyWith<$Res> {
  factory $SearchQualificationStateCopyWith(SearchQualificationState value,
          $Res Function(SearchQualificationState) then) =
      _$SearchQualificationStateCopyWithImpl<$Res, SearchQualificationState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      SearchQualification qualification,
      Option<Either<MainFailure, SearchQualification>> successorFailure});
}

/// @nodoc
class _$SearchQualificationStateCopyWithImpl<$Res,
        $Val extends SearchQualificationState>
    implements $SearchQualificationStateCopyWith<$Res> {
  _$SearchQualificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? qualification = null,
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
      qualification: null == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as SearchQualification,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, SearchQualification>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchQualificationStateImplCopyWith<$Res>
    implements $SearchQualificationStateCopyWith<$Res> {
  factory _$$SearchQualificationStateImplCopyWith(
          _$SearchQualificationStateImpl value,
          $Res Function(_$SearchQualificationStateImpl) then) =
      __$$SearchQualificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      SearchQualification qualification,
      Option<Either<MainFailure, SearchQualification>> successorFailure});
}

/// @nodoc
class __$$SearchQualificationStateImplCopyWithImpl<$Res>
    extends _$SearchQualificationStateCopyWithImpl<$Res,
        _$SearchQualificationStateImpl>
    implements _$$SearchQualificationStateImplCopyWith<$Res> {
  __$$SearchQualificationStateImplCopyWithImpl(
      _$SearchQualificationStateImpl _value,
      $Res Function(_$SearchQualificationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? qualification = null,
    Object? successorFailure = null,
  }) {
    return _then(_$SearchQualificationStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      qualification: null == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as SearchQualification,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, SearchQualification>>,
    ));
  }
}

/// @nodoc

class _$SearchQualificationStateImpl implements _SearchQualificationState {
  const _$SearchQualificationStateImpl(
      {required this.isLoading,
      required this.isError,
      required this.qualification,
      required this.successorFailure});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final SearchQualification qualification;
  @override
  final Option<Either<MainFailure, SearchQualification>> successorFailure;

  @override
  String toString() {
    return 'SearchQualificationState(isLoading: $isLoading, isError: $isError, qualification: $qualification, successorFailure: $successorFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQualificationStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.qualification, qualification) ||
                other.qualification == qualification) &&
            (identical(other.successorFailure, successorFailure) ||
                other.successorFailure == successorFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isError, qualification, successorFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchQualificationStateImplCopyWith<_$SearchQualificationStateImpl>
      get copyWith => __$$SearchQualificationStateImplCopyWithImpl<
          _$SearchQualificationStateImpl>(this, _$identity);
}

abstract class _SearchQualificationState implements SearchQualificationState {
  const factory _SearchQualificationState(
      {required final bool isLoading,
      required final bool isError,
      required final SearchQualification qualification,
      required final Option<Either<MainFailure, SearchQualification>>
          successorFailure}) = _$SearchQualificationStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  SearchQualification get qualification;
  @override
  Option<Either<MainFailure, SearchQualification>> get successorFailure;
  @override
  @JsonKey(ignore: true)
  _$$SearchQualificationStateImplCopyWith<_$SearchQualificationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
