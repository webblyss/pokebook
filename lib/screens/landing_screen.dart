import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/bloc/poke_bloc.dart';
import 'package:pokebook/theme/theme_bloc.dart';
import 'package:pokebook/widgets/svg_image.dart';

@RoutePage()
class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    final themeBloc = BlocProvider.of<ThemeBloc>(context);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/background.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ThemeAwareSvgImage(imagePath: 'assets/poke/group.svg'),
            const SizedBox(
              height: 20,
            ),
            RichText(
                text: TextSpan(
              style: themeBloc.state.textTheme.displayLarge!
                  .copyWith(fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: 'Poké ',
                  style: themeBloc.state.textTheme.displayLarge!.copyWith(),
                ),
                TextSpan(
                  text: 'Book',
                  style: TextStyle(
                    color: themeBloc.state.primaryColor,
                  ),
                ),
              ],
            )),
            Text(
              "Largest Pokémon index with information about\nevery Pokemon you can think of.",
              style: themeBloc.state.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: themeBloc.state.primaryColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 64,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Enter pokemon name',
                          style: themeBloc.state.textTheme.bodyMedium,
                        ),
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: themeBloc.state.primaryColor,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "View All",
                style: themeBloc.state.textTheme.bodyMedium!.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
