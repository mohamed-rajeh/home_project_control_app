import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hous_project_dashbord/app/home/controller/dark_mode_controller.dart';

class DarkModeButon extends StatelessWidget {
  const DarkModeButon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(DarkModeController());
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Obx(() {
        return IconButton(
            onPressed: () => controller.changeMode(),
            icon: Icon(
              controller.isDark.value
                  ? Icons.wb_sunny_outlined
                  : Icons.dark_mode_outlined,
              size: 30,
            ));
      }),
    );
  }
}
