import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Back button pressed!'),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[800],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
        child: const Icon(Icons.arrow_back, color: Colors.white, size: 20));
  }
}
