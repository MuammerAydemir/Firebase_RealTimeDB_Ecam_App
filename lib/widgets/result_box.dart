import 'package:flutter/material.dart';
import 'package:exam/constans.dart';

class ResultBox extends StatelessWidget {
  const ResultBox(
      {super.key, required this.result, required this.questionLenght, required this.onPressed});
  final int result;
  final int questionLenght;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: background,
      content: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sonuç: ",
              style: TextStyle(color: passive, fontSize: 22.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            CircleAvatar(
              radius: 60.0,
              backgroundColor: result == questionLenght / 2
                  ? Colors.yellow
                  : result < questionLenght / 2
                      ? incorrect
                      : correct,
              child: Text(
                "$result/$questionLenght",
                style: const TextStyle(fontSize: 30.0),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              result == questionLenght / 2
                  ? "İşte Bu Yakındı!"
                  : result < questionLenght / 2
                      ? "Tekrar Etmelisin!"
                      : "Mükemmelsin",
              style: const TextStyle(color: passive),
            ),
            const SizedBox(
              height: 25.0,
            ),
            GestureDetector(
              onTap: onPressed,
              child: const Text(
                "Baştan Başla",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
