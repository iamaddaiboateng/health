import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String title;
  const CustomButton({Key? key, required this.onPressed, this.title = "Next"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // changeOpacity();
        onPressed();
      },
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Color.fromRGBO(1, 150, 234, 0.6),
                  offset: Offset(0, 15),
                  blurRadius: 20,
                  spreadRadius: -15),
            ],
            borderRadius: BorderRadius.circular(8),
            gradient: const LinearGradient(
              colors: [
                Color(0xFF00ACE9),
                Color(0xFF0095E9),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
