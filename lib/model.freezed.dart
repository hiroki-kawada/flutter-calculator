// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Model {
  String get display => throw _privateConstructorUsedError;
  double? get firstOperand => throw _privateConstructorUsedError;
  double? get secondOperand => throw _privateConstructorUsedError;
  String? get operator => throw _privateConstructorUsedError;

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelCopyWith<Model> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelCopyWith<$Res> {
  factory $ModelCopyWith(Model value, $Res Function(Model) then) =
      _$ModelCopyWithImpl<$Res, Model>;
  @useResult
  $Res call(
      {String display,
      double? firstOperand,
      double? secondOperand,
      String? operator});
}

/// @nodoc
class _$ModelCopyWithImpl<$Res, $Val extends Model>
    implements $ModelCopyWith<$Res> {
  _$ModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? display = null,
    Object? firstOperand = freezed,
    Object? secondOperand = freezed,
    Object? operator = freezed,
  }) {
    return _then(_value.copyWith(
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String,
      firstOperand: freezed == firstOperand
          ? _value.firstOperand
          : firstOperand // ignore: cast_nullable_to_non_nullable
              as double?,
      secondOperand: freezed == secondOperand
          ? _value.secondOperand
          : secondOperand // ignore: cast_nullable_to_non_nullable
              as double?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelImplCopyWith<$Res> implements $ModelCopyWith<$Res> {
  factory _$$ModelImplCopyWith(
          _$ModelImpl value, $Res Function(_$ModelImpl) then) =
      __$$ModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String display,
      double? firstOperand,
      double? secondOperand,
      String? operator});
}

/// @nodoc
class __$$ModelImplCopyWithImpl<$Res>
    extends _$ModelCopyWithImpl<$Res, _$ModelImpl>
    implements _$$ModelImplCopyWith<$Res> {
  __$$ModelImplCopyWithImpl(
      _$ModelImpl _value, $Res Function(_$ModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? display = null,
    Object? firstOperand = freezed,
    Object? secondOperand = freezed,
    Object? operator = freezed,
  }) {
    return _then(_$ModelImpl(
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String,
      firstOperand: freezed == firstOperand
          ? _value.firstOperand
          : firstOperand // ignore: cast_nullable_to_non_nullable
              as double?,
      secondOperand: freezed == secondOperand
          ? _value.secondOperand
          : secondOperand // ignore: cast_nullable_to_non_nullable
              as double?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ModelImpl implements _Model {
  const _$ModelImpl(
      {required this.display,
      this.firstOperand,
      this.secondOperand,
      this.operator});

  @override
  final String display;
  @override
  final double? firstOperand;
  @override
  final double? secondOperand;
  @override
  final String? operator;

  @override
  String toString() {
    return 'Model(display: $display, firstOperand: $firstOperand, secondOperand: $secondOperand, operator: $operator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelImpl &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.firstOperand, firstOperand) ||
                other.firstOperand == firstOperand) &&
            (identical(other.secondOperand, secondOperand) ||
                other.secondOperand == secondOperand) &&
            (identical(other.operator, operator) ||
                other.operator == operator));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, display, firstOperand, secondOperand, operator);

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelImplCopyWith<_$ModelImpl> get copyWith =>
      __$$ModelImplCopyWithImpl<_$ModelImpl>(this, _$identity);
}

abstract class _Model implements Model {
  const factory _Model(
      {required final String display,
      final double? firstOperand,
      final double? secondOperand,
      final String? operator}) = _$ModelImpl;

  @override
  String get display;
  @override
  double? get firstOperand;
  @override
  double? get secondOperand;
  @override
  String? get operator;

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelImplCopyWith<_$ModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
