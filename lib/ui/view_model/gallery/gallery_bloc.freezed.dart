// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GalleryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGalleryImg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getGalleryImg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGalleryImg,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGalleryImg value) getGalleryImg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGalleryImg value)? getGalleryImg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGalleryImg value)? getGalleryImg,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryEventCopyWith<$Res> {
  factory $GalleryEventCopyWith(
          GalleryEvent value, $Res Function(GalleryEvent) then) =
      _$GalleryEventCopyWithImpl<$Res, GalleryEvent>;
}

/// @nodoc
class _$GalleryEventCopyWithImpl<$Res, $Val extends GalleryEvent>
    implements $GalleryEventCopyWith<$Res> {
  _$GalleryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetGalleryImgImplCopyWith<$Res> {
  factory _$$GetGalleryImgImplCopyWith(
          _$GetGalleryImgImpl value, $Res Function(_$GetGalleryImgImpl) then) =
      __$$GetGalleryImgImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetGalleryImgImplCopyWithImpl<$Res>
    extends _$GalleryEventCopyWithImpl<$Res, _$GetGalleryImgImpl>
    implements _$$GetGalleryImgImplCopyWith<$Res> {
  __$$GetGalleryImgImplCopyWithImpl(
      _$GetGalleryImgImpl _value, $Res Function(_$GetGalleryImgImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetGalleryImgImpl implements GetGalleryImg {
  const _$GetGalleryImgImpl();

  @override
  String toString() {
    return 'GalleryEvent.getGalleryImg()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetGalleryImgImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGalleryImg,
  }) {
    return getGalleryImg();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getGalleryImg,
  }) {
    return getGalleryImg?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGalleryImg,
    required TResult orElse(),
  }) {
    if (getGalleryImg != null) {
      return getGalleryImg();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGalleryImg value) getGalleryImg,
  }) {
    return getGalleryImg(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGalleryImg value)? getGalleryImg,
  }) {
    return getGalleryImg?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGalleryImg value)? getGalleryImg,
    required TResult orElse(),
  }) {
    if (getGalleryImg != null) {
      return getGalleryImg(this);
    }
    return orElse();
  }
}

abstract class GetGalleryImg implements GalleryEvent {
  const factory GetGalleryImg() = _$GetGalleryImgImpl;
}

/// @nodoc
mixin _$GalleryState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  Gallery get gallery => throw _privateConstructorUsedError;
  Option<Either<MainFailure, Gallery>> get successorFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GalleryStateCopyWith<GalleryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryStateCopyWith<$Res> {
  factory $GalleryStateCopyWith(
          GalleryState value, $Res Function(GalleryState) then) =
      _$GalleryStateCopyWithImpl<$Res, GalleryState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      Gallery gallery,
      Option<Either<MainFailure, Gallery>> successorFailure});
}

/// @nodoc
class _$GalleryStateCopyWithImpl<$Res, $Val extends GalleryState>
    implements $GalleryStateCopyWith<$Res> {
  _$GalleryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? gallery = null,
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
      gallery: null == gallery
          ? _value.gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as Gallery,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, Gallery>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GalleryStateImplCopyWith<$Res>
    implements $GalleryStateCopyWith<$Res> {
  factory _$$GalleryStateImplCopyWith(
          _$GalleryStateImpl value, $Res Function(_$GalleryStateImpl) then) =
      __$$GalleryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      Gallery gallery,
      Option<Either<MainFailure, Gallery>> successorFailure});
}

/// @nodoc
class __$$GalleryStateImplCopyWithImpl<$Res>
    extends _$GalleryStateCopyWithImpl<$Res, _$GalleryStateImpl>
    implements _$$GalleryStateImplCopyWith<$Res> {
  __$$GalleryStateImplCopyWithImpl(
      _$GalleryStateImpl _value, $Res Function(_$GalleryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? gallery = null,
    Object? successorFailure = null,
  }) {
    return _then(_$GalleryStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      gallery: null == gallery
          ? _value.gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as Gallery,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, Gallery>>,
    ));
  }
}

/// @nodoc

class _$GalleryStateImpl implements _GalleryState {
  _$GalleryStateImpl(
      {required this.isLoading,
      required this.isError,
      required this.gallery,
      required this.successorFailure});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final Gallery gallery;
  @override
  final Option<Either<MainFailure, Gallery>> successorFailure;

  @override
  String toString() {
    return 'GalleryState(isLoading: $isLoading, isError: $isError, gallery: $gallery, successorFailure: $successorFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.gallery, gallery) || other.gallery == gallery) &&
            (identical(other.successorFailure, successorFailure) ||
                other.successorFailure == successorFailure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isError, gallery, successorFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryStateImplCopyWith<_$GalleryStateImpl> get copyWith =>
      __$$GalleryStateImplCopyWithImpl<_$GalleryStateImpl>(this, _$identity);
}

abstract class _GalleryState implements GalleryState {
  factory _GalleryState(
      {required final bool isLoading,
      required final bool isError,
      required final Gallery gallery,
      required final Option<Either<MainFailure, Gallery>>
          successorFailure}) = _$GalleryStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  Gallery get gallery;
  @override
  Option<Either<MainFailure, Gallery>> get successorFailure;
  @override
  @JsonKey(ignore: true)
  _$$GalleryStateImplCopyWith<_$GalleryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
