import 'package:flutter/material.dart';

class PowerButton extends StatelessWidget {
  const PowerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Power button pressed!'),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[800],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
      ),
      child:
          const Icon(Icons.power_settings_new, color: Colors.white, size: 30),
    );
  }
}
