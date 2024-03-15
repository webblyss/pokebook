import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/events/poke_events.dart';
import 'package:pokebook/models/poke_model.dart';
import 'package:pokebook/state/poke_state.dart';

class PokeBloc extends Bloc<PokeEvent, PokeState> {
  final int pageSize = 2;
  int currentPage = 0;

  PokeBloc() : super(PokeState.initial()) {
    on<PokeEvent>((event, emit) {
      if (event == PokeEvent.loadData) {
        _loadPage(currentPage, emit);
      } else if (event == PokeEvent.search) {
        _search(event.name, emit);
      } else if (event == PokeEvent.loadNextPage) {
        _loadNextPage(emit);
      } else if (event == PokeEvent.loadPreviousPage) {
        _loadPreviousPage(emit);
      }
    });
  }

  void _loadPage(int pageIndex, Emitter<PokeState> emit) {
    int startIndex = pageIndex * pageSize;
    int endIndex = (pageIndex + 1) * pageSize;
    endIndex = endIndex.clamp(0, state.pokemons.length); // Ensure endIndex is within valid range
    List<PokeModel> pageData = state.pokemons.sublist(startIndex, endIndex);
    emit(PokeState(
      pokemons: state.pokemons,
      filteredPokemons: pageData,
      currentPage: pageIndex,
    ));
    print(pageIndex);
  }

  void _search(String query, Emitter<PokeState> emit) {
    final filteredPokemons = state.pokemons.where(
        (pokemon) => pokemon.name.toLowerCase().contains(query.toLowerCase()));
    emit(PokeState(
      pokemons: state.pokemons,
      filteredPokemons: filteredPokemons.toList(),
      currentPage: 0, // Reset currentPage to 0 when searching
    ));
  }

  void _loadNextPage(Emitter<PokeState> emit) {
    currentPage++;
    _loadPage(currentPage, emit);
  }

  void _loadPreviousPage(Emitter<PokeState> emit) {
    if (currentPage > 0) {
      currentPage--;
      _loadPage(currentPage, emit);
    }
  }
}
