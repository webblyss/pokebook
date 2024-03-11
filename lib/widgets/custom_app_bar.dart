import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokebook/theme/theme.dart';
import 'package:pokebook/widgets/title_widget.dart';
import 'package:pokebook/theme/theme_bloc.dart';

class CustomAppBar extends StatelessWidget {
  final ThemeBloc themeBloc;

  const CustomAppBar({Key? key, required this.themeBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/logo.png',
                          height: 60,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TitleWidget(),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _showThemePickerDialog(context, themeBloc);
                    },
                    child: CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: themeBloc.state.primaryColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
