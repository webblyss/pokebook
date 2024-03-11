// poke_model.dart
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'poke_model.freezed.dart';

@freezed
class PokeModel with _$PokeModel {
  const factory PokeModel({
    required String name,
    required List<String> types,
    required Map<String, String> about,
    required Map<String, int> statistics,
    required List<Map<String, String>> similar, // Modify this line
    required String imageUrl,
  }) = _PokeModel;
}
