import 'package:flutter/material.dart';
import 'package:pokebook/utils/hex_color.dart';

class PokemonTypeCard extends StatelessWidget {
  final List<String> types;

  const PokemonTypeCard({Key? key, required this.types}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: HexColor('#EEEEEE'),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: types.map((type) {
          return Text(type);
        }).toList(),
      ),
    );
  }
}

