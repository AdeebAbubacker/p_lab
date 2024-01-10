// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'academic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AcademicEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            int school,
            int reg_no,
            int sslc,
            int plus_one,
            int plus_two,
            int course_pref,
            int category,
            String details,
            String title,
            String description,
            String attachment)
        postAcademicInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            int school,
            int reg_no,
            int sslc,
            int plus_one,
            int plus_two,
            int course_pref,
            int category,
            String details,
            String title,
            String description,
            String attachment)?
        postAcademicInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            int school,
            int reg_no,
            int sslc,
            int plus_one,
            int plus_two,
            int course_pref,
            int category,
            String details,
            String title,
            String description,
            String attachment)?
        postAcademicInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(postAcademicInfo value) postAcademicInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(postAcademicInfo value)? postAcademicInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(postAcademicInfo value)? postAcademicInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcademicEventCopyWith<$Res> {
  factory $AcademicEventCopyWith(
          AcademicEvent value, $Res Function(AcademicEvent) then) =
      _$AcademicEventCopyWithImpl<$Res, AcademicEvent>;
}

/// @nodoc
class _$AcademicEventCopyWithImpl<$Res, $Val extends AcademicEvent>
    implements $AcademicEventCopyWith<$Res> {
  _$AcademicEventCopyWithImpl(this._value, this._then);

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
    extends _$AcademicEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AcademicEvent.started()';
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
    required TResult Function(
            int school,
            int reg_no,
            int sslc,
            int plus_one,
            int plus_two,
            int course_pref,
            int category,
            String details,
            String title,
            String description,
            String attachment)
        postAcademicInfo,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            int school,
            int reg_no,
            int sslc,
            int plus_one,
            int plus_two,
            int course_pref,
            int category,
            String details,
            String title,
            String description,
            String attachment)?
        postAcademicInfo,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            int school,
            int reg_no,
            int sslc,
            int plus_one,
            int plus_two,
            int course_pref,
            int category,
            String details,
            String title,
            String description,
            String attachment)?
        postAcademicInfo,
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
    required TResult Function(postAcademicInfo value) postAcademicInfo,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(postAcademicInfo value)? postAcademicInfo,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(postAcademicInfo value)? postAcademicInfo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AcademicEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$postAcademicInfoImplCopyWith<$Res> {
  factory _$$postAcademicInfoImplCopyWith(_$postAcademicInfoImpl value,
          $Res Function(_$postAcademicInfoImpl) then) =
      __$$postAcademicInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int school,
      int reg_no,
      int sslc,
      int plus_one,
      int plus_two,
      int course_pref,
      int category,
      String details,
      String title,
      String description,
      String attachment});
}

/// @nodoc
class __$$postAcademicInfoImplCopyWithImpl<$Res>
    extends _$AcademicEventCopyWithImpl<$Res, _$postAcademicInfoImpl>
    implements _$$postAcademicInfoImplCopyWith<$Res> {
  __$$postAcademicInfoImplCopyWithImpl(_$postAcademicInfoImpl _value,
      $Res Function(_$postAcademicInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? school = null,
    Object? reg_no = null,
    Object? sslc = null,
    Object? plus_one = null,
    Object? plus_two = null,
    Object? course_pref = null,
    Object? category = null,
    Object? details = null,
    Object? title = null,
    Object? description = null,
    Object? attachment = null,
  }) {
    return _then(_$postAcademicInfoImpl(
      school: null == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as int,
      reg_no: null == reg_no
          ? _value.reg_no
          : reg_no // ignore: cast_nullable_to_non_nullable
              as int,
      sslc: null == sslc
          ? _value.sslc
          : sslc // ignore: cast_nullable_to_non_nullable
              as int,
      plus_one: null == plus_one
          ? _value.plus_one
          : plus_one // ignore: cast_nullable_to_non_nullable
              as int,
      plus_two: null == plus_two
          ? _value.plus_two
          : plus_two // ignore: cast_nullable_to_non_nullable
              as int,
      course_pref: null == course_pref
          ? _value.course_pref
          : course_pref // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      attachment: null == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$postAcademicInfoImpl implements postAcademicInfo {
  const _$postAcademicInfoImpl(
      {required this.school,
      required this.reg_no,
      required this.sslc,
      required this.plus_one,
      required this.plus_two,
      required this.course_pref,
      required this.category,
      required this.details,
      required this.title,
      required this.description,
      required this.attachment});

  @override
  final int school;
  @override
  final int reg_no;
  @override
  final int sslc;
  @override
  final int plus_one;
  @override
  final int plus_two;
  @override
  final int course_pref;
  @override
  final int category;
  @override
  final String details;
  @override
  final String title;
  @override
  final String description;
  @override
  final String attachment;

  @override
  String toString() {
    return 'AcademicEvent.postAcademicInfo(school: $school, reg_no: $reg_no, sslc: $sslc, plus_one: $plus_one, plus_two: $plus_two, course_pref: $course_pref, category: $category, details: $details, title: $title, description: $description, attachment: $attachment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$postAcademicInfoImpl &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.reg_no, reg_no) || other.reg_no == reg_no) &&
            (identical(other.sslc, sslc) || other.sslc == sslc) &&
            (identical(other.plus_one, plus_one) ||
                other.plus_one == plus_one) &&
            (identical(other.plus_two, plus_two) ||
                other.plus_two == plus_two) &&
            (identical(other.course_pref, course_pref) ||
                other.course_pref == course_pref) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, school, reg_no, sslc, plus_one,
      plus_two, course_pref, category, details, title, description, attachment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$postAcademicInfoImplCopyWith<_$postAcademicInfoImpl> get copyWith =>
      __$$postAcademicInfoImplCopyWithImpl<_$postAcademicInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            int school,
            int reg_no,
            int sslc,
            int plus_one,
            int plus_two,
            int course_pref,
            int category,
            String details,
            String title,
            String description,
            String attachment)
        postAcademicInfo,
  }) {
    return postAcademicInfo(school, reg_no, sslc, plus_one, plus_two,
        course_pref, category, details, title, description, attachment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            int school,
            int reg_no,
            int sslc,
            int plus_one,
            int plus_two,
            int course_pref,
            int category,
            String details,
            String title,
            String description,
            String attachment)?
        postAcademicInfo,
  }) {
    return postAcademicInfo?.call(school, reg_no, sslc, plus_one, plus_two,
        course_pref, category, details, title, description, attachment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            int school,
            int reg_no,
            int sslc,
            int plus_one,
            int plus_two,
            int course_pref,
            int category,
            String details,
            String title,
            String description,
            String attachment)?
        postAcademicInfo,
    required TResult orElse(),
  }) {
    if (postAcademicInfo != null) {
      return postAcademicInfo(school, reg_no, sslc, plus_one, plus_two,
          course_pref, category, details, title, description, attachment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(postAcademicInfo value) postAcademicInfo,
  }) {
    return postAcademicInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(postAcademicInfo value)? postAcademicInfo,
  }) {
    return postAcademicInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(postAcademicInfo value)? postAcademicInfo,
    required TResult orElse(),
  }) {
    if (postAcademicInfo != null) {
      return postAcademicInfo(this);
    }
    return orElse();
  }
}

