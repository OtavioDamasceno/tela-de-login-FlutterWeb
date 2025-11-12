import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  // final TextEditingController controller;
  final String label;
  const MyTextField({super.key, required this.label});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 500,
      child: TextField(
        // controller: widget.controller,
        decoration: InputDecoration(
          fillColor: Colors.white,

          label: Text(widget.label),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
        ),
      ),
    );
  }
}
