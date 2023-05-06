import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.onPress,
    required this.buttonTitle,
    this.icon,
  });

  final VoidCallback onPress;
  final String buttonTitle;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPress, child: Text(buttonTitle));
  }
}
