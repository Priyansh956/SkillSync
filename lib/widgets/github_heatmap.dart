import 'package:flutter/material.dart';
import 'dart:math';

class StreakHeatmap extends StatelessWidget {
  // Example: 7 days × 52 weeks = 364 cells
  final int weeks = 52;
  final int days = 7;

  // Generate fake streak data
  final List<int> streakData = List.generate(364, (_) => Random().nextInt(4));

  StreakHeatmap({super.key});

  Color _getColor(int value) {
    switch (value) {
      case 1:
        return Colors.green.shade200;
      case 2:
        return Colors.green.shade400;
      case 3:
        return Colors.green.shade700;
      default:
        return Colors.grey.shade900; // No activity
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // scroll like GitHub
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(weeks, (weekIndex) {
          return Column(
            children: List.generate(days, (dayIndex) {
              int dataIndex = weekIndex * days + dayIndex;
              return Container(
                margin: const EdgeInsets.all(2),
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: _getColor(streakData[dataIndex]),
                  borderRadius: BorderRadius.circular(3),
                ),
              );
            }),
          );
        }),
      ),
    );
  }
}
