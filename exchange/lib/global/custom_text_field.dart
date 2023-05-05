import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white38,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        keyboardType: inputype,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.clear),
          ),
        ),
      ),
    );
  }
}
