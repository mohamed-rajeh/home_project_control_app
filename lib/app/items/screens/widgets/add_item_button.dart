import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hous_project_dashbord/app/items/screens/item_details_screen.dart';

class AddNewItemButton extends StatelessWidget {
  const AddNewItemButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 30,
        child: IconButton(
          onPressed: () => Get.to(() => const ItemDetailsScreen()),
          icon: const Icon(
            FontAwesomeIcons.plus,
          ),
        ));
  }
}
