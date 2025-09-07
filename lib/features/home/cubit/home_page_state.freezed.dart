// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomePageState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<dynamic> get images => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  Module? get module => throw _privateConstructorUsedError;
  String? get homeId => throw _privateConstructorUsedError;
  List<Room> get rooms => throw _privateConstructorUsedError;
  WeatherForecast? get weatherForecast => throw _privateConstructorUsedError;
  AppError? get error => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<dynamic> images,
      String? name,
      String? image,
      Module? module,
      String? homeId,
      List<Room> rooms,
      WeatherForecast? weatherForecast,
      AppError? error,
      bool isSuccess});

  $ModuleCopyWith<$Res>? get module;
  $WeatherForecastCopyWith<$Res>? get weatherForecast;
  $AppErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? images = null,
    Object? name = freezed,
    Object? image = freezed,
    Object? module = freezed,
    Object? homeId = freezed,
    Object? rooms = null,
    Object? weatherForecast = freezed,
    Object? error = freezed,
    Object? isSuccess = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      module: freezed == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as Module?,
      homeId: freezed == homeId
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as String?,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
      weatherForecast: freezed == weatherForecast
          ? _value.weatherForecast
          : weatherForecast // ignore: cast_nullable_to_non_nullable
              as WeatherForecast?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError?,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModuleCopyWith<$Res>? get module {
    if (_value.module == null) {
      return null;
    }

    return $ModuleCopyWith<$Res>(_value.module!, (value) {
      return _then(_value.copyWith(module: value) as $Val);
    });
  }

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherForecastCopyWith<$Res>? get weatherForecast {
    if (_value.weatherForecast == null) {
      return null;
    }

    return $WeatherForecastCopyWith<$Res>(_value.weatherForecast!, (value) {
      return _then(_value.copyWith(weatherForecast: value) as $Val);
    });
  }

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $AppErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomePageStateImplCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$HomePageStateImplCopyWith(
          _$HomePageStateImpl value, $Res Function(_$HomePageStateImpl) then) =
      __$$HomePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<dynamic> images,
      String? name,
      String? image,
      Module? module,
      String? homeId,
      List<Room> rooms,
      WeatherForecast? weatherForecast,
      AppError? error,
      bool isSuccess});

  @override
  $ModuleCopyWith<$Res>? get module;
  @override
  $WeatherForecastCopyWith<$Res>? get weatherForecast;
  @override
  $AppErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$HomePageStateImplCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageStateImpl>
    implements _$$HomePageStateImplCopyWith<$Res> {
  __$$HomePageStateImplCopyWithImpl(
      _$HomePageStateImpl _value, $Res Function(_$HomePageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? images = null,
    Object? name = freezed,
    Object? image = freezed,
    Object? module = freezed,
    Object? homeId = freezed,
    Object? rooms = null,
    Object? weatherForecast = freezed,
    Object? error = freezed,
    Object? isSuccess = null,
  }) {
    return _then(_$HomePageStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      module: freezed == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as Module?,
      homeId: freezed == homeId
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as String?,
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
      weatherForecast: freezed == weatherForecast
          ? _value.weatherForecast
          : weatherForecast // ignore: cast_nullable_to_non_nullable
              as WeatherForecast?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError?,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomePageStateImpl extends _HomePageState {
  _$HomePageStateImpl(
      {this.isLoading = false,
      final List<dynamic> images = const [],
      this.name,
      this.image,
      this.module,
      this.homeId,
      final List<Room> rooms = const [],
      this.weatherForecast,
      this.error,
      this.isSuccess = false})
      : _images = images,
        _rooms = rooms,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  final List<dynamic> _images;
  @override
  @JsonKey()
  List<dynamic> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String? name;
  @override
  final String? image;
  @override
  final Module? module;
  @override
  final String? homeId;
  final List<Room> _rooms;
  @override
  @JsonKey()
  List<Room> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  final WeatherForecast? weatherForecast;
  @override
  final AppError? error;
  @override
  @JsonKey()
  final bool isSuccess;

  @override
  String toString() {
    return 'HomePageState(isLoading: $isLoading, images: $images, name: $name, image: $image, module: $module, homeId: $homeId, rooms: $rooms, weatherForecast: $weatherForecast, error: $error, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.module, module) || other.module == module) &&
            (identical(other.homeId, homeId) || other.homeId == homeId) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            (identical(other.weatherForecast, weatherForecast) ||
                other.weatherForecast == weatherForecast) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_images),
      name,
      image,
      module,
      homeId,
      const DeepCollectionEquality().hash(_rooms),
      weatherForecast,
      error,
      isSuccess);

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      __$$HomePageStateImplCopyWithImpl<_$HomePageStateImpl>(this, _$identity);
}

abstract class _HomePageState extends HomePageState {
  factory _HomePageState(
      {final bool isLoading,
      final List<dynamic> images,
      final String? name,
      final String? image,
      final Module? module,
      final String? homeId,
      final List<Room> rooms,
      final WeatherForecast? weatherForecast,
      final AppError? error,
      final bool isSuccess}) = _$HomePageStateImpl;
  _HomePageState._() : super._();

  @override
  bool get isLoading;
  @override
  List<dynamic> get images;
  @override
  String? get name;
  @override
  String? get image;
  @override
  Module? get module;
  @override
  String? get homeId;
  @override
  List<Room> get rooms;
  @override
  WeatherForecast? get weatherForecast;
  @override
  AppError? get error;
  @override
  bool get isSuccess;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
