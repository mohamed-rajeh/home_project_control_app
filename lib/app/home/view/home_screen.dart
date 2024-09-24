import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hous_project_dashbord/app/home/view/widget/open_close_button.dart';
import 'package:hous_project_dashbord/app/items/screens/items_controll_screen.dart';
import 'package:hous_project_dashbord/app/home/view/widget/analyzes_section.dart';
import 'package:hous_project_dashbord/app/home/view/widget/darkmode_button.dart';
import 'package:hous_project_dashbord/app/home/view/widget/natfaction_button.dart';
import 'package:hous_project_dashbord/app/offers/view/offers_screen.dart';
import 'package:hous_project_dashbord/app/orders/view/orders_screen.dart';
import 'package:hous_project_dashbord/components/constants/app_them.dart';
import 'package:hous_project_dashbord/components/shared/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(OpenCloseController());
    return Scaffold(
      appBar: appBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            ///
            /// Close / open button
            ///
            const OpenCloseButton(),

            ///
            ///

            ///
            /// analyzes section
            ///
            const Analyzes(),

            ///
            ///
            const SizedBox(height: 30),

            ///  The new orders
            ///
            CustomButton(
              onTap: () => Get.to(() => const OrdersScreen()),
              color: AppThem.primaryColor,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "الحــجــوزات ",
                    style: TextStyle(
                        color: AppThem.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " + 12",
                    style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ],
              ),
            ),

            ///
            ///
            const SizedBox(height: 20),

            ///
            ///  items button
            ///
            CustomButton(
              color: AppThem.primaryColor,
              onTap: () => Get.to(const HousProjectDetails()),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "الأصناف",
                    style: TextStyle(color: AppThem.white, fontSize: 18),
                  ),
                  Text(
                    " + 6",
                    style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ],
              ),
            ),

            ///
            ///
            const SizedBox(height: 20),

            ///
            ///  Offers button
            ///
            CustomButton(
              onTap: () => Get.to(() => const OffersScreen()),
              color: AppThem.primaryColor,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "العروض",
                    style: TextStyle(color: AppThem.white, fontSize: 18),
                  ),
                  Text(
                    " + 2",
                    style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            // Version app
            Center(
                child: Text(
              "MR - H -  V 1.0.0",
              style: TextStyle(color: AppThem.grey, fontFamily: "Roboto"),
            ))
          ],
        ),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    final OpenCloseController controller = Get.find();
    return AppBar(
      clipBehavior: Clip.none,
      title: Obx(() {
        return Text(
          "اسم المشروع",
          style: TextStyle(color: controller.isOpen.value ? null : AppThem.red),
        );
      }),
      centerTitle: true,
      scrolledUnderElevation: 0,
      leading: const Row(
        children: [
          SizedBox(
            width: 16,
          ),
          CircleAvatar()
        ],
      ),
      actions: const [
        ///
        /// light dark button
        ///
        DarkModeButon(),

        ///
        ///

        ///
        ///Natefaction navgate Button
        ///
        NotefcationButton(),

        ///
        ///

        ///
        /// for make make a size
        ///
        SizedBox(width: 20),

        ///
        ///
      ],
    );
  }
}
