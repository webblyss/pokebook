import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokebook/routes/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/bloc/poke_bloc.dart';
import 'package:pokebook/shimmers/poke_cards.dart';
import 'package:pokebook/state/poke_state.dart';

class PokemonListView extends StatelessWidget {
  const PokemonListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<PokeBloc, PokeState>(
        builder: (context, state) {
          final startIndex = state.currentPage * 2; // Adjust the multiplier as needed
          final endIndex = startIndex + 2;
          final displayedPokemons = state.filteredPokemons.sublist(startIndex, endIndex);

          return ListView.builder(
            shrinkWrap: true,
            itemCount: displayedPokemons.length,
            itemBuilder: (context, index) {
              final pokeBook = displayedPokemons[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 40),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      context.router.push(DetailsRoute(pokeBook: pokeBook));
                    },
                    child: PokeCard(
                      pokeBook: pokeBook,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
