// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_occupation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchOccupationEvent {
  String get searchQuery => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery) searchOccupationList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery)? searchOccupationList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery)? searchOccupationList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchOccupationList value) searchOccupationList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchOccupationList value)? searchOccupationList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchOccupationList value)? searchOccupationList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchOccupationEventCopyWith<SearchOccupationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchOccupationEventCopyWith<$Res> {
  factory $SearchOccupationEventCopyWith(SearchOccupationEvent value,
          $Res Function(SearchOccupationEvent) then) =
      _$SearchOccupationEventCopyWithImpl<$Res, SearchOccupationEvent>;
  @useResult
  $Res call({String searchQuery});
}

/// @nodoc
class _$SearchOccupationEventCopyWithImpl<$Res,
        $Val extends SearchOccupationEvent>
    implements $SearchOccupationEventCopyWith<$Res> {
  _$SearchOccupationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
  }) {
    return _then(_value.copyWith(
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchOccupationListImplCopyWith<$Res>
    implements $SearchOccupationEventCopyWith<$Res> {
  factory _$$SearchOccupationListImplCopyWith(_$SearchOccupationListImpl value,
          $Res Function(_$SearchOccupationListImpl) then) =
      __$$SearchOccupationListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String searchQuery});
}

/// @nodoc
class __$$SearchOccupationListImplCopyWithImpl<$Res>
    extends _$SearchOccupationEventCopyWithImpl<$Res,
        _$SearchOccupationListImpl>
    implements _$$SearchOccupationListImplCopyWith<$Res> {
  __$$SearchOccupationListImplCopyWithImpl(_$SearchOccupationListImpl _value,
      $Res Function(_$SearchOccupationListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
  }) {
    return _then(_$SearchOccupationListImpl(
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchOccupationListImpl implements SearchOccupationList {
  const _$SearchOccupationListImpl({required this.searchQuery});

  @override
  final String searchQuery;

  @override
  String toString() {
    return 'SearchOccupationEvent.searchOccupationList(searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchOccupationListImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchOccupationListImplCopyWith<_$SearchOccupationListImpl>
      get copyWith =>
          __$$SearchOccupationListImplCopyWithImpl<_$SearchOccupationListImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery) searchOccupationList,
  }) {
    return searchOccupationList(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery)? searchOccupationList,
  }) {
    return searchOccupationList?.call(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery)? searchOccupationList,
    required TResult orElse(),
  }) {
    if (searchOccupationList != null) {
      return searchOccupationList(searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchOccupationList value) searchOccupationList,
  }) {
    return searchOccupationList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchOccupationList value)? searchOccupationList,
  }) {
    return searchOccupationList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchOccupationList value)? searchOccupationList,
    required TResult orElse(),
  }) {
    if (searchOccupationList != null) {
      return searchOccupationList(this);
    }
    return orElse();
  }
}

abstract class SearchOccupationList implements SearchOccupationEvent {
  const factory SearchOccupationList({required final String searchQuery}) =
      _$SearchOccupationListImpl;

  @override
  String get searchQuery;
  @override
  @JsonKey(ignore: true)
  _$$SearchOccupationListImplCopyWith<_$SearchOccupationListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchOccupationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  OccupationData get occupation => throw _privateConstructorUsedError;
  Option<Either<MainFailure, OccupationData>> get successorFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchOccupationStateCopyWith<SearchOccupationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchOccupationStateCopyWith<$Res> {
  factory $SearchOccupationStateCopyWith(SearchOccupationState value,
          $Res Function(SearchOccupationState) then) =
      _$SearchOccupationStateCopyWithImpl<$Res, SearchOccupationState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      OccupationData occupation,
      Option<Either<MainFailure, OccupationData>> successorFailure});
}

/// @nodoc
class _$SearchOccupationStateCopyWithImpl<$Res,
        $Val extends SearchOccupationState>
    implements $SearchOccupationStateCopyWith<$Res> {
  _$SearchOccupationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? occupation = null,
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
      occupation: null == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as OccupationData,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, OccupationData>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchOccupationStateImplCopyWith<$Res>
    implements $SearchOccupationStateCopyWith<$Res> {
  factory _$$SearchOccupationStateImplCopyWith(
          _$SearchOccupationStateImpl value,
          $Res Function(_$SearchOccupationStateImpl) then) =
      __$$SearchOccupationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      OccupationData occupation,
      Option<Either<MainFailure, OccupationData>> successorFailure});
}

/// @nodoc
class __$$SearchOccupationStateImplCopyWithImpl<$Res>
    extends _$SearchOccupationStateCopyWithImpl<$Res,
        _$SearchOccupationStateImpl>
    implements _$$SearchOccupationStateImplCopyWith<$Res> {
  __$$SearchOccupationStateImplCopyWithImpl(_$SearchOccupationStateImpl _value,
      $Res Function(_$SearchOccupationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? occupation = null,
    Object? successorFailure = null,
  }) {
    return _then(_$SearchOccupationStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      occupation: null == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as OccupationData,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, OccupationData>>,
    ));
  }
}

/// @nodoc

class _$SearchOccupationStateImpl implements _SearchOccupationState {
  const _$SearchOccupationStateImpl(
      {required this.isLoading,
      required this.isError,
      required this.occupation,
      required this.successorFailure});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final OccupationData occupation;
  @override
  final Option<Either<MainFailure, OccupationData>> successorFailure;

  @override
  String toString() {
    return 'SearchOccupationState(isLoading: $isLoading, isError: $isError, occupation: $occupation, successorFailure: $successorFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchOccupationStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.successorFailure, successorFailure) ||
                other.successorFailure == successorFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isError, occupation, successorFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchOccupationStateImplCopyWith<_$SearchOccupationStateImpl>
      get copyWith => __$$SearchOccupationStateImplCopyWithImpl<
          _$SearchOccupationStateImpl>(this, _$identity);
}

abstract class _SearchOccupationState implements SearchOccupationState {
  const factory _SearchOccupationState(
      {required final bool isLoading,
      required final bool isError,
      required final OccupationData occupation,
      required final Option<Either<MainFailure, OccupationData>>
          successorFailure}) = _$SearchOccupationStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  OccupationData get occupation;
  @override
  Option<Either<MainFailure, OccupationData>> get successorFailure;
  @override
  @JsonKey(ignore: true)
  _$$SearchOccupationStateImplCopyWith<_$SearchOccupationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
