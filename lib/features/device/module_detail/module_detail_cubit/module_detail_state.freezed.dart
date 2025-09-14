// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ModuleDetailState {
  bool get isLoading => throw _privateConstructorUsedError;
  Module get module => throw _privateConstructorUsedError;
  List<Sensor>? get sensors => throw _privateConstructorUsedError;

  /// Create a copy of ModuleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModuleDetailStateCopyWith<ModuleDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleDetailStateCopyWith<$Res> {
  factory $ModuleDetailStateCopyWith(
          ModuleDetailState value, $Res Function(ModuleDetailState) then) =
      _$ModuleDetailStateCopyWithImpl<$Res, ModuleDetailState>;
  @useResult
  $Res call({bool isLoading, Module module, List<Sensor>? sensors});

  $ModuleCopyWith<$Res> get module;
}

/// @nodoc
class _$ModuleDetailStateCopyWithImpl<$Res, $Val extends ModuleDetailState>
    implements $ModuleDetailStateCopyWith<$Res> {
  _$ModuleDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModuleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? module = null,
    Object? sensors = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      module: null == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as Module,
      sensors: freezed == sensors
          ? _value.sensors
          : sensors // ignore: cast_nullable_to_non_nullable
              as List<Sensor>?,
    ) as $Val);
  }

  /// Create a copy of ModuleDetailState
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
abstract class _$$ModuleDetailStateImplCopyWith<$Res>
    implements $ModuleDetailStateCopyWith<$Res> {
  factory _$$ModuleDetailStateImplCopyWith(_$ModuleDetailStateImpl value,
          $Res Function(_$ModuleDetailStateImpl) then) =
      __$$ModuleDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Module module, List<Sensor>? sensors});

  @override
  $ModuleCopyWith<$Res> get module;
}

/// @nodoc
class __$$ModuleDetailStateImplCopyWithImpl<$Res>
    extends _$ModuleDetailStateCopyWithImpl<$Res, _$ModuleDetailStateImpl>
    implements _$$ModuleDetailStateImplCopyWith<$Res> {
  __$$ModuleDetailStateImplCopyWithImpl(_$ModuleDetailStateImpl _value,
      $Res Function(_$ModuleDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModuleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? module = null,
    Object? sensors = freezed,
  }) {
    return _then(_$ModuleDetailStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      module: null == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as Module,
      sensors: freezed == sensors
          ? _value._sensors
          : sensors // ignore: cast_nullable_to_non_nullable
              as List<Sensor>?,
    ));
  }
}

/// @nodoc

class _$ModuleDetailStateImpl extends _ModuleDetailState {
  _$ModuleDetailStateImpl(
      {this.isLoading = true,
      required this.module,
      final List<Sensor>? sensors})
      : _sensors = sensors,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Module module;
  final List<Sensor>? _sensors;
  @override
  List<Sensor>? get sensors {
    final value = _sensors;
    if (value == null) return null;
    if (_sensors is EqualUnmodifiableListView) return _sensors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ModuleDetailState(isLoading: $isLoading, module: $module, sensors: $sensors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleDetailStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.module, module) || other.module == module) &&
            const DeepCollectionEquality().equals(other._sensors, _sensors));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, module,
      const DeepCollectionEquality().hash(_sensors));

  /// Create a copy of ModuleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModuleDetailStateImplCopyWith<_$ModuleDetailStateImpl> get copyWith =>
      __$$ModuleDetailStateImplCopyWithImpl<_$ModuleDetailStateImpl>(
          this, _$identity);
}

abstract class _ModuleDetailState extends ModuleDetailState {
  factory _ModuleDetailState(
      {final bool isLoading,
      required final Module module,
      final List<Sensor>? sensors}) = _$ModuleDetailStateImpl;
  _ModuleDetailState._() : super._();

  @override
  bool get isLoading;
  @override
  Module get module;
  @override
  List<Sensor>? get sensors;

  /// Create a copy of ModuleDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModuleDetailStateImplCopyWith<_$ModuleDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
