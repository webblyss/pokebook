import 'package:flutter/material.dart';
import 'package:pokebook/widgets/custom_horizontal_bar.dart';

class StatisticItem extends StatelessWidget {
  final MapEntry<String, int> statistic;

  const StatisticItem({
    Key? key,
    required this.statistic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              '${statistic.key}:',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 3,
            child: CustomHorizontalBar(
              filledPercentage: statistic.value, // Assuming the value is out of 100
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              '${statistic.value}',
            ),
          ),
        ],
      ),
    );
  }
}
