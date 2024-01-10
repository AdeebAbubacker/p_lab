// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selctedbank_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelctedbankEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int selectedBank) selectedBank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int selectedBank)? selectedBank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int selectedBank)? selectedBank,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedBank value) selectedBank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectedBank value)? selectedBank,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedBank value)? selectedBank,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelctedbankEventCopyWith<$Res> {
  factory $SelctedbankEventCopyWith(
          SelctedbankEvent value, $Res Function(SelctedbankEvent) then) =
      _$SelctedbankEventCopyWithImpl<$Res, SelctedbankEvent>;
}

/// @nodoc
class _$SelctedbankEventCopyWithImpl<$Res, $Val extends SelctedbankEvent>
    implements $SelctedbankEventCopyWith<$Res> {
  _$SelctedbankEventCopyWithImpl(this._value, this._then);

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
    extends _$SelctedbankEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SelctedbankEvent.started()';
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
    required TResult Function(int selectedBank) selectedBank,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int selectedBank)? selectedBank,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int selectedBank)? selectedBank,
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
    required TResult Function(_SelectedBank value) selectedBank,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectedBank value)? selectedBank,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedBank value)? selectedBank,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SelctedbankEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SelectedBankImplCopyWith<$Res> {
  factory _$$SelectedBankImplCopyWith(
          _$SelectedBankImpl value, $Res Function(_$SelectedBankImpl) then) =
      __$$SelectedBankImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectedBank});
}

/// @nodoc
class __$$SelectedBankImplCopyWithImpl<$Res>
    extends _$SelctedbankEventCopyWithImpl<$Res, _$SelectedBankImpl>
    implements _$$SelectedBankImplCopyWith<$Res> {
  __$$SelectedBankImplCopyWithImpl(
      _$SelectedBankImpl _value, $Res Function(_$SelectedBankImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedBank = null,
  }) {
    return _then(_$SelectedBankImpl(
      selectedBank: null == selectedBank
          ? _value.selectedBank
          : selectedBank // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectedBankImpl implements _SelectedBank {
  const _$SelectedBankImpl({required this.selectedBank});

  @override
  final int selectedBank;

  @override
  String toString() {
    return 'SelctedbankEvent.selectedBank(selectedBank: $selectedBank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedBankImpl &&
            (identical(other.selectedBank, selectedBank) ||
                other.selectedBank == selectedBank));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedBank);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedBankImplCopyWith<_$SelectedBankImpl> get copyWith =>
      __$$SelectedBankImplCopyWithImpl<_$SelectedBankImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int selectedBank) selectedBank,
  }) {
    return selectedBank(this.selectedBank);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int selectedBank)? selectedBank,
  }) {
    return selectedBank?.call(this.selectedBank);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int selectedBank)? selectedBank,
    required TResult orElse(),
  }) {
    if (selectedBank != null) {
      return selectedBank(this.selectedBank);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedBank value) selectedBank,
  }) {
    return selectedBank(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectedBank value)? selectedBank,
  }) {
    return selectedBank?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedBank value)? selectedBank,
    required TResult orElse(),
  }) {
    if (selectedBank != null) {
      return selectedBank(this);
    }
    return orElse();
  }
}

abstract class _SelectedBank implements SelctedbankEvent {
  const factory _SelectedBank({required final int selectedBank}) =
      _$SelectedBankImpl;

  int get selectedBank;
  @JsonKey(ignore: true)
  _$$SelectedBankImplCopyWith<_$SelectedBankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelctedbankState {
  int get selectedBank => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedBank) bankSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedBank)? bankSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedBank)? bankSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BankSelected value) bankSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BankSelected value)? bankSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BankSelected value)? bankSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelctedbankStateCopyWith<SelctedbankState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelctedbankStateCopyWith<$Res> {
  factory $SelctedbankStateCopyWith(
          SelctedbankState value, $Res Function(SelctedbankState) then) =
      _$SelctedbankStateCopyWithImpl<$Res, SelctedbankState>;
  @useResult
  $Res call({int selectedBank});
}

/// @nodoc
class _$SelctedbankStateCopyWithImpl<$Res, $Val extends SelctedbankState>
    implements $SelctedbankStateCopyWith<$Res> {
  _$SelctedbankStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedBank = null,
  }) {
    return _then(_value.copyWith(
      selectedBank: null == selectedBank
          ? _value.selectedBank
          : selectedBank // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankSelectedImplCopyWith<$Res>
    implements $SelctedbankStateCopyWith<$Res> {
  factory _$$BankSelectedImplCopyWith(
          _$BankSelectedImpl value, $Res Function(_$BankSelectedImpl) then) =
      __$$BankSelectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedBank});
}

/// @nodoc
class __$$BankSelectedImplCopyWithImpl<$Res>
    extends _$SelctedbankStateCopyWithImpl<$Res, _$BankSelectedImpl>
    implements _$$BankSelectedImplCopyWith<$Res> {
  __$$BankSelectedImplCopyWithImpl(
      _$BankSelectedImpl _value, $Res Function(_$BankSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedBank = null,
  }) {
    return _then(_$BankSelectedImpl(
      selectedBank: null == selectedBank
          ? _value.selectedBank
          : selectedBank // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BankSelectedImpl implements _BankSelected {
  const _$BankSelectedImpl({required this.selectedBank});

  @override
  final int selectedBank;

  @override
  String toString() {
    return 'SelctedbankState.bankSelected(selectedBank: $selectedBank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankSelectedImpl &&
            (identical(other.selectedBank, selectedBank) ||
                other.selectedBank == selectedBank));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedBank);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankSelectedImplCopyWith<_$BankSelectedImpl> get copyWith =>
      __$$BankSelectedImplCopyWithImpl<_$BankSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedBank) bankSelected,
  }) {
    return bankSelected(selectedBank);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedBank)? bankSelected,
  }) {
    return bankSelected?.call(selectedBank);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedBank)? bankSelected,
    required TResult orElse(),
  }) {
    if (bankSelected != null) {
      return bankSelected(selectedBank);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BankSelected value) bankSelected,
  }) {
    return bankSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BankSelected value)? bankSelected,
  }) {
    return bankSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BankSelected value)? bankSelected,
    required TResult orElse(),
  }) {
    if (bankSelected != null) {
      return bankSelected(this);
    }
    return orElse();
  }
}

abstract class _BankSelected implements SelctedbankState {
  const factory _BankSelected({required final int selectedBank}) =
      _$BankSelectedImpl;

  @override
  int get selectedBank;
  @override
  @JsonKey(ignore: true)
  _$$BankSelectedImplCopyWith<_$BankSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
