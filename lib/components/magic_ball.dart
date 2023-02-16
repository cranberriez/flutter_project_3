import 'dart:math';

class MagicBall {
  final responses = [
    "Yes, thats for sure",
    "Think it through",
    "Its... Possible",
    "More than likely",
    "Eventually, maybe",
    "Signs point to no",
    "You shouldn't",
    "Definitely Don't"
  ];

  newText() {
    var randomInt = Random().nextInt(8);
    return responses[randomInt];
  }
}