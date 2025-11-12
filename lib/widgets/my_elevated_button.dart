import 'package:flutter/material.dart';

class MyElevatedButton extends StatefulWidget {
  final Color colorButton;
  final String title;
  final Size buttonSize;
  final Function() onPressed;

  const MyElevatedButton({
    super.key,
    required this.colorButton,
    required this.title,
    required this.onPressed,
    required this.buttonSize,
  });

  @override
  State<MyElevatedButton> createState() => _MyElevatedButtonState();
}

class _MyElevatedButtonState extends State<MyElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.colorButton,
        fixedSize: widget.buttonSize,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      child: Text(
        widget.title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
