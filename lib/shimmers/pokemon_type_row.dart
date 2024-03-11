import 'package:flutter/material.dart';
import 'package:pokebook/widgets/type_chip_card.dart';

class PokemonTypeRow extends StatelessWidget {
  final List<String> types;

  const PokemonTypeRow({Key? key, required this.types}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: types.map((type) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: PokemonTypeCard(types: [type]),
        );
      }).toList(),
    );
  }
}
