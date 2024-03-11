import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/theme/theme_bloc.dart';

class PaginationButtons extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Function(int) onPageChanged;

  const PaginationButtons({
    Key? key,
    required this.currentPage,
    required this.totalPages,
    required this.onPageChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeBloc = BlocProvider.of<ThemeBloc>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalPages, (index) {
        final pageNumber = index + 1;
        final isActive = pageNumber == currentPage;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GestureDetector(
            onTap: () => onPageChanged(pageNumber),
            child: Card(
              color: isActive ? themeBloc.state.primaryColor : null,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  '$pageNumber',
                  style: TextStyle(
                    color: isActive ? Colors.white : null,
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
