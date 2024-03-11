import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/models/poke_model.dart';
import 'package:pokebook/shimmers/poke_book_about_details.dart';
import 'package:pokebook/shimmers/statistic_item.dart';
import 'package:pokebook/shimmers/pokemon_type_row.dart';
import 'package:pokebook/theme/theme_bloc.dart';
import 'package:pokebook/utils/hex_color.dart';
import 'package:pokebook/widgets/custom_card_button.dart';
import 'package:pokebook/widgets/custom_horizontal_bar.dart';
import 'package:pokebook/widgets/poke_back_button.dart';
import 'package:pokebook/widgets/svg_image.dart';

@RoutePage()
class DetailsScreen extends StatefulWidget {
  final PokeModel? pokeBook;
  const DetailsScreen({super.key, this.pokeBook});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final themeBloc = BlocProvider.of<ThemeBloc>(context);
    return Scaffold(
      bottomSheet: Container(
        height: 100,
        decoration: const BoxDecoration(color: Colors.white),
        child: Center(
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                color: HexColor("#E9E9E9"),
                borderRadius: BorderRadius.circular(60)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardButton(
                  isActive: selectedIndex == 0,
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  buttonText: "About",
                ),
                CardButton(
                  isActive: selectedIndex == 1,
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  buttonText: "Stats",
                ),
                CardButton(
                  isActive: selectedIndex == 2,
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                  buttonText: "Similar",
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/background.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [HexColor('#7FCAD1'), HexColor('#3DA0A9')],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [0.0, 1.0],
                        tileMode: TileMode.clamp,
                      ),
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(24),
                          bottomLeft: Radius.circular(24))),
                ),
                Positioned(
                  top: 100,
                  left: 10,
                  right: 10,
                  bottom: 0,
                  child: Transform.translate(
                      offset: const Offset(0, 40),
                      child: ThemeAwareSvgImage(
                          imagePath: widget.pokeBook!.imageUrl)),
                ),
                const Positioned(
                  left: 10,
                  top: 50,
                  child: CustomBackButton(),
                )
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              widget.pokeBook!.name,
              style: themeBloc.state.textTheme.displayMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            PokemonTypeRow(types: widget.pokeBook!.types),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    child: Material(
                      elevation: 4,
                      shadowColor: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            selectedIndex == 0
                                ? "About"
                                : selectedIndex == 1
                                    ? "Statistics"
                                    : "Similar",
                            style: themeBloc.state.textTheme.bodyLarge,
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (selectedIndex == 0)
                    PokeBookAboutDetails(
                      pokeBook: widget.pokeBook,
                      themeBloc: themeBloc,
                    ),
                  if (selectedIndex == 1)
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: widget.pokeBook!.statistics.length,
                      itemBuilder: (context, index) {
                        final stats = widget.pokeBook!.statistics.entries
                            .elementAt(index);
                        return StatisticItem(statistic: stats);
                      },
                    ),
                  if (selectedIndex == 2)
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: widget.pokeBook!.similar.length,
                      itemBuilder: (context, index) {
                        final similar =
                            widget.pokeBook!.similar.elementAt(index);
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 300,
                              child: Stack(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    height: 350,
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
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.8,
                                            height: 200,
                                            decoration: BoxDecoration(
                                              color: HexColor('#EEEEEE'),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Positioned(
                                  //   top: 0,
                                  //   left: 10,
                                  //   right: 10,
                                  //   child: Transform.translate(
                                  //     offset: const Offset(0, -50),
                                  //     child: ThemeAwareSvgImage(
                                  //       imagePath: similar.keys.first,
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
