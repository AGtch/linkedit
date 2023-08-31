import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final double height;
  final Color buttonColor;
  final String buttonText;
  final Function() onPressed;

  const CustomElevatedButton({
    Key? key,
    required this.height,
    required this.buttonColor,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonText),
      style: ElevatedButton.styleFrom(
        elevation: 18.0,
        minimumSize: Size(320, height + 10),
        textStyle: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
