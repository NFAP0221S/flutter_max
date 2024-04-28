import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  void rollDice() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [color1, color2],
        begin: startAlignment,
        end: endAlignment,
      )),
      child: Center(
          // Image위젯은 동적 위젯
          child: Column(
        mainAxisSize: MainAxisSize.min, // 축 크기
        children: [
          Image.asset('assets/images/dice-2.png', width: 200),
          const SizedBox(height: 20,),
          TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
              child: const Text('click'))
        ],
      )),
    );
  }
}
