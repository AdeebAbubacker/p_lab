// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonalInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String name,
            String gender,
            String dob,
            String phone,
            String address,
            String email,
            String bankaccname,
            String bankaccno,
            int bankid,
            String bankifsc)
        postPersonalInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String name,
            String gender,
            String dob,
            String phone,
            String address,
            String email,
            String bankaccname,
            String bankaccno,
            int bankid,
            String bankifsc)?
        postPersonalInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String name,
            String gender,
            String dob,
            String phone,
            String address,
            String email,
            String bankaccname,
            String bankaccno,
            int bankid,
            String bankifsc)?
        postPersonalInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PostPersonalInfo value) postPersonalInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(PostPersonalInfo value)? postPersonalInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PostPersonalInfo value)? postPersonalInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInfoEventCopyWith<$Res> {
  factory $PersonalInfoEventCopyWith(
          PersonalInfoEvent value, $Res Function(PersonalInfoEvent) then) =
      _$PersonalInfoEventCopyWithImpl<$Res, PersonalInfoEvent>;
}

/// @nodoc
class _$PersonalInfoEventCopyWithImpl<$Res, $Val extends PersonalInfoEvent>
    implements $PersonalInfoEventCopyWith<$Res> {
  _$PersonalInfoEventCopyWithImpl(this._value, this._then);

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
    extends _$PersonalInfoEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'PersonalInfoEvent.started()';
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
            String name,
            String gender,
            String dob,
            String phone,
            String address,
            String email,
            String bankaccname,
            String bankaccno,
            int bankid,
            String bankifsc)
        postPersonalInfo,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String name,
            String gender,
            String dob,
            String phone,
            String address,
            String email,
            String bankaccname,
            String bankaccno,
            int bankid,
            String bankifsc)?
        postPersonalInfo,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String name,
            String gender,
            String dob,
            String phone,
            String address,
            String email,
            String bankaccname,
            String bankaccno,
            int bankid,
            String bankifsc)?
        postPersonalInfo,
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
    required TResult Function(PostPersonalInfo value) postPersonalInfo,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(PostPersonalInfo value)? postPersonalInfo,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PostPersonalInfo value)? postPersonalInfo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PersonalInfoEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$PostPersonalInfoImplCopyWith<$Res> {
  factory _$$PostPersonalInfoImplCopyWith(_$PostPersonalInfoImpl value,
          $Res Function(_$PostPersonalInfoImpl) then) =
      __$$PostPersonalInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String gender,
      String dob,
      String phone,
      String address,
      String email,
      String bankaccname,
      String bankaccno,
      int bankid,
      String bankifsc});
}

/// @nodoc
class __$$PostPersonalInfoImplCopyWithImpl<$Res>
    extends _$PersonalInfoEventCopyWithImpl<$Res, _$PostPersonalInfoImpl>
    implements _$$PostPersonalInfoImplCopyWith<$Res> {
  __$$PostPersonalInfoImplCopyWithImpl(_$PostPersonalInfoImpl _value,
      $Res Function(_$PostPersonalInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = null,
    Object? dob = null,
    Object? phone = null,
    Object? address = null,
    Object? email = null,
    Object? bankaccname = null,
    Object? bankaccno = null,
    Object? bankid = null,
    Object? bankifsc = null,
  }) {
    return _then(_$PostPersonalInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      bankaccname: null == bankaccname
          ? _value.bankaccname
          : bankaccname // ignore: cast_nullable_to_non_nullable
              as String,
      bankaccno: null == bankaccno
          ? _value.bankaccno
          : bankaccno // ignore: cast_nullable_to_non_nullable
              as String,
      bankid: null == bankid
          ? _value.bankid
          : bankid // ignore: cast_nullable_to_non_nullable
              as int,
      bankifsc: null == bankifsc
          ? _value.bankifsc
          : bankifsc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostPersonalInfoImpl implements PostPersonalInfo {
  const _$PostPersonalInfoImpl(
      {required this.name,
      required this.gender,
      required this.dob,
      required this.phone,
      required this.address,
      required this.email,
      required this.bankaccname,
      required this.bankaccno,
      required this.bankid,
      required this.bankifsc});

  @override
  final String name;
  @override
  final String gender;
  @override
  final String dob;
  @override
  final String phone;
  @override
  final String address;
  @override
  final String email;
  @override
  final String bankaccname;
  @override
  final String bankaccno;
  @override
  final int bankid;
  @override
  final String bankifsc;

  @override
  String toString() {
    return 'PersonalInfoEvent.postPersonalInfo(name: $name, gender: $gender, dob: $dob, phone: $phone, address: $address, email: $email, bankaccname: $bankaccname, bankaccno: $bankaccno, bankid: $bankid, bankifsc: $bankifsc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostPersonalInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.bankaccname, bankaccname) ||
                other.bankaccname == bankaccname) &&
            (identical(other.bankaccno, bankaccno) ||
                other.bankaccno == bankaccno) &&
            (identical(other.bankid, bankid) || other.bankid == bankid) &&
            (identical(other.bankifsc, bankifsc) ||
                other.bankifsc == bankifsc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, gender, dob, phone,
      address, email, bankaccname, bankaccno, bankid, bankifsc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostPersonalInfoImplCopyWith<_$PostPersonalInfoImpl> get copyWith =>
      __$$PostPersonalInfoImplCopyWithImpl<_$PostPersonalInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String name,
            String gender,
            String dob,
            String phone,
            String address,
            String email,
            String bankaccname,
            String bankaccno,
            int bankid,
            String bankifsc)
        postPersonalInfo,
  }) {
    return postPersonalInfo(name, gender, dob, phone, address, email,
        bankaccname, bankaccno, bankid, bankifsc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
            String name,
            String gender,
            String dob,
            String phone,
            String address,
            String email,
            String bankaccname,
            String bankaccno,
            int bankid,
            String bankifsc)?
        postPersonalInfo,
  }) {
    return postPersonalInfo?.call(name, gender, dob, phone, address, email,
        bankaccname, bankaccno, bankid, bankifsc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String name,
            String gender,
            String dob,
            String phone,
            String address,
            String email,
            String bankaccname,
            String bankaccno,
            int bankid,
            String bankifsc)?
        postPersonalInfo,
    required TResult orElse(),
  }) {
    if (postPersonalInfo != null) {
      return postPersonalInfo(name, gender, dob, phone, address, email,
          bankaccname, bankaccno, bankid, bankifsc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PostPersonalInfo value) postPersonalInfo,
  }) {
    return postPersonalInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(PostPersonalInfo value)? postPersonalInfo,
  }) {
    return postPersonalInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PostPersonalInfo value)? postPersonalInfo,
    required TResult orElse(),
  }) {
    if (postPersonalInfo != null) {
      return postPersonalInfo(this);
    }
    return orElse();
  }
}

