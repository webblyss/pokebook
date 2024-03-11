// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poke_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokeModel {
  String get name => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;
  Map<String, String> get about => throw _privateConstructorUsedError;
  Map<String, int> get statistics => throw _privateConstructorUsedError;
  List<Map<String, String>> get similar =>
      throw _privateConstructorUsedError; // Modify this line
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokeModelCopyWith<PokeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeModelCopyWith<$Res> {
  factory $PokeModelCopyWith(PokeModel value, $Res Function(PokeModel) then) =
      _$PokeModelCopyWithImpl<$Res, PokeModel>;
  @useResult
  $Res call(
      {String name,
      List<String> types,
      Map<String, String> about,
      Map<String, int> statistics,
      List<Map<String, String>> similar,
      String imageUrl});
}

/// @nodoc
class _$PokeModelCopyWithImpl<$Res, $Val extends PokeModel>
    implements $PokeModelCopyWith<$Res> {
  _$PokeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? types = null,
    Object? about = null,
    Object? statistics = null,
    Object? similar = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      similar: null == similar
          ? _value.similar
          : similar // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokeModelImplCopyWith<$Res>
    implements $PokeModelCopyWith<$Res> {
  factory _$$PokeModelImplCopyWith(
          _$PokeModelImpl value, $Res Function(_$PokeModelImpl) then) =
      __$$PokeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<String> types,
      Map<String, String> about,
      Map<String, int> statistics,
      List<Map<String, String>> similar,
      String imageUrl});
}

/// @nodoc
class __$$PokeModelImplCopyWithImpl<$Res>
    extends _$PokeModelCopyWithImpl<$Res, _$PokeModelImpl>
    implements _$$PokeModelImplCopyWith<$Res> {
  __$$PokeModelImplCopyWithImpl(
      _$PokeModelImpl _value, $Res Function(_$PokeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? types = null,
    Object? about = null,
    Object? statistics = null,
    Object? similar = null,
    Object? imageUrl = null,
  }) {
    return _then(_$PokeModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      about: null == about
          ? _value._about
          : about // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      statistics: null == statistics
          ? _value._statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      similar: null == similar
          ? _value._similar
          : similar // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PokeModelImpl with DiagnosticableTreeMixin implements _PokeModel {
  const _$PokeModelImpl(
      {required this.name,
      required final List<String> types,
      required final Map<String, String> about,
      required final Map<String, int> statistics,
      required final List<Map<String, String>> similar,
      required this.imageUrl})
      : _types = types,
        _about = about,
        _statistics = statistics,
        _similar = similar;

  @override
  final String name;
  final List<String> _types;
  @override
  List<String> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final Map<String, String> _about;
  @override
  Map<String, String> get about {
    if (_about is EqualUnmodifiableMapView) return _about;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_about);
  }

  final Map<String, int> _statistics;
  @override
  Map<String, int> get statistics {
    if (_statistics is EqualUnmodifiableMapView) return _statistics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_statistics);
  }

  final List<Map<String, String>> _similar;
  @override
  List<Map<String, String>> get similar {
    if (_similar is EqualUnmodifiableListView) return _similar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_similar);
  }

// Modify this line
  @override
  final String imageUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokeModel(name: $name, types: $types, about: $about, statistics: $statistics, similar: $similar, imageUrl: $imageUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokeModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('types', types))
      ..add(DiagnosticsProperty('about', about))
      ..add(DiagnosticsProperty('statistics', statistics))
      ..add(DiagnosticsProperty('similar', similar))
      ..add(DiagnosticsProperty('imageUrl', imageUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokeModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._about, _about) &&
            const DeepCollectionEquality()
                .equals(other._statistics, _statistics) &&
            const DeepCollectionEquality().equals(other._similar, _similar) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_about),
      const DeepCollectionEquality().hash(_statistics),
      const DeepCollectionEquality().hash(_similar),
      imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokeModelImplCopyWith<_$PokeModelImpl> get copyWith =>
      __$$PokeModelImplCopyWithImpl<_$PokeModelImpl>(this, _$identity);
}

abstract class _PokeModel implements PokeModel {
  const factory _PokeModel(
      {required final String name,
      required final List<String> types,
      required final Map<String, String> about,
      required final Map<String, int> statistics,
      required final List<Map<String, String>> similar,
      required final String imageUrl}) = _$PokeModelImpl;

  @override
  String get name;
  @override
  List<String> get types;
  @override
  Map<String, String> get about;
  @override
  Map<String, int> get statistics;
  @override
  List<Map<String, String>> get similar;
  @override // Modify this line
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$PokeModelImplCopyWith<_$PokeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
