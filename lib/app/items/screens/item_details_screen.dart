import 'package:flutter/material.dart';
import 'package:hous_project_dashbord/app/items/screens/widgets/item_days_on.dart';
import 'package:hous_project_dashbord/app/items/screens/widgets/item_picture.dart';

import 'package:hous_project_dashbord/components/shared/custom_app_bar.dart';
import 'package:hous_project_dashbord/components/shared/custom_button.dart';

import 'widgets/item_feilds.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: "تعديل الصنف"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            ///
            /// item picture
            ///
            Center(
              child: ItemPicture(),
            ),

            ///
            ///
            SizedBox(height: 30),

            ///
            /// item input fields
            ///
            ItemFields(),

            ///
            ///
            SizedBox(height: 30),

            ///
            /// item days on
            ///
            ItemDaysOn(),

            ///
            ///
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        height: 80,
        child: CustomButton(
          onTap: () {},
          title: const Text(
            "حفظ",
            style: TextStyle(fontSize: 18),
          ),
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
