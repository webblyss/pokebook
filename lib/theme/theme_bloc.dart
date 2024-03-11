import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/theme/theme.dart';

// Define the events
enum ThemeEvent { changeTheme }

class ThemeBloc extends Bloc<ThemeEvent, ThemeData> {
  ThemeBloc() : super(CustomTheme.theme1) {
    on<ThemeEvent>((event, emit) {
      if (event == ThemeEvent.changeTheme) {
        if (state == CustomTheme.theme1) {
          emit(CustomTheme.theme2);
        } else if (state == CustomTheme.theme2) {
          emit(CustomTheme.theme3);
        } else {
          emit(CustomTheme.theme1);
        }
      }
    });
  }
}
