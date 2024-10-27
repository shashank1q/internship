import 'package:flutter/material.dart';
import 'package:internship_assignment/utils/responsive.dart';
import 'package:internship_assignment/widgets/back_button.dart';
import 'package:internship_assignment/widgets/energy_display.dart';
import 'package:internship_assignment/widgets/power_button.dart';
import 'package:internship_assignment/widgets/timer_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const List<double> hourlyData = [
    10,
    15,
    30,
    20,
    50,
    80,
    40,
    70,
    60,
    90,
    70,
    50,
    40,
    30,
    20,
    10,
    5,
    15,
    30,
    25,
    10,
    5,
    0,
    0
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: const CustomBackButton()),
        title: const Text('MoeCellNicco'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Responsive.getHeight(context, 0.05)),
              Center(
                child: Image.asset('assets/adapter.png',
                    height: Responsive.getHeight(context, 0.3)),
              ),
              SizedBox(height: Responsive.getHeight(context, 0.02)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const PowerButton(),
                  SizedBox(width: Responsive.getWidth(context, 0.05)),
                  const TimerButton(),
                ],
              ),
              SizedBox(height: Responsive.getHeight(context, 0.04)),
              const Divider(color: Colors.white30),
              const EnergyDisplay(hourlyConsumption: hourlyData),
              SizedBox(height: Responsive.getHeight(context, 0.05)),
            ],
          ),
        ),
      ),
    );
  }
}
