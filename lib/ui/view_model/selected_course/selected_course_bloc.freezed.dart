// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_course_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectedCourseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int selectedCourse) selectedCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int selectedCourse)? selectedCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int selectedCourse)? selectedCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedCourse value) selectedCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectedCourse value)? selectedCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCourse value)? selectedCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedCourseEventCopyWith<$Res> {
  factory $SelectedCourseEventCopyWith(
          SelectedCourseEvent value, $Res Function(SelectedCourseEvent) then) =
      _$SelectedCourseEventCopyWithImpl<$Res, SelectedCourseEvent>;
}

/// @nodoc
class _$SelectedCourseEventCopyWithImpl<$Res, $Val extends SelectedCourseEvent>
    implements $SelectedCourseEventCopyWith<$Res> {
  _$SelectedCourseEventCopyWithImpl(this._value, this._then);

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
    extends _$SelectedCourseEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SelectedCourseEvent.started()';
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
    required TResult Function(int selectedCourse) selectedCourse,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int selectedCourse)? selectedCourse,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int selectedCourse)? selectedCourse,
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
    required TResult Function(_SelectedCourse value) selectedCourse,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectedCourse value)? selectedCourse,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCourse value)? selectedCourse,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SelectedCourseEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SelectedCourseImplCopyWith<$Res> {
  factory _$$SelectedCourseImplCopyWith(_$SelectedCourseImpl value,
          $Res Function(_$SelectedCourseImpl) then) =
      __$$SelectedCourseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectedCourse});
}

/// @nodoc
class __$$SelectedCourseImplCopyWithImpl<$Res>
    extends _$SelectedCourseEventCopyWithImpl<$Res, _$SelectedCourseImpl>
    implements _$$SelectedCourseImplCopyWith<$Res> {
  __$$SelectedCourseImplCopyWithImpl(
      _$SelectedCourseImpl _value, $Res Function(_$SelectedCourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCourse = null,
  }) {
    return _then(_$SelectedCourseImpl(
      selectedCourse: null == selectedCourse
          ? _value.selectedCourse
          : selectedCourse // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectedCourseImpl implements _SelectedCourse {
  const _$SelectedCourseImpl({required this.selectedCourse});

  @override
  final int selectedCourse;

  @override
  String toString() {
    return 'SelectedCourseEvent.selectedCourse(selectedCourse: $selectedCourse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedCourseImpl &&
            (identical(other.selectedCourse, selectedCourse) ||
                other.selectedCourse == selectedCourse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCourse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedCourseImplCopyWith<_$SelectedCourseImpl> get copyWith =>
      __$$SelectedCourseImplCopyWithImpl<_$SelectedCourseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int selectedCourse) selectedCourse,
  }) {
    return selectedCourse(this.selectedCourse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int selectedCourse)? selectedCourse,
  }) {
    return selectedCourse?.call(this.selectedCourse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int selectedCourse)? selectedCourse,
    required TResult orElse(),
  }) {
    if (selectedCourse != null) {
      return selectedCourse(this.selectedCourse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectedCourse value) selectedCourse,
  }) {
    return selectedCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectedCourse value)? selectedCourse,
  }) {
    return selectedCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectedCourse value)? selectedCourse,
    required TResult orElse(),
  }) {
    if (selectedCourse != null) {
      return selectedCourse(this);
    }
    return orElse();
  }
}

abstract class _SelectedCourse implements SelectedCourseEvent {
  const factory _SelectedCourse({required final int selectedCourse}) =
      _$SelectedCourseImpl;

  int get selectedCourse;
  @JsonKey(ignore: true)
  _$$SelectedCourseImplCopyWith<_$SelectedCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectedCourseState {
  int get selectedCourse => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedCourse) courseSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedCourse)? courseSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedCourse)? courseSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CourseSelected value) courseSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CourseSelected value)? courseSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CourseSelected value)? courseSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectedCourseStateCopyWith<SelectedCourseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedCourseStateCopyWith<$Res> {
  factory $SelectedCourseStateCopyWith(
          SelectedCourseState value, $Res Function(SelectedCourseState) then) =
      _$SelectedCourseStateCopyWithImpl<$Res, SelectedCourseState>;
  @useResult
  $Res call({int selectedCourse});
}

/// @nodoc
class _$SelectedCourseStateCopyWithImpl<$Res, $Val extends SelectedCourseState>
    implements $SelectedCourseStateCopyWith<$Res> {
  _$SelectedCourseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCourse = null,
  }) {
    return _then(_value.copyWith(
      selectedCourse: null == selectedCourse
          ? _value.selectedCourse
          : selectedCourse // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseSelectedImplCopyWith<$Res>
    implements $SelectedCourseStateCopyWith<$Res> {
  factory _$$CourseSelectedImplCopyWith(_$CourseSelectedImpl value,
          $Res Function(_$CourseSelectedImpl) then) =
      __$$CourseSelectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedCourse});
}

/// @nodoc
class __$$CourseSelectedImplCopyWithImpl<$Res>
    extends _$SelectedCourseStateCopyWithImpl<$Res, _$CourseSelectedImpl>
    implements _$$CourseSelectedImplCopyWith<$Res> {
  __$$CourseSelectedImplCopyWithImpl(
      _$CourseSelectedImpl _value, $Res Function(_$CourseSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCourse = null,
  }) {
    return _then(_$CourseSelectedImpl(
      selectedCourse: null == selectedCourse
          ? _value.selectedCourse
          : selectedCourse // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CourseSelectedImpl implements _CourseSelected {
  const _$CourseSelectedImpl({required this.selectedCourse});

  @override
  final int selectedCourse;

  @override
  String toString() {
    return 'SelectedCourseState.courseSelected(selectedCourse: $selectedCourse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseSelectedImpl &&
            (identical(other.selectedCourse, selectedCourse) ||
                other.selectedCourse == selectedCourse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCourse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseSelectedImplCopyWith<_$CourseSelectedImpl> get copyWith =>
      __$$CourseSelectedImplCopyWithImpl<_$CourseSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedCourse) courseSelected,
  }) {
    return courseSelected(selectedCourse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedCourse)? courseSelected,
  }) {
    return courseSelected?.call(selectedCourse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedCourse)? courseSelected,
    required TResult orElse(),
  }) {
    if (courseSelected != null) {
      return courseSelected(selectedCourse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CourseSelected value) courseSelected,
  }) {
    return courseSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CourseSelected value)? courseSelected,
  }) {
    return courseSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CourseSelected value)? courseSelected,
    required TResult orElse(),
  }) {
    if (courseSelected != null) {
      return courseSelected(this);
    }
    return orElse();
  }
}

abstract class _CourseSelected implements SelectedCourseState {
  const factory _CourseSelected({required final int selectedCourse}) =
      _$CourseSelectedImpl;

  @override
  int get selectedCourse;
  @override
  @JsonKey(ignore: true)
  _$$CourseSelectedImplCopyWith<_$CourseSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
