import 'package:exam/constans.dart';
import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: passive, borderRadius: BorderRadius.circular(10.0)),
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: const Text(
        "Next Question",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18.0),
      ),
    );
  }
}