abstract class PostPersonalInfo implements PersonalInfoEvent {
  const factory PostPersonalInfo(
      {required final String name,
      required final String gender,
      required final String dob,
      required final String phone,
      required final String address,
      required final String email,
      required final String bankaccname,
      required final String bankaccno,
      required final int bankid,
      required final String bankifsc}) = _$PostPersonalInfoImpl;

  String get name;
  String get gender;
  String get dob;
  String get phone;
  String get address;
  String get email;
  String get bankaccname;
  String get bankaccno;
  int get bankid;
  String get bankifsc;
  @JsonKey(ignore: true)
  _$$PostPersonalInfoImplCopyWith<_$PostPersonalInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PersonalInfoState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  PersonalInfo get personalInfo => throw _privateConstructorUsedError;
  Option<Either<MainFailure, PersonalInfo>> get successorFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonalInfoStateCopyWith<PersonalInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInfoStateCopyWith<$Res> {
  factory $PersonalInfoStateCopyWith(
          PersonalInfoState value, $Res Function(PersonalInfoState) then) =
      _$PersonalInfoStateCopyWithImpl<$Res, PersonalInfoState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      PersonalInfo personalInfo,
      Option<Either<MainFailure, PersonalInfo>> successorFailure});
}

/// @nodoc
class _$PersonalInfoStateCopyWithImpl<$Res, $Val extends PersonalInfoState>
    implements $PersonalInfoStateCopyWith<$Res> {
  _$PersonalInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? personalInfo = null,
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
      personalInfo: null == personalInfo
          ? _value.personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as PersonalInfo,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, PersonalInfo>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $PersonalInfoStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      PersonalInfo personalInfo,
      Option<Either<MainFailure, PersonalInfo>> successorFailure});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$PersonalInfoStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? personalInfo = null,
    Object? successorFailure = null,
  }) {
    return _then(_$AuthStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      personalInfo: null == personalInfo
          ? _value.personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as PersonalInfo,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, PersonalInfo>>,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {required this.isLoading,
      required this.isError,
      required this.personalInfo,
      required this.successorFailure});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final PersonalInfo personalInfo;
  @override
  final Option<Either<MainFailure, PersonalInfo>> successorFailure;

  @override
  String toString() {
    return 'PersonalInfoState(isLoading: $isLoading, isError: $isError, personalInfo: $personalInfo, successorFailure: $successorFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.personalInfo, personalInfo) ||
                other.personalInfo == personalInfo) &&
            (identical(other.successorFailure, successorFailure) ||
                other.successorFailure == successorFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isError, personalInfo, successorFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements PersonalInfoState {
  const factory _AuthState(
      {required final bool isLoading,
      required final bool isError,
      required final PersonalInfo personalInfo,
      required final Option<Either<MainFailure, PersonalInfo>>
          successorFailure}) = _$AuthStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  PersonalInfo get personalInfo;
  @override
  Option<Either<MainFailure, PersonalInfo>> get successorFailure;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
