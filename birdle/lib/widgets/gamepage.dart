import 'package:birdle/game.dart';
import 'package:birdle/widgets/guess_input.dart';
import 'package:birdle/widgets/tile.dart';
import 'package:flutter/material.dart';

class Gamepage extends StatelessWidget {
  Gamepage({super.key});

  final Game _game = Game();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 5.0,
          children: [
            for (final guess in _game.guesses)
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 5.0,
                children: [
                  for (final letter in guess) Tile(letter.char, letter.type),
                ],
              ),
            GuessInput(
              onSubmitGuess: (guess) {
                // TODO, handle guess
                print(guess); // Temporary
              },
            ),
          ],
        ),
      ),
    );
  }
}

void onSubmitGuess() {}
