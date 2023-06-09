import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.validator,
    this.autoFocus,
    this.obscureText,
    this.icon,
    this.onPress,
    this.inputype,
  });

  final String? Function(String?)? validator;
  final String hintText;
  final bool? autoFocus;
  final TextEditingController controller;
  final bool? obscureText;
  final IconData? icon;
  final VoidCallback? onPress;
  final TextInputType? inputype;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
          color: Colors.blueGrey.shade200,
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextFormField(
          keyboardType: widget.inputype,
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hintText,
          ),
        ),
      ),
    );
  }
}
