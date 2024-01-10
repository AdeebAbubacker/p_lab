// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_school_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectedSchoolEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int selectedSchool) selectedSchool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int selectedSchool)? selectedSchool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int selectedSchool)? selectedSchool,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedSchool value) selectedSchool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectedSchool value)? selectedSchool,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedSchool value)? selectedSchool,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedSchoolEventCopyWith<$Res> {
  factory $SelectedSchoolEventCopyWith(
          SelectedSchoolEvent value, $Res Function(SelectedSchoolEvent) then) =
      _$SelectedSchoolEventCopyWithImpl<$Res, SelectedSchoolEvent>;
}

/// @nodoc
class _$SelectedSchoolEventCopyWithImpl<$Res, $Val extends SelectedSchoolEvent>
    implements $SelectedSchoolEventCopyWith<$Res> {
  _$SelectedSchoolEventCopyWithImpl(this._value, this._then);

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
    extends _$SelectedSchoolEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SelectedSchoolEvent.started()';
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
    required TResult Function(int selectedSchool) selectedSchool,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int selectedSchool)? selectedSchool,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int selectedSchool)? selectedSchool,
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
    required TResult Function(_SelectedSchool value) selectedSchool,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectedSchool value)? selectedSchool,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedSchool value)? selectedSchool,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SelectedSchoolEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SelectedSchoolImplCopyWith<$Res> {
  factory _$$SelectedSchoolImplCopyWith(_$SelectedSchoolImpl value,
          $Res Function(_$SelectedSchoolImpl) then) =
      __$$SelectedSchoolImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectedSchool});
}

/// @nodoc
class __$$SelectedSchoolImplCopyWithImpl<$Res>
    extends _$SelectedSchoolEventCopyWithImpl<$Res, _$SelectedSchoolImpl>
    implements _$$SelectedSchoolImplCopyWith<$Res> {
  __$$SelectedSchoolImplCopyWithImpl(
      _$SelectedSchoolImpl _value, $Res Function(_$SelectedSchoolImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSchool = null,
  }) {
    return _then(_$SelectedSchoolImpl(
      selectedSchool: null == selectedSchool
          ? _value.selectedSchool
          : selectedSchool // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectedSchoolImpl implements _SelectedSchool {
  const _$SelectedSchoolImpl({required this.selectedSchool});

  @override
  final int selectedSchool;

  @override
  String toString() {
    return 'SelectedSchoolEvent.selectedSchool(selectedSchool: $selectedSchool)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedSchoolImpl &&
            (identical(other.selectedSchool, selectedSchool) ||
                other.selectedSchool == selectedSchool));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedSchool);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedSchoolImplCopyWith<_$SelectedSchoolImpl> get copyWith =>
      __$$SelectedSchoolImplCopyWithImpl<_$SelectedSchoolImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int selectedSchool) selectedSchool,
  }) {
    return selectedSchool(this.selectedSchool);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int selectedSchool)? selectedSchool,
  }) {
    return selectedSchool?.call(this.selectedSchool);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int selectedSchool)? selectedSchool,
    required TResult orElse(),
  }) {
    if (selectedSchool != null) {
      return selectedSchool(this.selectedSchool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedSchool value) selectedSchool,
  }) {
    return selectedSchool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectedSchool value)? selectedSchool,
  }) {
    return selectedSchool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedSchool value)? selectedSchool,
    required TResult orElse(),
  }) {
    if (selectedSchool != null) {
      return selectedSchool(this);
    }
    return orElse();
  }
}

abstract class _SelectedSchool implements SelectedSchoolEvent {
  const factory _SelectedSchool({required final int selectedSchool}) =
      _$SelectedSchoolImpl;

  int get selectedSchool;
  @JsonKey(ignore: true)
  _$$SelectedSchoolImplCopyWith<_$SelectedSchoolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectedSchoolState {
  int get selectedschool => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedschool) schoolSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedschool)? schoolSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedschool)? schoolSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_schoolSelected value) schoolSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_schoolSelected value)? schoolSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_schoolSelected value)? schoolSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectedSchoolStateCopyWith<SelectedSchoolState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedSchoolStateCopyWith<$Res> {
  factory $SelectedSchoolStateCopyWith(
          SelectedSchoolState value, $Res Function(SelectedSchoolState) then) =
      _$SelectedSchoolStateCopyWithImpl<$Res, SelectedSchoolState>;
  @useResult
  $Res call({int selectedschool});
}

/// @nodoc
class _$SelectedSchoolStateCopyWithImpl<$Res, $Val extends SelectedSchoolState>
    implements $SelectedSchoolStateCopyWith<$Res> {
  _$SelectedSchoolStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedschool = null,
  }) {
    return _then(_value.copyWith(
      selectedschool: null == selectedschool
          ? _value.selectedschool
          : selectedschool // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$schoolSelectedImplCopyWith<$Res>
    implements $SelectedSchoolStateCopyWith<$Res> {
  factory _$$schoolSelectedImplCopyWith(_$schoolSelectedImpl value,
          $Res Function(_$schoolSelectedImpl) then) =
      __$$schoolSelectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedschool});
}

/// @nodoc
class __$$schoolSelectedImplCopyWithImpl<$Res>
    extends _$SelectedSchoolStateCopyWithImpl<$Res, _$schoolSelectedImpl>
    implements _$$schoolSelectedImplCopyWith<$Res> {
  __$$schoolSelectedImplCopyWithImpl(
      _$schoolSelectedImpl _value, $Res Function(_$schoolSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedschool = null,
  }) {
    return _then(_$schoolSelectedImpl(
      selectedschool: null == selectedschool
          ? _value.selectedschool
          : selectedschool // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$schoolSelectedImpl implements _schoolSelected {
  const _$schoolSelectedImpl({required this.selectedschool});

  @override
  final int selectedschool;

  @override
  String toString() {
    return 'SelectedSchoolState.schoolSelected(selectedschool: $selectedschool)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$schoolSelectedImpl &&
            (identical(other.selectedschool, selectedschool) ||
                other.selectedschool == selectedschool));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedschool);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$schoolSelectedImplCopyWith<_$schoolSelectedImpl> get copyWith =>
      __$$schoolSelectedImplCopyWithImpl<_$schoolSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedschool) schoolSelected,
  }) {
    return schoolSelected(selectedschool);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedschool)? schoolSelected,
  }) {
    return schoolSelected?.call(selectedschool);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedschool)? schoolSelected,
    required TResult orElse(),
  }) {
    if (schoolSelected != null) {
      return schoolSelected(selectedschool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_schoolSelected value) schoolSelected,
  }) {
    return schoolSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_schoolSelected value)? schoolSelected,
  }) {
    return schoolSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_schoolSelected value)? schoolSelected,
    required TResult orElse(),
  }) {
    if (schoolSelected != null) {
      return schoolSelected(this);
    }
    return orElse();
  }
}

abstract class _schoolSelected implements SelectedSchoolState {
  const factory _schoolSelected({required final int selectedschool}) =
      _$schoolSelectedImpl;

  @override
  int get selectedschool;
  @override
  @JsonKey(ignore: true)
  _$$schoolSelectedImplCopyWith<_$schoolSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
