import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'components/magic_ball.dart';

class Predictor extends StatefulWidget {
  const Predictor({super.key});

  @override
  State<Predictor> createState() => _PredictorState();
}

class _PredictorState extends State<Predictor> {
  var magicBall = MagicBall();
  String _prediction = "Maybe Indeed";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Call Me... Maybe?", style: Theme.of(context).textTheme.headline4,),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  // Change text
                  _prediction = magicBall.newText();
                });
              },
              child: Text("Ask a question... tap for the answer.", style: TextStyle(fontSize: 22))
            )
          ),
          Text(_prediction, style: Theme.of(context).textTheme.headline4),
        ],
      ),
    );
  }
}