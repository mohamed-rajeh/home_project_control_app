import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hous_project_dashbord/app/items/screens/item_details_screen.dart';

import 'package:hous_project_dashbord/components/constants/app_them.dart';

class ProjectItemsSliverList extends StatelessWidget {
  const ProjectItemsSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 15,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
        child: Material(
          clipBehavior: Clip.antiAlias,
          elevation: 4,
          shadowColor: Theme.of(context).colorScheme.shadow,
          borderRadius: BorderRadius.circular(10),
          child: ListTile(
            // show  dialog
            onTap: () => Get.to(() => const ItemDetailsScreen()),
            // name of item
            title: const Text("اسم الصنف"),
            // state of item
            trailing: Text(
              "متوفر غدا",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: index % 2 == 0 ? AppThem.green : AppThem.red),
            ),
            subtitle: const Text("سعر الصنف"),
            leading: CircleAvatar(
              radius: 35,
              backgroundColor: AppThem.secondaryColor,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
