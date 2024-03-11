

import 'package:pokebook/models/poke_model.dart';
import 'package:pokebook/utils/dummy_data.dart';

class PokeState {
  final List<PokeModel> pokemons;
  final List<PokeModel> filteredPokemons;
  final int currentPage ;

  const PokeState({
    required this.pokemons,
    required this.filteredPokemons,
    required this.currentPage
  });

  factory PokeState.initial() {
    return PokeState(
      pokemons: generateDummyData(),
      filteredPokemons: generateDummyData(),
      currentPage: 0
    );
  }
}