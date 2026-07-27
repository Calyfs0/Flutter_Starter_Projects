import 'package:birdle/widgets/gamepage.dart';
import 'package:flutter/material.dart';

class GuessInput extends StatefulWidget {
  GuessInput({required this.onSubmitGuess, super.key});

  final void Function(String) onSubmitGuess;

  @override
  State<GuessInput> createState() => _GuessInputState();
}

class _GuessInputState extends State<GuessInput> {
  final TextEditingController _textEditingController = TextEditingController();

  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              maxLength: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(35)),
                ),
              ),
              controller: _textEditingController,
              autofocus: true,
              focusNode: _focusNode,
              onSubmitted: (_) {
                _onSubmitGuess();
              },
            ),
          ),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: _onSubmitGuess,
          icon: const Icon(Icons.arrow_circle_up),
        ),
      ],
    );
  }

  void _onSubmitGuess() {
    widget.onSubmitGuess(_textEditingController.text.trim());
    _textEditingController.clear();
    _focusNode.requestFocus();
  }
}
