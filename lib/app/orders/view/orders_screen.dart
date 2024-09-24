import 'package:flutter/material.dart';
import 'package:hous_project_dashbord/app/orders/view/widget/orders_list_view.dart';
import 'package:hous_project_dashbord/components/constants/app_them.dart';
import 'package:hous_project_dashbord/components/shared/custom_app_bar.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> orders = [
      {
        'id': 1242,
        'name': 'كب كيك',
        'price': 1800,
        'expiry': DateTime.now().toString()
      },
      {
        'id': 1242,
        'name': 'شوارما',
        'price': 6000,
        'expiry': DateTime.now().add(const Duration(days: 1)).toString()
      },
      {
        'id': 1248,
        'name': 'دجاج',
        'price': 12000,
        'expiry': DateTime.now().add(const Duration(days: 1)).toString()
      },
      {
        'id': 1248,
        'name': 'دجاج',
        'price': 12000,
        'expiry': DateTime.now().add(const Duration(days: 2)).toString()
      },
      // ... other orders
    ];

    // orders.sort((a, b) {
    //   final adate = DateTime.parse(a['expiry']);
    //   final bdate = DateTime.parse(b['expiry']);
    //   return -adate.compareTo(bdate); // Sort in descending order
    // });

    final Map<String, List<Map<String, dynamic>>> ordersByDay = {};
    for (final order in orders) {
      final day = DateTime.parse(order['expiry']).toLocal().day.toString();
      ordersByDay.putIfAbsent(day, () => []);
      ordersByDay[day]!.add(order);
    }

    return Scaffold(
      ///
      /// ordera app bar
      ///
      appBar: orddersAppBar(orders),

      ///
      ///

      ///
      /// List of orders
      ///
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: OrdersListView(ordersByDay: ordersByDay),
      ),

      ///
      ///
    );
  }

  AppBar orddersAppBar(List<Map<String, dynamic>> orders) {
    return appBar(title: "الحجوزات", actions: [
      CircleAvatar(
          backgroundColor: AppThem.primaryColor.withAlpha(180),
          child: Text(
            orders.length.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, color: AppThem.white),
          )),
      const SizedBox(width: 16),
    ]);
  }
}
