import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/theme/theme_bloc.dart';

class ThemeAwareSvgImage extends StatelessWidget {
  final String imagePath;
  final double defaultWidth;

  const ThemeAwareSvgImage({
    Key? key,
    required this.imagePath,
    this.defaultWidth = double.infinity, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(
      builder: (context, state) {
        final color = state.primaryColor;
        return Center(
          child: SvgPicture.asset(
            imagePath,
            width: defaultWidth == double.infinity
                ? MediaQuery.of(context).size.width * 0.8 
                : defaultWidth, 
            height: 200,
          ),
        );
      },
    );
  }
}
