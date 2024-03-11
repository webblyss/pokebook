import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/theme/theme_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CustomHorizontalBar extends StatelessWidget {
  final int filledPercentage;

  const CustomHorizontalBar({
    Key? key,
    required this.filledPercentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeColor = BlocProvider.of<ThemeBloc>(context).state.primaryColor;

    double percent = filledPercentage / 100;

    percent = percent.clamp(0.0, 1.0);

    return LinearPercentIndicator(
      width: 140.0,
      lineHeight: 14.0,
      percent: percent,
      backgroundColor: Colors.grey,
      progressColor: themeColor,
      linearStrokeCap: LinearStrokeCap.butt, // To remove the rounded edges
      
    );
  }
}
