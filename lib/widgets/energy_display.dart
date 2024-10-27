import 'package:flutter/material.dart';
import 'package:internship_assignment/utils/responsive.dart';
import 'package:internship_assignment/widgets/consumption_graph.dart';

class EnergyDisplay extends StatefulWidget {
  final List<double> hourlyConsumption;

  const EnergyDisplay({super.key, required this.hourlyConsumption});

  @override
  State<EnergyDisplay> createState() => _EnergyDisplayState();
}

class _EnergyDisplayState extends State<EnergyDisplay> {
  DateTime _selectedDate = DateTime.now();

  // Function to handle the date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020, 1),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Energy',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              InkWell(
                onTap: () => _selectDate(context),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${_selectedDate.day}.${_selectedDate.month}.${_selectedDate.year}',
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      const SizedBox(width: 15),
                      const Icon(Icons.calendar_today, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: Responsive.getHeight(context, 0.04)),
        ConsumptionGraph(hourlyConsumption: widget.hourlyConsumption),
      ],
    );
  }
}
