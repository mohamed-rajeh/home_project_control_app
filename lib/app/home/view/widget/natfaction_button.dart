import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hous_project_dashbord/app/notifications/screens/notifications_screen.dart';
import 'package:hous_project_dashbord/components/constants/app_them.dart';

class NotefcationButton extends StatelessWidget {
  const NotefcationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: InkWell(
        onTap: () => Get.to(() => const NotificationsScreen()),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const Icon(
              Icons.notifications_on_outlined,
              size: 30,
            ),
            Positioned(
              top: -12,
              left: -14,
              child: CircleAvatar(
                radius: 12,
                backgroundColor:
                    Theme.of(context).colorScheme.secondary.withAlpha(220),
                child: Text(
                  "9",
                  style: AppThem.nfontStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
