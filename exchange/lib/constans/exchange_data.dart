import 'package:flutter/material.dart';

class ExchangeText extends StatelessWidget {
  final double? number;
  final String valyuta;

  const ExchangeText({
    Key? key,
    required this.number,
    required this.valyuta,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'exchange : ${number != null ? '$number $valyuta' : ''}',
      style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    );
  }
}
