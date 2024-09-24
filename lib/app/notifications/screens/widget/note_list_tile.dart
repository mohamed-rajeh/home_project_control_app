import 'package:flutter/material.dart';
import 'package:hous_project_dashbord/components/constants/app_them.dart';
 
import 'package:timeago_flutter/timeago_flutter.dart';

import '../../model/notificate_model.dart';

class NotiticateListTile extends StatelessWidget {
  const NotiticateListTile({
    super.key,
    required this.notification,
  });
  final Notificate notification;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      borderRadius: BorderRadius.circular(10),
      shadowColor: Theme.of(context).colorScheme.primary,
      child: ListTile(
        leading: Icon(
          Icons.notifications_on,
          color: Theme.of(context).colorScheme.primary,
        ),
        title: Text(
          notification.content,
          style: AppThem.nfontStyle,
        ),
        trailing: Timeago(
          locale: "ar",
          builder: (_, value) => Text(value),
          date: notification.time,
        ),
      ),
    );
  }
}
