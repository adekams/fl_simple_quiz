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
      child: Text(answerText),
    );
  }
}
