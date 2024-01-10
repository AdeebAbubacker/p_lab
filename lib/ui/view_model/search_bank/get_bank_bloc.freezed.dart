// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_bank_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetBankEvent {
  String get bankQuery => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bankQuery) searchBankList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bankQuery)? searchBankList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bankQuery)? searchBankList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBankList value) searchBankList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBankList value)? searchBankList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBankList value)? searchBankList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetBankEventCopyWith<GetBankEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBankEventCopyWith<$Res> {
  factory $GetBankEventCopyWith(
          GetBankEvent value, $Res Function(GetBankEvent) then) =
      _$GetBankEventCopyWithImpl<$Res, GetBankEvent>;
  @useResult
  $Res call({String bankQuery});
}

/// @nodoc
class _$GetBankEventCopyWithImpl<$Res, $Val extends GetBankEvent>
    implements $GetBankEventCopyWith<$Res> {
  _$GetBankEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankQuery = null,
  }) {
    return _then(_value.copyWith(
      bankQuery: null == bankQuery
          ? _value.bankQuery
          : bankQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetBankListImplCopyWith<$Res>
    implements $GetBankEventCopyWith<$Res> {
  factory _$$GetBankListImplCopyWith(
          _$GetBankListImpl value, $Res Function(_$GetBankListImpl) then) =
      __$$GetBankListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bankQuery});
}

/// @nodoc
class __$$GetBankListImplCopyWithImpl<$Res>
    extends _$GetBankEventCopyWithImpl<$Res, _$GetBankListImpl>
    implements _$$GetBankListImplCopyWith<$Res> {
  __$$GetBankListImplCopyWithImpl(
      _$GetBankListImpl _value, $Res Function(_$GetBankListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankQuery = null,
  }) {
    return _then(_$GetBankListImpl(
      bankQuery: null == bankQuery
          ? _value.bankQuery
          : bankQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetBankListImpl implements GetBankList {
  const _$GetBankListImpl({required this.bankQuery});

  @override
  final String bankQuery;

  @override
  String toString() {
    return 'GetBankEvent.searchBankList(bankQuery: $bankQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBankListImpl &&
            (identical(other.bankQuery, bankQuery) ||
                other.bankQuery == bankQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bankQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBankListImplCopyWith<_$GetBankListImpl> get copyWith =>
      __$$GetBankListImplCopyWithImpl<_$GetBankListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bankQuery) searchBankList,
  }) {
    return searchBankList(bankQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bankQuery)? searchBankList,
  }) {
    return searchBankList?.call(bankQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bankQuery)? searchBankList,
    required TResult orElse(),
  }) {
    if (searchBankList != null) {
      return searchBankList(bankQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBankList value) searchBankList,
  }) {
    return searchBankList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBankList value)? searchBankList,
  }) {
    return searchBankList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBankList value)? searchBankList,
    required TResult orElse(),
  }) {
    if (searchBankList != null) {
      return searchBankList(this);
    }
    return orElse();
  }
}

abstract class GetBankList implements GetBankEvent {
  const factory GetBankList({required final String bankQuery}) =
      _$GetBankListImpl;

  @override
  String get bankQuery;
  @override
  @JsonKey(ignore: true)
  _$$GetBankListImplCopyWith<_$GetBankListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetBankState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  SearchBank get bank => throw _privateConstructorUsedError;
  Option<Either<MainFailure, SearchBank>> get successorFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetBankStateCopyWith<GetBankState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBankStateCopyWith<$Res> {
  factory $GetBankStateCopyWith(
          GetBankState value, $Res Function(GetBankState) then) =
      _$GetBankStateCopyWithImpl<$Res, GetBankState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      SearchBank bank,
      Option<Either<MainFailure, SearchBank>> successorFailure});
}

/// @nodoc
class _$GetBankStateCopyWithImpl<$Res, $Val extends GetBankState>
    implements $GetBankStateCopyWith<$Res> {
  _$GetBankStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? bank = null,
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
      bank: null == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as SearchBank,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, SearchBank>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetBankStateImplCopyWith<$Res>
    implements $GetBankStateCopyWith<$Res> {
  factory _$$GetBankStateImplCopyWith(
          _$GetBankStateImpl value, $Res Function(_$GetBankStateImpl) then) =
      __$$GetBankStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      SearchBank bank,
      Option<Either<MainFailure, SearchBank>> successorFailure});
}

/// @nodoc
class __$$GetBankStateImplCopyWithImpl<$Res>
    extends _$GetBankStateCopyWithImpl<$Res, _$GetBankStateImpl>
    implements _$$GetBankStateImplCopyWith<$Res> {
  __$$GetBankStateImplCopyWithImpl(
      _$GetBankStateImpl _value, $Res Function(_$GetBankStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? bank = null,
    Object? successorFailure = null,
  }) {
    return _then(_$GetBankStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      bank: null == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as SearchBank,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, SearchBank>>,
    ));
  }
}

/// @nodoc

class _$GetBankStateImpl implements _GetBankState {
  const _$GetBankStateImpl(
      {required this.isLoading,
      required this.isError,
      required this.bank,
      required this.successorFailure});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final SearchBank bank;
  @override
  final Option<Either<MainFailure, SearchBank>> successorFailure;

  @override
  String toString() {
    return 'GetBankState(isLoading: $isLoading, isError: $isError, bank: $bank, successorFailure: $successorFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBankStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.successorFailure, successorFailure) ||
                other.successorFailure == successorFailure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isError, bank, successorFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBankStateImplCopyWith<_$GetBankStateImpl> get copyWith =>
      __$$GetBankStateImplCopyWithImpl<_$GetBankStateImpl>(this, _$identity);
}

abstract class _GetBankState implements GetBankState {
  const factory _GetBankState(
      {required final bool isLoading,
      required final bool isError,
      required final SearchBank bank,
      required final Option<Either<MainFailure, SearchBank>>
          successorFailure}) = _$GetBankStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  SearchBank get bank;
  @override
  Option<Either<MainFailure, SearchBank>> get successorFailure;
  @override
  @JsonKey(ignore: true)
  _$$GetBankStateImplCopyWith<_$GetBankStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
