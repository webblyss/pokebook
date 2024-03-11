// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/bloc/poke_bloc.dart';
import 'package:pokebook/events/poke_events.dart';
import 'package:pokebook/routes/app_router.dart';
import 'package:pokebook/shimmers/poke_cards.dart';
import 'package:pokebook/shimmers/pokemon_list_view.dart';
import 'package:pokebook/state/poke_state.dart';
import 'package:pokebook/theme/theme.dart';
import 'package:pokebook/theme/theme_bloc.dart';
import 'package:pokebook/widgets/custom_app_bar.dart';
import 'package:pokebook/widgets/pagination_button.dart';
import 'package:pokebook/widgets/pokemon_search_text_field.dart';
import 'package:pokebook/widgets/title_widget.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();
  int currentPage = 1;
  static const int itemsPerPage = 2;
  @override
  Widget build(BuildContext context) {
    final themeBloc = BlocProvider.of<ThemeBloc>(context);
    final pokeBloc = BlocProvider.of<PokeBloc>(context);
    return Scaffold(body: BlocBuilder<ThemeBloc, ThemeData>(
      builder: (context, state) {
        return Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/background.png',
                ),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              CustomAppBar(themeBloc: themeBloc),
              SizedBox(
                height: 40,
              ),
              //SEARCH TEXTFIELD
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: PokemonSearchTextField(
                  controller: controller,
                  onChanged: (query) {
                    BlocProvider.of<PokeBloc>(context).add(PokeEvent.search);
                  },
                ),
              ),

              SizedBox(
                height: 60,
              ),

              // Expanded widget
              PokemonListView(),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: PaginationButtons(
                  currentPage: currentPage,
                  totalPages:
                      (pokeBloc.state.filteredPokemons.length / itemsPerPage)
                          .ceil(),
                  onPageChanged: (pageNumber) {
                    setState(() {
                      currentPage = pageNumber;
                    });
                    print(pageNumber);
                  },
                ),
              ),
            ],
          ),
        );
      },
    ));
  }

  void _showThemePickerDialog(BuildContext context, ThemeBloc themeBloc) {
    showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Choose Theme'),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildThemeOption(context, CustomTheme.theme1, themeBloc),
              _buildThemeOption(context, CustomTheme.theme2, themeBloc),
              _buildThemeOption(context, CustomTheme.theme3, themeBloc),
            ],
          ),
        );
      },
    );
  }

  Widget _buildThemeOption(
      BuildContext context, ThemeData theme, ThemeBloc themeBloc) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          themeBloc.add(ThemeEvent.changeTheme); // Dispatch changeTheme event
          Navigator.of(context).pop(); // Close the dialog
        },
        child: CircleAvatar(
          radius: 20,
          backgroundColor: theme.primaryColor,
        ),
      ),
    );
  }
}
