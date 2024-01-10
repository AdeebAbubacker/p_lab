// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_residentail_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostResidentailDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String houselandSize, String housedrinkingwater,
            String houseroof, String houseOwnership)
        postResidentailInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String houselandSize, String housedrinkingwater,
            String houseroof, String houseOwnership)?
        postResidentailInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String houselandSize, String housedrinkingwater,
            String houseroof, String houseOwnership)?
        postResidentailInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PostResidentailInfo value) postResidentailInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(PostResidentailInfo value)? postResidentailInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PostResidentailInfo value)? postResidentailInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostResidentailDataEventCopyWith<$Res> {
  factory $PostResidentailDataEventCopyWith(PostResidentailDataEvent value,
          $Res Function(PostResidentailDataEvent) then) =
      _$PostResidentailDataEventCopyWithImpl<$Res, PostResidentailDataEvent>;
}

/// @nodoc
class _$PostResidentailDataEventCopyWithImpl<$Res,
        $Val extends PostResidentailDataEvent>
    implements $PostResidentailDataEventCopyWith<$Res> {
  _$PostResidentailDataEventCopyWithImpl(this._value, this._then);

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
    extends _$PostResidentailDataEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'PostResidentailDataEvent.started()';
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
    required TResult Function(String houselandSize, String housedrinkingwater,
            String houseroof, String houseOwnership)
        postResidentailInfo,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String houselandSize, String housedrinkingwater,
            String houseroof, String houseOwnership)?
        postResidentailInfo,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String houselandSize, String housedrinkingwater,
            String houseroof, String houseOwnership)?
        postResidentailInfo,
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
    required TResult Function(PostResidentailInfo value) postResidentailInfo,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(PostResidentailInfo value)? postResidentailInfo,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PostResidentailInfo value)? postResidentailInfo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PostResidentailDataEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$PostResidentailInfoImplCopyWith<$Res> {
  factory _$$PostResidentailInfoImplCopyWith(_$PostResidentailInfoImpl value,
          $Res Function(_$PostResidentailInfoImpl) then) =
      __$$PostResidentailInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String houselandSize,
      String housedrinkingwater,
      String houseroof,
      String houseOwnership});
}

/// @nodoc
class __$$PostResidentailInfoImplCopyWithImpl<$Res>
    extends _$PostResidentailDataEventCopyWithImpl<$Res,
        _$PostResidentailInfoImpl>
    implements _$$PostResidentailInfoImplCopyWith<$Res> {
  __$$PostResidentailInfoImplCopyWithImpl(_$PostResidentailInfoImpl _value,
      $Res Function(_$PostResidentailInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? houselandSize = null,
    Object? housedrinkingwater = null,
    Object? houseroof = null,
    Object? houseOwnership = null,
  }) {
    return _then(_$PostResidentailInfoImpl(
      houselandSize: null == houselandSize
          ? _value.houselandSize
          : houselandSize // ignore: cast_nullable_to_non_nullable
              as String,
      housedrinkingwater: null == housedrinkingwater
          ? _value.housedrinkingwater
          : housedrinkingwater // ignore: cast_nullable_to_non_nullable
              as String,
      houseroof: null == houseroof
          ? _value.houseroof
          : houseroof // ignore: cast_nullable_to_non_nullable
              as String,
      houseOwnership: null == houseOwnership
          ? _value.houseOwnership
          : houseOwnership // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostResidentailInfoImpl implements PostResidentailInfo {
  const _$PostResidentailInfoImpl(
      {required this.houselandSize,
      required this.housedrinkingwater,
      required this.houseroof,
      required this.houseOwnership});

  @override
  final String houselandSize;
  @override
  final String housedrinkingwater;
  @override
  final String houseroof;
  @override
  final String houseOwnership;

  @override
  String toString() {
    return 'PostResidentailDataEvent.postResidentailInfo(houselandSize: $houselandSize, housedrinkingwater: $housedrinkingwater, houseroof: $houseroof, houseOwnership: $houseOwnership)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostResidentailInfoImpl &&
            (identical(other.houselandSize, houselandSize) ||
                other.houselandSize == houselandSize) &&
            (identical(other.housedrinkingwater, housedrinkingwater) ||
                other.housedrinkingwater == housedrinkingwater) &&
            (identical(other.houseroof, houseroof) ||
                other.houseroof == houseroof) &&
            (identical(other.houseOwnership, houseOwnership) ||
                other.houseOwnership == houseOwnership));
  }

  @override
  int get hashCode => Object.hash(runtimeType, houselandSize,
      housedrinkingwater, houseroof, houseOwnership);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostResidentailInfoImplCopyWith<_$PostResidentailInfoImpl> get copyWith =>
      __$$PostResidentailInfoImplCopyWithImpl<_$PostResidentailInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String houselandSize, String housedrinkingwater,
            String houseroof, String houseOwnership)
        postResidentailInfo,
  }) {
    return postResidentailInfo(
        houselandSize, housedrinkingwater, houseroof, houseOwnership);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String houselandSize, String housedrinkingwater,
            String houseroof, String houseOwnership)?
        postResidentailInfo,
  }) {
    return postResidentailInfo?.call(
        houselandSize, housedrinkingwater, houseroof, houseOwnership);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String houselandSize, String housedrinkingwater,
            String houseroof, String houseOwnership)?
        postResidentailInfo,
    required TResult orElse(),
  }) {
    if (postResidentailInfo != null) {
      return postResidentailInfo(
          houselandSize, housedrinkingwater, houseroof, houseOwnership);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PostResidentailInfo value) postResidentailInfo,
  }) {
    return postResidentailInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(PostResidentailInfo value)? postResidentailInfo,
  }) {
    return postResidentailInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PostResidentailInfo value)? postResidentailInfo,
    required TResult orElse(),
  }) {
    if (postResidentailInfo != null) {
      return postResidentailInfo(this);
    }
    return orElse();
  }
}

