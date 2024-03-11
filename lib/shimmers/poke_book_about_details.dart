import 'package:flutter/material.dart';
import 'package:pokebook/models/poke_model.dart';
import 'package:pokebook/theme/theme_bloc.dart';

class PokeBookAboutDetails extends StatelessWidget {
  final PokeModel? pokeBook;
  final ThemeBloc themeBloc;

  const PokeBookAboutDetails({
    Key? key,
    required this.pokeBook,
    required this.themeBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: pokeBook!.about.length,
      itemBuilder: (context, index) {
        final aboutItem = pokeBook!.about.entries.elementAt(index);
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${aboutItem.key}:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 12),
            Text(aboutItem.value, style: themeBloc.state.textTheme.bodyLarge),
          ],
        );
      },
    );
  }
}
