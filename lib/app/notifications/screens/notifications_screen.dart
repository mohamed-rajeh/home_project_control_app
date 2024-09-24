import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hous_project_dashbord/app/notifications/screens/widget/notification_list_view.dart';

class NotificationsScreen extends StatelessWidget {
  static const String id = "/notification";
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // app bar
          notAppBar(),

          // space
          const SizedBox(height: 30),

          // notifications list
          const Expanded(
            child: NotificationListView(),
          ),
        ],
      ),
    );
  }

  AppBar notAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(Icons.arrow_back_ios),
      ),
      title: const Text("الاشعارات"),
    );
  }
}