abstract class PostResidentailInfo implements PostResidentailDataEvent {
  const factory PostResidentailInfo(
      {required final String houselandSize,
      required final String housedrinkingwater,
      required final String houseroof,
      required final String houseOwnership}) = _$PostResidentailInfoImpl;

  String get houselandSize;
  String get housedrinkingwater;
  String get houseroof;
  String get houseOwnership;
  @JsonKey(ignore: true)
  _$$PostResidentailInfoImplCopyWith<_$PostResidentailInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostResidentailDataState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  ResidentialData get residentialData => throw _privateConstructorUsedError;
  Option<Either<MainFailure, ResidentialData>> get successorFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostResidentailDataStateCopyWith<PostResidentailDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostResidentailDataStateCopyWith<$Res> {
  factory $PostResidentailDataStateCopyWith(PostResidentailDataState value,
          $Res Function(PostResidentailDataState) then) =
      _$PostResidentailDataStateCopyWithImpl<$Res, PostResidentailDataState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      ResidentialData residentialData,
      Option<Either<MainFailure, ResidentialData>> successorFailure});
}

/// @nodoc
class _$PostResidentailDataStateCopyWithImpl<$Res,
        $Val extends PostResidentailDataState>
    implements $PostResidentailDataStateCopyWith<$Res> {
  _$PostResidentailDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? residentialData = null,
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
      residentialData: null == residentialData
          ? _value.residentialData
          : residentialData // ignore: cast_nullable_to_non_nullable
              as ResidentialData,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, ResidentialData>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostResidentailDataStateImplCopyWith<$Res>
    implements $PostResidentailDataStateCopyWith<$Res> {
  factory _$$PostResidentailDataStateImplCopyWith(
          _$PostResidentailDataStateImpl value,
          $Res Function(_$PostResidentailDataStateImpl) then) =
      __$$PostResidentailDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      ResidentialData residentialData,
      Option<Either<MainFailure, ResidentialData>> successorFailure});
}

/// @nodoc
class __$$PostResidentailDataStateImplCopyWithImpl<$Res>
    extends _$PostResidentailDataStateCopyWithImpl<$Res,
        _$PostResidentailDataStateImpl>
    implements _$$PostResidentailDataStateImplCopyWith<$Res> {
  __$$PostResidentailDataStateImplCopyWithImpl(
      _$PostResidentailDataStateImpl _value,
      $Res Function(_$PostResidentailDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? residentialData = null,
    Object? successorFailure = null,
  }) {
    return _then(_$PostResidentailDataStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      residentialData: null == residentialData
          ? _value.residentialData
          : residentialData // ignore: cast_nullable_to_non_nullable
              as ResidentialData,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, ResidentialData>>,
    ));
  }
}

/// @nodoc

class _$PostResidentailDataStateImpl implements _PostResidentailDataState {
  const _$PostResidentailDataStateImpl(
      {required this.isLoading,
      required this.isError,
      required this.residentialData,
      required this.successorFailure});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final ResidentialData residentialData;
  @override
  final Option<Either<MainFailure, ResidentialData>> successorFailure;

  @override
  String toString() {
    return 'PostResidentailDataState(isLoading: $isLoading, isError: $isError, residentialData: $residentialData, successorFailure: $successorFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostResidentailDataStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.residentialData, residentialData) ||
                other.residentialData == residentialData) &&
            (identical(other.successorFailure, successorFailure) ||
                other.successorFailure == successorFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isError, residentialData, successorFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostResidentailDataStateImplCopyWith<_$PostResidentailDataStateImpl>
      get copyWith => __$$PostResidentailDataStateImplCopyWithImpl<
          _$PostResidentailDataStateImpl>(this, _$identity);
}

abstract class _PostResidentailDataState implements PostResidentailDataState {
  const factory _PostResidentailDataState(
      {required final bool isLoading,
      required final bool isError,
      required final ResidentialData residentialData,
      required final Option<Either<MainFailure, ResidentialData>>
          successorFailure}) = _$PostResidentailDataStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  ResidentialData get residentialData;
  @override
  Option<Either<MainFailure, ResidentialData>> get successorFailure;
  @override
  @JsonKey(ignore: true)
  _$$PostResidentailDataStateImplCopyWith<_$PostResidentailDataStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
