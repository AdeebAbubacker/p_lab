// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_qualification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectedQualificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int selectedqualification) selectedqualification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int selectedqualification)? selectedqualification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int selectedqualification)? selectedqualification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedQualification value)
        selectedqualification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectedQualification value)? selectedqualification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedQualification value)? selectedqualification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedQualificationEventCopyWith<$Res> {
  factory $SelectedQualificationEventCopyWith(SelectedQualificationEvent value,
          $Res Function(SelectedQualificationEvent) then) =
      _$SelectedQualificationEventCopyWithImpl<$Res,
          SelectedQualificationEvent>;
}

/// @nodoc
class _$SelectedQualificationEventCopyWithImpl<$Res,
        $Val extends SelectedQualificationEvent>
    implements $SelectedQualificationEventCopyWith<$Res> {
  _$SelectedQualificationEventCopyWithImpl(this._value, this._then);

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
    extends _$SelectedQualificationEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SelectedQualificationEvent.started()';
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
    required TResult Function(int selectedqualification) selectedqualification,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int selectedqualification)? selectedqualification,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int selectedqualification)? selectedqualification,
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
    required TResult Function(_SelectedQualification value)
        selectedqualification,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectedQualification value)? selectedqualification,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedQualification value)? selectedqualification,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SelectedQualificationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SelectedQualificationImplCopyWith<$Res> {
  factory _$$SelectedQualificationImplCopyWith(
          _$SelectedQualificationImpl value,
          $Res Function(_$SelectedQualificationImpl) then) =
      __$$SelectedQualificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectedqualification});
}

/// @nodoc
class __$$SelectedQualificationImplCopyWithImpl<$Res>
    extends _$SelectedQualificationEventCopyWithImpl<$Res,
        _$SelectedQualificationImpl>
    implements _$$SelectedQualificationImplCopyWith<$Res> {
  __$$SelectedQualificationImplCopyWithImpl(_$SelectedQualificationImpl _value,
      $Res Function(_$SelectedQualificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedqualification = null,
  }) {
    return _then(_$SelectedQualificationImpl(
      selectedqualification: null == selectedqualification
          ? _value.selectedqualification
          : selectedqualification // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectedQualificationImpl implements _SelectedQualification {
  const _$SelectedQualificationImpl({required this.selectedqualification});

  @override
  final int selectedqualification;

  @override
  String toString() {
    return 'SelectedQualificationEvent.selectedqualification(selectedqualification: $selectedqualification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedQualificationImpl &&
            (identical(other.selectedqualification, selectedqualification) ||
                other.selectedqualification == selectedqualification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedqualification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedQualificationImplCopyWith<_$SelectedQualificationImpl>
      get copyWith => __$$SelectedQualificationImplCopyWithImpl<
          _$SelectedQualificationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int selectedqualification) selectedqualification,
  }) {
    return selectedqualification(this.selectedqualification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int selectedqualification)? selectedqualification,
  }) {
    return selectedqualification?.call(this.selectedqualification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int selectedqualification)? selectedqualification,
    required TResult orElse(),
  }) {
    if (selectedqualification != null) {
      return selectedqualification(this.selectedqualification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedQualification value)
        selectedqualification,
  }) {
    return selectedqualification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectedQualification value)? selectedqualification,
  }) {
    return selectedqualification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedQualification value)? selectedqualification,
    required TResult orElse(),
  }) {
    if (selectedqualification != null) {
      return selectedqualification(this);
    }
    return orElse();
  }
}

abstract class _SelectedQualification implements SelectedQualificationEvent {
  const factory _SelectedQualification(
      {required final int selectedqualification}) = _$SelectedQualificationImpl;

  int get selectedqualification;
  @JsonKey(ignore: true)
  _$$SelectedQualificationImplCopyWith<_$SelectedQualificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectedQualificationState {
  int get selectedqualification => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedqualification) qualificationSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedqualification)? qualificationSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedqualification)? qualificationSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_qualificationSelected value)
        qualificationSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_qualificationSelected value)? qualificationSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_qualificationSelected value)? qualificationSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectedQualificationStateCopyWith<SelectedQualificationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedQualificationStateCopyWith<$Res> {
  factory $SelectedQualificationStateCopyWith(SelectedQualificationState value,
          $Res Function(SelectedQualificationState) then) =
      _$SelectedQualificationStateCopyWithImpl<$Res,
          SelectedQualificationState>;
  @useResult
  $Res call({int selectedqualification});
}

/// @nodoc
class _$SelectedQualificationStateCopyWithImpl<$Res,
        $Val extends SelectedQualificationState>
    implements $SelectedQualificationStateCopyWith<$Res> {
  _$SelectedQualificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedqualification = null,
  }) {
    return _then(_value.copyWith(
      selectedqualification: null == selectedqualification
          ? _value.selectedqualification
          : selectedqualification // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$qualificationSelectedImplCopyWith<$Res>
    implements $SelectedQualificationStateCopyWith<$Res> {
  factory _$$qualificationSelectedImplCopyWith(
          _$qualificationSelectedImpl value,
          $Res Function(_$qualificationSelectedImpl) then) =
      __$$qualificationSelectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedqualification});
}

/// @nodoc
class __$$qualificationSelectedImplCopyWithImpl<$Res>
    extends _$SelectedQualificationStateCopyWithImpl<$Res,
        _$qualificationSelectedImpl>
    implements _$$qualificationSelectedImplCopyWith<$Res> {
  __$$qualificationSelectedImplCopyWithImpl(_$qualificationSelectedImpl _value,
      $Res Function(_$qualificationSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedqualification = null,
  }) {
    return _then(_$qualificationSelectedImpl(
      selectedqualification: null == selectedqualification
          ? _value.selectedqualification
          : selectedqualification // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$qualificationSelectedImpl implements _qualificationSelected {
  const _$qualificationSelectedImpl({required this.selectedqualification});

  @override
  final int selectedqualification;

  @override
  String toString() {
    return 'SelectedQualificationState.qualificationSelected(selectedqualification: $selectedqualification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$qualificationSelectedImpl &&
            (identical(other.selectedqualification, selectedqualification) ||
                other.selectedqualification == selectedqualification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedqualification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$qualificationSelectedImplCopyWith<_$qualificationSelectedImpl>
      get copyWith => __$$qualificationSelectedImplCopyWithImpl<
          _$qualificationSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedqualification) qualificationSelected,
  }) {
    return qualificationSelected(selectedqualification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedqualification)? qualificationSelected,
  }) {
    return qualificationSelected?.call(selectedqualification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedqualification)? qualificationSelected,
    required TResult orElse(),
  }) {
    if (qualificationSelected != null) {
      return qualificationSelected(selectedqualification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_qualificationSelected value)
        qualificationSelected,
  }) {
    return qualificationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_qualificationSelected value)? qualificationSelected,
  }) {
    return qualificationSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_qualificationSelected value)? qualificationSelected,
    required TResult orElse(),
  }) {
    if (qualificationSelected != null) {
      return qualificationSelected(this);
    }
    return orElse();
  }
}

abstract class _qualificationSelected implements SelectedQualificationState {
  const factory _qualificationSelected(
      {required final int selectedqualification}) = _$qualificationSelectedImpl;

  @override
  int get selectedqualification;
  @override
  @JsonKey(ignore: true)
  _$$qualificationSelectedImplCopyWith<_$qualificationSelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
