import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final bool isActive;
  final String buttonText;
  final VoidCallback onTap;

  const CardButton({
    Key? key,
    required this.isActive,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? Colors.white : null,
          borderRadius: BorderRadius.circular(60),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 12),
          child: Text(
            buttonText,
            style: TextStyle(
              color: isActive ? Colors.black : null,
            ),
          ),
        ),
      ),
    );
  }
}
