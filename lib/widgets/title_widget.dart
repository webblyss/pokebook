import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/theme/theme.dart';
import 'package:pokebook/theme/theme_bloc.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(builder: (context, theme) {
      return RichText(
        text: TextSpan(
      style: theme.textTheme.displayLarge!.copyWith(
        fontWeight: FontWeight.bold
      ),
      children: [
         TextSpan(
          text: 'Poké ',
          style: theme.textTheme.displayLarge!.copyWith(),
        ),
        TextSpan(
          text: 'Book',
          style: TextStyle(
            color: theme.primaryColor,
          ),
        ),
      ],
    ));
    },);
  }
}
