import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hous_project_dashbord/components/constants/app_them.dart';

class OpenCloseButton extends StatelessWidget {
  const OpenCloseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final OpenCloseController controller = Get.find();

    return Obx(() {
      return Column(
        children: [
          Text(
            controller.isOpen.value ? "مفتوح" : "مغلق",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: controller.isOpen.value
                  ? AppThem.green.withAlpha(200)
                  : AppThem.red.withAlpha(200),
            ),
          ),
          Switch(
            activeColor: AppThem.green,
            inactiveThumbColor: AppThem.red,
            onChanged: (value) {
              controller.isOpen.value = !controller.isOpen.value;
            },
            value: controller.isOpen.value,
          ),
        ],
      );
    });
  }
}

class OpenCloseController extends GetxController {
  var isOpen = true.obs;
  changeValue() {
    isOpen.value = !isOpen.value;
  }
}
