import 'package:flutter/material.dart';
import 'package:hous_project_dashbord/app/orders/view/widget/day_name_widget.dart';
import 'package:hous_project_dashbord/app/orders/view/widget/order_list_tile.dart';

class OrdersByDay extends StatelessWidget {
  const OrdersByDay({
    super.key,
    required this.dayOrders,
  });

  final List<Map<String, dynamic>> dayOrders;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///
        /// the name of day
        ///
        const DayNameWidget(name: "يوم الحجز"),

        ///
        ///
        const SizedBox(height: 8),

        ///
        /// the orders
        ///
        ...dayOrders.map((e) => const OrderListTile())

        ///
        ///
      ],
    );
  }
}
