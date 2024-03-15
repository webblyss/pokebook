import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:pokebook/theme/theme_bloc.dart';

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // print('it works');
            if (currentPage > 1) {
              onPageChanged(currentPage - 1); // Move to the previous page
            }
            print(currentPage);
          },
        ),
        Text(
          "Page ${currentPage + 1} of $totalPages",
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyText1?.color,
          ),
        ),
        IconButton(
          icon: const Icon(Icons.arrow_forward),
          onPressed: () {
            if (currentPage < totalPages) {
              onPageChanged(currentPage + 1); // Move to the next page
            }
          },
        ),
      ],
    );
  }
}
