import 'package:flutter/material.dart';
import 'package:hous_project_dashbord/app/orders/view/widget/orders_by_day.dart';

class OrdersListView extends StatelessWidget {
  const OrdersListView({
    super.key,
    required this.ordersByDay,
  });

  final Map<String, List<Map<String, dynamic>>> ordersByDay;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: ordersByDay.length,
      itemBuilder: (BuildContext context, int index) {
        final day = ordersByDay.keys.elementAt(index);
        final dayOrders = ordersByDay[day]!;
        // final dayName = DateFormat('EEEE')
        //     .format(DateTime.parse(dayOrders.first['expiry']));
        return OrdersByDay(dayOrders: dayOrders);
      },
    );
  }
}
