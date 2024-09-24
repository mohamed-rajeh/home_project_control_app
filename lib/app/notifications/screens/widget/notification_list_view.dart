import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hous_project_dashbord/app/notifications/controller/notificat_controller.dart';
import 'package:hous_project_dashbord/app/notifications/model/notificate_model.dart';
import 'package:hous_project_dashbord/app/notifications/screens/widget/note_list_tile.dart';

class NotificationListView extends StatelessWidget {
  const NotificationListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificateController>(
        init: NotificateController(),
        builder: (controller) {
          return ListView.builder(
            padding: const EdgeInsets.only(top: 20),
            scrollDirection: Axis.vertical,
            itemCount: controller.list.length,
            itemBuilder: (BuildContext context, int index) {
              // notes
              Notificate noti = controller.list[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                // note list tile
                child: NotiticateListTile(
                  notification: noti,
                ),
              );
            },
          );
        });
  }
}
