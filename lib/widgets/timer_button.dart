import 'package:flutter/material.dart';

class TimerButton extends StatelessWidget {
  const TimerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[800],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
      ),
      child: const Icon(Icons.timer, color: Colors.white, size: 30),
    );
  }
}
