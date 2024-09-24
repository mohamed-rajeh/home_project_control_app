import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'item_days_on.dart';

class DayWidget extends StatelessWidget {
  const DayWidget({
    required this.index,
    required this.day,
    super.key,
  });
  final int index;
  final String day;

  @override
  Widget build(BuildContext context) {
    final DaysController controller = Get.find();
    return InkWell(
      onTap: () {
        controller.toggleDay(index);
      },
      child: Obx(
        () => Material(
          color: controller.days[index]
              ? Theme.of(context).colorScheme.secondary
              : Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(4),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Text(day),
          ),
        ),
      ),
    );
  }
}
