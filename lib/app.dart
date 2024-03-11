import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/routes/app_router.dart';
import 'package:pokebook/bloc/poke_bloc.dart';
import 'package:pokebook/theme/theme_bloc.dart'; // Import the PokeBloc

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter(); 

    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(create: (context) => ThemeBloc()),
        BlocProvider<PokeBloc>(create: (context) => PokeBloc()), 
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Poke Book',
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}

