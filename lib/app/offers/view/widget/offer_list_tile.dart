import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hous_project_dashbord/app/offers/view/widget/offer_bottom_sheet.dart';

class OfferListTile extends StatelessWidget {
  const OfferListTile({
    super.key,
    this.index,
  });
  final index;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Get.bottomSheet(const OfferBottomSheet()),
      // offer image
      leading: offerImage(),
      // offer title
      title: offerTitle(),
      // offer date
      subtitle: offerDate(),
      // offer delete button
      trailing: offerDeleteButton(context),
    );
  }

  IconButton offerDeleteButton(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.delete,
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }

  Text offerDate() => const Text("2020-1-2");

  Text offerTitle() => Text("العرض $index");

  CircleAvatar offerImage() {
    return const CircleAvatar(
      radius: 35,
    );
  }
}
