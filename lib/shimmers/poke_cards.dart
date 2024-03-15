import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/models/poke_model.dart';
import 'package:pokebook/shimmers/pokemon_type_row.dart';
import 'package:pokebook/theme/theme_bloc.dart';
import 'package:pokebook/utils/hex_color.dart';
import 'package:pokebook/widgets/svg_image.dart';

class PokeCard extends StatefulWidget {
  final PokeModel pokeBook;
  const PokeCard({Key? key, required this.pokeBook}) : super(key: key);

  @override
  State<PokeCard> createState() => _PokeCardState();
}

class _PokeCardState extends State<PokeCard> {
  @override
  Widget build(BuildContext context) {
    final themeBloc = BlocProvider.of<ThemeBloc>(context);
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 400,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 10,
                  right: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 200,
                    decoration: BoxDecoration(
                      color: HexColor('#EEEEEE'),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: Center(
                      child: Column(
                    children: [
                      Text(
                        widget.pokeBook.name,
                        style: themeBloc.state.textTheme.displayMedium,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      PokemonTypeRow(types: widget.pokeBook.types),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                              color: themeBloc.state.primaryColor,
                              borderRadius: BorderRadius.circular(18)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "View Pokemon",
                                  style: themeBloc.state.textTheme.bodyMedium!.copyWith(
                                    color: Colors.white
                                  ), 
                                ),
                              const  Icon(Icons.remove_red_eye,color: Colors.white,)
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 10,
            right: 10,
            child: Transform.translate(
                offset: const Offset(0, -50),
                child: ThemeAwareSvgImage(imagePath: widget.pokeBook.imageUrl)),
          ),
        ],
      ),
    );
  }
}