abstract class postAcademicInfo implements AcademicEvent {
  const factory postAcademicInfo(
      {required final int school,
      required final int reg_no,
      required final int sslc,
      required final int plus_one,
      required final int plus_two,
      required final int course_pref,
      required final int category,
      required final String details,
      required final String title,
      required final String description,
      required final String attachment}) = _$postAcademicInfoImpl;

  int get school;
  int get reg_no;
  int get sslc;
  int get plus_one;
  int get plus_two;
  int get course_pref;
  int get category;
  String get details;
  String get title;
  String get description;
  String get attachment;
  @JsonKey(ignore: true)
  _$$postAcademicInfoImplCopyWith<_$postAcademicInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AcademicState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  AcademicDataModel get academicData => throw _privateConstructorUsedError;
  Option<Either<MainFailure, AcademicDataModel>> get successorFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AcademicStateCopyWith<AcademicState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcademicStateCopyWith<$Res> {
  factory $AcademicStateCopyWith(
          AcademicState value, $Res Function(AcademicState) then) =
      _$AcademicStateCopyWithImpl<$Res, AcademicState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      AcademicDataModel academicData,
      Option<Either<MainFailure, AcademicDataModel>> successorFailure});
}

/// @nodoc
class _$AcademicStateCopyWithImpl<$Res, $Val extends AcademicState>
    implements $AcademicStateCopyWith<$Res> {
  _$AcademicStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? academicData = null,
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
      academicData: null == academicData
          ? _value.academicData
          : academicData // ignore: cast_nullable_to_non_nullable
              as AcademicDataModel,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, AcademicDataModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcadenicStateImplCopyWith<$Res>
    implements $AcademicStateCopyWith<$Res> {
  factory _$$AcadenicStateImplCopyWith(
          _$AcadenicStateImpl value, $Res Function(_$AcadenicStateImpl) then) =
      __$$AcadenicStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      AcademicDataModel academicData,
      Option<Either<MainFailure, AcademicDataModel>> successorFailure});
}

/// @nodoc
class __$$AcadenicStateImplCopyWithImpl<$Res>
    extends _$AcademicStateCopyWithImpl<$Res, _$AcadenicStateImpl>
    implements _$$AcadenicStateImplCopyWith<$Res> {
  __$$AcadenicStateImplCopyWithImpl(
      _$AcadenicStateImpl _value, $Res Function(_$AcadenicStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? academicData = null,
    Object? successorFailure = null,
  }) {
    return _then(_$AcadenicStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      academicData: null == academicData
          ? _value.academicData
          : academicData // ignore: cast_nullable_to_non_nullable
              as AcademicDataModel,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, AcademicDataModel>>,
    ));
  }
}

/// @nodoc

class _$AcadenicStateImpl implements _AcadenicState {
  const _$AcadenicStateImpl(
      {required this.isLoading,
      required this.isError,
      required this.academicData,
      required this.successorFailure});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final AcademicDataModel academicData;
  @override
  final Option<Either<MainFailure, AcademicDataModel>> successorFailure;

  @override
  String toString() {
    return 'AcademicState(isLoading: $isLoading, isError: $isError, academicData: $academicData, successorFailure: $successorFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcadenicStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.academicData, academicData) ||
                other.academicData == academicData) &&
            (identical(other.successorFailure, successorFailure) ||
                other.successorFailure == successorFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isError, academicData, successorFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcadenicStateImplCopyWith<_$AcadenicStateImpl> get copyWith =>
      __$$AcadenicStateImplCopyWithImpl<_$AcadenicStateImpl>(this, _$identity);
}

abstract class _AcadenicState implements AcademicState {
  const factory _AcadenicState(
      {required final bool isLoading,
      required final bool isError,
      required final AcademicDataModel academicData,
      required final Option<Either<MainFailure, AcademicDataModel>>
          successorFailure}) = _$AcadenicStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  AcademicDataModel get academicData;
  @override
  Option<Either<MainFailure, AcademicDataModel>> get successorFailure;
  @override
  @JsonKey(ignore: true)
  _$$AcadenicStateImplCopyWith<_$AcadenicStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
