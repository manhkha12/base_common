// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_menu_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ModuleMenuState {
  bool get isUpdating => throw _privateConstructorUsedError;
  Module get module => throw _privateConstructorUsedError;

  /// Create a copy of ModuleMenuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModuleMenuStateCopyWith<ModuleMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleMenuStateCopyWith<$Res> {
  factory $ModuleMenuStateCopyWith(
          ModuleMenuState value, $Res Function(ModuleMenuState) then) =
      _$ModuleMenuStateCopyWithImpl<$Res, ModuleMenuState>;
  @useResult
  $Res call({bool isUpdating, Module module});

  $ModuleCopyWith<$Res> get module;
}

/// @nodoc
class _$ModuleMenuStateCopyWithImpl<$Res, $Val extends ModuleMenuState>
    implements $ModuleMenuStateCopyWith<$Res> {
  _$ModuleMenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModuleMenuState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUpdating = null,
    Object? module = null,
  }) {
    return _then(_value.copyWith(
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
      module: null == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as Module,
    ) as $Val);
  }

  /// Create a copy of ModuleMenuState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModuleCopyWith<$Res> get module {
    return $ModuleCopyWith<$Res>(_value.module, (value) {
      return _then(_value.copyWith(module: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModuleMenuStateImplCopyWith<$Res>
    implements $ModuleMenuStateCopyWith<$Res> {
  factory _$$ModuleMenuStateImplCopyWith(_$ModuleMenuStateImpl value,
          $Res Function(_$ModuleMenuStateImpl) then) =
      __$$ModuleMenuStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isUpdating, Module module});

  @override
  $ModuleCopyWith<$Res> get module;
}

/// @nodoc
class __$$ModuleMenuStateImplCopyWithImpl<$Res>
    extends _$ModuleMenuStateCopyWithImpl<$Res, _$ModuleMenuStateImpl>
    implements _$$ModuleMenuStateImplCopyWith<$Res> {
  __$$ModuleMenuStateImplCopyWithImpl(
      _$ModuleMenuStateImpl _value, $Res Function(_$ModuleMenuStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModuleMenuState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUpdating = null,
    Object? module = null,
  }) {
    return _then(_$ModuleMenuStateImpl(
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
      module: null == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as Module,
    ));
  }
}

/// @nodoc

class _$ModuleMenuStateImpl extends _ModuleMenuState {
  _$ModuleMenuStateImpl({this.isUpdating = false, required this.module})
      : super._();

  @override
  @JsonKey()
  final bool isUpdating;
  @override
  final Module module;

  @override
  String toString() {
    return 'ModuleMenuState(isUpdating: $isUpdating, module: $module)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleMenuStateImpl &&
            (identical(other.isUpdating, isUpdating) ||
                other.isUpdating == isUpdating) &&
            (identical(other.module, module) || other.module == module));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isUpdating, module);

  /// Create a copy of ModuleMenuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModuleMenuStateImplCopyWith<_$ModuleMenuStateImpl> get copyWith =>
      __$$ModuleMenuStateImplCopyWithImpl<_$ModuleMenuStateImpl>(
          this, _$identity);
}

abstract class _ModuleMenuState extends ModuleMenuState {
  factory _ModuleMenuState(
      {final bool isUpdating,
      required final Module module}) = _$ModuleMenuStateImpl;
  _ModuleMenuState._() : super._();

  @override
  bool get isUpdating;
  @override
  Module get module;

  /// Create a copy of ModuleMenuState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModuleMenuStateImplCopyWith<_$ModuleMenuStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
