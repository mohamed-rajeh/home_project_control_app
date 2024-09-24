 
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hous_project_dashbord/app/home/view/widget/open_close_button.dart';
import 'package:hous_project_dashbord/app/items/screens/widgets/add_item_button.dart';
import 'package:hous_project_dashbord/app/items/screens/widgets/project_custom_scroll_veiw.dart';
import 'package:hous_project_dashbord/components/constants/app_them.dart';

class HousProjectDetails extends StatelessWidget {
  const HousProjectDetails({super.key, this.item});
  final dynamic item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: appBar(),

      // custom scroll to show items
      body: const ProjectCustomScrollView(),

      //! Add new item button
      floatingActionButton: const AddNewItemButton(),
    );
  }

  AppBar appBar() {
    final OpenCloseController controller = Get.find();
    return AppBar(
      scrolledUnderElevation: 0,
      title: Obx(() {
        return Text(
          "اسم المشروع",
          style: TextStyle(color: controller.isOpen.value ? null : AppThem.red),
        );
      }),
      centerTitle: true,
      actions: [
        Obx(() {
          return Material(
            color: controller.isOpen.value
                ? AppThem.green.withAlpha(200)
                : AppThem.red.withAlpha(200),
            borderRadius: BorderRadius.circular(10),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 4,
              ),
              child: Text(
                controller.isOpen.value ? "مفتوح" : "مغلق",
              ),
            ),
          );
        }),
        const SizedBox(
          width: 16,
        ),
      ],
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new,
        ),
        onPressed: () => Get.back(),
      ),
    );
  }
}
