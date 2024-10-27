import 'package:flutter/material.dart';
import 'package:internship_assignment/screens/home_screen.dart';

void main() {
  runApp(const StromleserApp());
}

class StromleserApp extends StatelessWidget {
  const StromleserApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stromleser',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}
