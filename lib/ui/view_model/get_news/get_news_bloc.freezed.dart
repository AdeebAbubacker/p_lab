// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetNewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNews value) getNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNews value)? getNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNews value)? getNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNewsEventCopyWith<$Res> {
  factory $GetNewsEventCopyWith(
          GetNewsEvent value, $Res Function(GetNewsEvent) then) =
      _$GetNewsEventCopyWithImpl<$Res, GetNewsEvent>;
}

/// @nodoc
class _$GetNewsEventCopyWithImpl<$Res, $Val extends GetNewsEvent>
    implements $GetNewsEventCopyWith<$Res> {
  _$GetNewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetNewsImplCopyWith<$Res> {
  factory _$$GetNewsImplCopyWith(
          _$GetNewsImpl value, $Res Function(_$GetNewsImpl) then) =
      __$$GetNewsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNewsImplCopyWithImpl<$Res>
    extends _$GetNewsEventCopyWithImpl<$Res, _$GetNewsImpl>
    implements _$$GetNewsImplCopyWith<$Res> {
  __$$GetNewsImplCopyWithImpl(
      _$GetNewsImpl _value, $Res Function(_$GetNewsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetNewsImpl implements GetNews {
  const _$GetNewsImpl();

  @override
  String toString() {
    return 'GetNewsEvent.getNews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNewsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNews,
  }) {
    return getNews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNews,
  }) {
    return getNews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNews,
    required TResult orElse(),
  }) {
    if (getNews != null) {
      return getNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNews value) getNews,
  }) {
    return getNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNews value)? getNews,
  }) {
    return getNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNews value)? getNews,
    required TResult orElse(),
  }) {
    if (getNews != null) {
      return getNews(this);
    }
    return orElse();
  }
}

abstract class GetNews implements GetNewsEvent {
  const factory GetNews() = _$GetNewsImpl;
}

/// @nodoc
mixin _$GetNewsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  News get news => throw _privateConstructorUsedError;
  Option<Either<MainFailure, News>> get successorFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetNewsStateCopyWith<GetNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNewsStateCopyWith<$Res> {
  factory $GetNewsStateCopyWith(
          GetNewsState value, $Res Function(GetNewsState) then) =
      _$GetNewsStateCopyWithImpl<$Res, GetNewsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      News news,
      Option<Either<MainFailure, News>> successorFailure});
}

/// @nodoc
class _$GetNewsStateCopyWithImpl<$Res, $Val extends GetNewsState>
    implements $GetNewsStateCopyWith<$Res> {
  _$GetNewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? news = null,
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
      news: null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as News,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, News>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetNewsStateImplCopyWith<$Res>
    implements $GetNewsStateCopyWith<$Res> {
  factory _$$GetNewsStateImplCopyWith(
          _$GetNewsStateImpl value, $Res Function(_$GetNewsStateImpl) then) =
      __$$GetNewsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      News news,
      Option<Either<MainFailure, News>> successorFailure});
}

/// @nodoc
class __$$GetNewsStateImplCopyWithImpl<$Res>
    extends _$GetNewsStateCopyWithImpl<$Res, _$GetNewsStateImpl>
    implements _$$GetNewsStateImplCopyWith<$Res> {
  __$$GetNewsStateImplCopyWithImpl(
      _$GetNewsStateImpl _value, $Res Function(_$GetNewsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? news = null,
    Object? successorFailure = null,
  }) {
    return _then(_$GetNewsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      news: null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as News,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, News>>,
    ));
  }
}

/// @nodoc

class _$GetNewsStateImpl implements _GetNewsState {
  _$GetNewsStateImpl(
      {required this.isLoading,
      required this.isError,
      required this.news,
      required this.successorFailure});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final News news;
  @override
  final Option<Either<MainFailure, News>> successorFailure;

  @override
  String toString() {
    return 'GetNewsState(isLoading: $isLoading, isError: $isError, news: $news, successorFailure: $successorFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNewsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.news, news) || other.news == news) &&
            (identical(other.successorFailure, successorFailure) ||
                other.successorFailure == successorFailure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isError, news, successorFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNewsStateImplCopyWith<_$GetNewsStateImpl> get copyWith =>
      __$$GetNewsStateImplCopyWithImpl<_$GetNewsStateImpl>(this, _$identity);
}

abstract class _GetNewsState implements GetNewsState {
  factory _GetNewsState(
          {required final bool isLoading,
          required final bool isError,
          required final News news,
          required final Option<Either<MainFailure, News>> successorFailure}) =
      _$GetNewsStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  News get news;
  @override
  Option<Either<MainFailure, News>> get successorFailure;
  @override
  @JsonKey(ignore: true)
  _$$GetNewsStateImplCopyWith<_$GetNewsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
