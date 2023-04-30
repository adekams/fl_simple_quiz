import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onBtnClick,
  });

  final String answerText;
  final void Function() onBtnClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onBtnClick,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(154, 11, 33, 200),
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 40,
          ),
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          )),
      child: Text(answerText),
    );
  }
}
